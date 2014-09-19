
+++++++++++++++++++++++++++++++++++++++

The given ring is:
(0,v,u),(z,y,x),(dp(3),C)

F = {
x3+(u2+1)*y-1, 
x2+(u2+1)*z-1
}.

E = {0}.

N = {}.


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




Comprehensive Groebner Basis: 

x2+(u2+1)*z-1,
(u2+1)*zx+(-u2-1)*y-x+1,
(u4+2u2+1)*z2+(u2+1)*yx+(-2u2-2)*z-x+1.




Size is: 3.

================ Algorithm 1 =====================

---------------------

M_1

M = [

x2+(u2+1)*z-1,
(u2+1)*zx+(-u2-1)*y-x+1,
(u4+2u2+1)*z2+(u2+1)*yx+(-2u2-2)*z-x+1.

].

Size is: 3.

It is comprehensive and minimal.

========================= Algorithm 3 ======================

C = [

x2+(u2+1)*z-1
(u2+1)*zx+(-u2-1)*y-x+1
(u4+2u2+1)*z2+(u2+1)*yx+(-2u2-2)*z-x+1.

].


Size is: 3.

It is comprehensive and minimal.
=================================
Compare MCGBs with CCGB:

Consider M_1:
M_1

M = [

x2+(u2+1)*z-1,
(u2+1)*zx+(-u2-1)*y-x+1,
(u4+2u2+1)*z2+(u2+1)*yx+(-2u2-2)*z-x+1.

].

Size is: 3.

CCGB

C = [

x2+(u2+1)*z-1
(u2+1)*zx+(-u2-1)*y-x+1
(u4+2u2+1)*z2+(u2+1)*yx+(-2u2-2)*z-x+1.

].


Size is: 3.

Polys in M_1 but not in CCGB:


Polys in CCGB but not in M_1:

--------------------


=================== RGB =================

RGB = [

x2+(u2+1)*z-1
(u2+1)*zx+(-u2-1)*y-x+1
(u4+2u2+1)*z2+(u2+1)*yx+(-2u2-2)*z-x+1.

].


Size is: 3.

It is comprehensive and minimal.
RGB is a subset of CGB!
