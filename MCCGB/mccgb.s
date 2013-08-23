LIB "poly.lib";
LIB "primdec.lib";
LIB "qhmoduli.lib";

LIB "../CGB/cgb_mod.s";

proc set_global_rings() {
  def BR = basering;
  def @R = basering;

  def Rx = ringlist(BR);
  def @P = ring(Rx[1]);

  Rx[1] = 0;
  def D = ring(Rx);
  def @RP = D + @P;

  exportto(Top, @R);
  exportto(Top, @P);
  exportto(Top, @RP);
  setring(BR);
	
}
	
proc listToVec(list l) {
    vector v;
    int i;

    for (i = 1; i <= size(l); i++) {
	v = v + gen(i) * l[i];
    }
    return (v);
}

proc leadcoef_X(poly P) {
    def BR = basering;
    setring(@R);

    def P = imap(BR, P);
    poly c = leadcoef(P);
    setring(BR);
    def c = imap(@R, c);
    return (c);
}

proc lpp_X(poly P) {
    def BR = basering;

    setring(@R);
    def P = imap(BR, P);
    def m = leadmonom(P);

    setring(BR);
    def m = imap(@R, m);
    return (m);
}

proc lm_X(poly P) {
    def BR = basering;
    setring(@R);
    def P = imap(BR, P);

    def T = lead(P);
    setring(BR);
    def T = imap(@R, T);
    return (T);
}
	
proc calculateLPPList(list basis, list null_conds) {
    printf("Now Compute LPP of basis under specialization:");

    def BR = basering;
    setring(@R);
    def basis = imap(BR, basis);
    def null_conds = imap(BR, null_conds);
    
    list res;
    poly f;
    int i;

    setring(@RP);
    def null_conds = imap(@R, null_conds);
    vector v;
	
    for (i = 1; i <= size(null_conds); i++) {
	v = v + gen(i) * null_conds[i];
    }

    ideal I = radical(ideal(v));
    ideal G = groebner(I);
    printf("RADICAL: %s", string(I));

    for (i = 1; i <= size(basis); i++) {
	poly p = basis[i];
	while (p != 0) {
	    if (reduce(leadcoef_X(p), G) == 0) {
	        p = p - lm_X(p);
	    } else {
	        break;
	    }
	}
	printf("Sigma(g[%s]) is %s.", string(i), string(p));
	res = insert(res, leadmonom(p), size(res));
    }

    // Switch back to R[A][X].
    setring(@R);
    def res = imap(@RP, res);
    for (i = 1; i <= size(res); i++) {
        res[i] = leadmonom(res[i]);
    }
	
    setring(BR);
    def res = imap(@R, res);
    printf("The LPP of MCCGB is: %s", string(res));
    return(res);
}

// Return 1 if p is essential; otherwise, return 0.
proc Check_Essential(poly p, poly p1, list basis, list null_conds) {
    poly rem;
    list q;
    int i ;

    printf(newline+"Checking Essential:");
	
    // If p is already in the basis, then it's non-essential.
    for (i = 1; i <= size(basis); i++) {
	if (p == basis[i]) {
	    printf("%s is in MCCGB.", string(p));
	    return (0);
	}
    }
    printf("%s is not in MCCGB.", string(p));

    // Otherwise, judge whether it's in the ideal generated by basis.
    vector v;
    for (i = 1; i <= size(basis); i++) {
        v = v + gen(i) * basis[i];
    }
    ideal G = groebner(ideal(v));
    rem = reduce(p, G);
	
    if (rem == 0) {
        printf("%s is in the ideal generated by %s.", string(p), string(basis));
	
	// Further, test under the current specialization,
	// whether its LPP is in the ideal generated by LPP's of basis.
        vector lpp_basis = listToVec(calculateLPPList(basis, null_conds));
	ideal H = groebner(ideal(lpp_basis));
	printf("LPP(P) is %s.", lpp_X(p1));
	if (reduce(lpp_X(p1), H) == 0) {
	    printf("%s is in the ideal generated by %s.", string(leadmonom(p1)), string(ideal(lpp_basis))) ;
	    return (0);
	}
    }

    // Otherwise, p is essential.
    return (1);
}

proc genMCCGB(Polys, Equ, DisEqu, vars, params, aux, RingVar, out) {
	set_global_rings();

	// This part needs to be removed when using cgb_mod_new.
	def BR = basering;
	setring(@RP);
	def Polys = imap(RingVar, Polys);
	def Equ = imap(RingVar, Equ);
	def DisEqu = list()	    ;
	def vars = imap(RingVar, vars);
	def params = imap(RingVar, params);
	def aux = imap(BR, aux);
	def RingAll = @RP;
	// End Comment.

        ideal G;
	list modcgs;
	
	(G, modcgs) = cgb_mod(Polys, Equ, DisEqu, vars, params, aux, RingAll, RingVar, out);

	list mccgb;
	int i, j;
	ideal U = groebner(ideal(Auxiliary[1] - 1, Auxiliary[2]));
	ideal V = groebner(ideal(Auxiliary[1], Auxiliary[2] - 1));

	// Add the first branch.
	for (j = 1; j <= size(modcgs[1][3]); j++) {
	    mccgb[j] = reduce(modcgs[1][3][j], U) + reduce(modcgs[1][3][j], V);
	}
	printf("After adding the first branch:");
	show(mccgb);

	if (size(modcgs) > 1) {
	    // Consider each branch.
	    for (i = 2; i <= size(modcgs); i++) {
		list null_conds;
	        printf(newline+"Coming to Branch %s:", string(i));

	        // If Groebner Basis of the branch is empty, then pass.
	        if (size(modcgs[i][3]) != 0) {
		    // Build the list of null conditions.
	            for (j = 1; j <= size(modcgs[i][1]); j++) {
			null_conds = insert(null_conds, modcgs[i][1][j], size(null_conds));
	            }
	            printf("The null conditions are:");
	            show(null_conds);

	            // For each polynomial in the Groebner Basis.
	            for (j = 1; j <= size(modcgs[i][3]); j++) {
			poly p1 = reduce(modcgs[i][3][j], U);
	                poly p0 = reduce(modcgs[i][3][j], V);
	                printf("P = [ %s , %s ].", string(p1), string(p0))  ;
	                poly p = p1 + p0;

	                printf(newline+"Currently consider polynomial %s.", string(p));

	                if (Check_Essential(p, p1, mccgb, null_conds) == 1) {
			    // p is essential, add to mccgb.
	                    printf("%s is essential.", string(p));
	                    mccgb = insert(mccgb, p, size(mccgb));
	                }
	            } 
	        }

	    }
	}

	// Switch back to @R.
	setring(BR);
	def mccgb = imap(@RP, mccgb);
	def G = imap(@RP, G);
	def modcgs = imap(@RP, modcgs);

	return(mccgb, G, modcgs);
}

proc showMCCGB(list mccgb, link out) {
    int i;

    fprintf(out, "The MCCGB is:" + newline );
    if (size(mccgb) == 0) {
        fprintf(out, "{  }." + newline);
    } else {
	for (i = 1; i < size(mccgb); i++) {
	    fprintf(out, "%s,", mccgb[i]);
	}
	fprintf(out, "%s." + newline, mccgb[size(mccgb)]);
    }
}