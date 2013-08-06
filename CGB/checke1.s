LIB "poly.lib";
LIB "qhmoduli.lib";

static proc S_Poly(poly p1, poly p2) {
    poly m1, m2;
    poly s;

    m1 = lcm(lead(p1), lead(p2)) / lead(p1);
    m2 = lcm(lead(p1), lead(p2)) / lead(p2);

    s = m1 * p1 - m2 * p2;

    return(s);
}

static proc Poly_Multi_Division(poly p, list basis) {
    poly rem;
    list q;
    poly m;
    int i, j, flag;

    for (i = 1; i <= size(basis); ++i) {
	q = insert(q, 0);
    }

    flag = 0;

    while (p != 0) {
	for (i = 1; i <= size(basis); ++i) {
	    if (lead(p) / lead(basis[i]) != 0) {
	        m = lead(p) / lead(basis[i]);
	        q[i] = q[i] + m;
		p = p - m * basis[i];
	        flag = 1;
		break;
	    }
	}

	if (!flag) {
	    rem = rem + lead(p);
	    p = p - lead(p);
	}
    }

    return(rem, q);
}