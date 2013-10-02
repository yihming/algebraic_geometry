LIB "GBGCnews.s";

ring RingVar = (0), (x(1), x(2), x(3), x(4), x(5), x(6)), dp;

vector v1 = [x(6)*x(5)*x(3) + x(6)*x(3)*x(2) + x(4)*x(3)*x(2) + x(6),
	x(6)*x(2)*x(1) + x(4)*x(2)*x(1) + x(4)*x(2) + x(1),
	x(5)*x(2)*x(1) + x(4)*x(3)*x(2) + x(2)*x(1) + x(3) + 1];

int i;

for (i = 1; i <= 6; i++) {
  v1 = v1 + gen(i + 3) * (x(i)^2 - x(i));
}

for (i = 1; i <= 6; i++) {
  v1 = v1 + gen(i + 9) * (x(i) + x(i));
}

ideal I = ideal(v1);

list G = GBGC(I, RingVar);
	
VerifyGB(I, G);
