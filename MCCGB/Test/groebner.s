LIB "mcgb.lib";

ring R = 0, (s, t, x, a, b), lp	;

//ideal F = ((a3-b3)*x2+(a2+b2+1)*x+(ab+2a-b2-2b))*s,
//	(b2+b+1)*(s-t),
//	(a2+ab-b-1)*(s-t)		;

ideal F = ((a3-b3)*x2+(a2+b2+1)*x+(ab+2a-b2-2b))*s,
	(b2-b+1)*(s-t),
	(a+1)*(s-t)		;
	
option(redSB)			;

def RGB = std(F)		;

ring ST = (0, x, a, b), (s, t), lp ;

def RGB = imap(R, RGB)		;

show(RGB)			;
printf("===================================") ;
setring R			;
ideal U = groebner(ideal(s - 1, t)) ;
ideal V = groebner(ideal(s, t-1))   ;
int i				    ;
poly f1, f0				    ;
for (i = 1; i <= size(RGB); i++) {
  f1 = reduce(RGB[i], U)		;
  f0 = reduce(RGB[i], V)		;
  if (f1 != 0 && f1+f0 != 0) {
    printf("[%s,  %s]", f1, f0)		;
  }
  //show(f1+f0)			;
} 
