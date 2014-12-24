LIB "GBGCnews.s";

ring RingVar = (0, v, u), (z, y, x), lp;

ideal I = (u^2 + 1)*y + x^3 - 1, (u^2 + 1)*z + x^2 - 1;

list G = GBGC(I, RingVar);

VerifyGB(I, G);