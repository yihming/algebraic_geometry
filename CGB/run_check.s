LIB "checke1.s";

ring r = 0, (x, y, a, b, c, d), lp;

poly f1 = 2xc + 2yb;
poly f2 = 2x + 2yc + d;
poly f3 = x2 + 2xyc + xd + y2b;

list g;
g = insert(g, f1, size(g));
g = insert(g, f2, size(g));
g = insert(g, f3, size(g));

poly s1 = S_Poly(f1, f2);
poly rem;
list q;
(rem, q) = Poly_Multi_Division(s1, g);
