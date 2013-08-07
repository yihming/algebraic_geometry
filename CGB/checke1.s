LIB "poly.lib";
LIB "qhmoduli.lib";

proc S_Poly(poly p1, poly p2) {
    poly m1, m2;
    poly s;

    m1 = lcm(lead(p1), lead(p2)) / lead(p1);
    m2 = lcm(lead(p1), lead(p2)) / lead(p2);

    s = m1 * p1 - m2 * p2;

    return(s);
}

proc Poly_Multi_Division(poly p, list basis) {
    poly rem;
    list q;
    poly m;
    int i, j, division_occur;

    for (i = 1; i <= size(basis); i = i + 1) {
	q = insert(q, 0);
    }

    while (p != 0) {
	division_occur = 0;
	for (i = 1; i <= size(basis); i = i + 1) {
	    if (lead(p) / lead(basis[i]) != 0) {
	        m = lead(p) / lead(basis[i]);
	        q[i] = q[i] + m;
		p = p - m * basis[i];
	        division_occur = 1;
		break;
	    }
	}

	if (!division_occur) {
	    rem = rem + lead(p);
	    p = p - lead(p);
	}
    }

    return(rem, q);
}