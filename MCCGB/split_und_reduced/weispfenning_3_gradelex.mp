The given ring is:
(0,v,u),(z,y,x),(Dp(3),C)

F = {
x3+(u2+1)*y-1, 
x2+(u2+1)*z-1
}.

E = {0}.

N = {}.

=============================


RGB is the CCGB.

----------------------------

C = [

/* f_1 = */ x2+(u2+1)*z-1,
/* f_2 = */ (u2+1)*zx+(-u2-1)*y-x+1,
/* f_3 = */ (u4+2u2+1)*z2+(u2+1)*yx+(-2u2-2)*z-x+1;

].

Size is: 3.

It is comprehensive and minimal.
--------------------------

M_1

M = [

/* f_1 = */ x2+(u2+1)*z-1,
/* f_2 = */ (u2+1)*zx+(-u2-1)*y-x+1,
/* f_3 = */ (u4+2u2+1)*z2+(u2+1)*yx+(-2u2-2)*z-x+1;

].

Size is: 3.

It is comprehensive and minimal.

Normal form of Split form of M_1 :
M = [

/* f_1 = */ x2+(u2+1)*z-1,
/* f_2 = */ (u2+1)*zx+(-u2-1)*y-x+1,
/* f_3 = */ (u4+2u2+1)*z2+(u2+1)*yx+(-2u2-2)*z-x+1;

].

Size is : 3.

It is comprehensive and minimal.
==================================


Comprehensive Groebner Basis: 

/* f_1 = */ x2+(u2+1)*z-1,
/* f_2 = */ (u2+1)*zx+(-u2-1)*y-x+1,
/* f_3 = */ (u4+2u2+1)*z2+(u2+1)*yx+(-2u2-2)*z-x+1;




Size is: 3.

--------------------------------------


Module Comprehensive Groebner Systems: 

Branch 1:
constraints: u^2+1!=0,
RGB from KSW:
[x^2+(u^2+1)*z-1  ,  0]
[(u^2+1)*z*x+(-u^2-1)*y-x+1  ,  0]
[(u^4+2*u^2+1)*z^2+(u^2+1)*y*x+(-2*u^2-2)*z-x+1  ,  0]

Module Groebner basis: 
[x^2+(u^2+1)*z-1, 0], 
[(u^2+1)*z*x+(-u^2-1)*y-x+1, 0], 
[(u^4+2*u^2+1)*z^2+(u^2+1)*y*x+(-2*u^2-2)*z-x+1 , 0].

LPP Set of Module Groebner Basis under specialization:
[ x^2 ]
[ z*x ]
[ z^2 ]

Branch 2:
constraints: u^2+1=0,
RGB from KSW:
[x-1  ,  (-u^2-1)*z*x+(u^2+1)*y]

Module Groebner basis: 
[x-1 , (-u^2-1)*z*x+(u^2+1)*y].

LPP Set of Module Groebner Basis under specialization:
[ x ]



