
+++++++++++++++++++++++++++++++++++++++

The given ring is:
(0,v,u),(z,y,x),(lp(3),C)

F = {
(u2+1)*y+x3-1, 
(u2+1)*z+x2-1
}.

E = {0}.

N = {}.


Module Comprehensive Groebner Systems: 

Branch 1:
constraints: u^2+1!=0,
RGB from KSW:
[(u^2+1)*y+x^3-1  ,  0]
[(u^2+1)*z+x^2-1  ,  0]
[z*x^3-z-y*x^2+y  ,  0]

Module Groebner basis: 
[(u^2+1)*y+x^3-1, 0], 
[(u^2+1)*z+x^2-1 , 0].

LPP Set of Module Groebner Basis under specialization:
[ y ]
[ z ]

Branch 2:
constraints: u^2+1=0,
RGB from KSW:
[x-1  ,  (-u^2-1)*z*x+(u^2+1)*y]

Module Groebner basis: 
[x-1 , (-u^2-1)*z*x+(u^2+1)*y].

LPP Set of Module Groebner Basis under specialization:
[ x ]




Comprehensive Groebner Basis: 

(u2+1)*y+x3-1,
(u2+1)*z+x2-1,
(u2+1)*zx+(-u2-1)*y-x+1.




Size is: 3.

================ Algorithm 1 =====================

---------------------

M_1

M = [

(u2+1)*y+x3-1,
(u2+1)*z+x2-1,
(u2+1)*zx+(-u2-1)*y-x+1.

].

Size is: 3.

It is comprehensive and minimal.

========================= Algorithm 3 ======================

C = [

(u2+1)*y+x3-1
(u2+1)*z+x2-1
(u2+1)*zx+(-u2-1)*y-x+1.

].


Size is: 3.

It is comprehensive and minimal.
=================================
Compare MCGBs with CCGB:

Consider M_1:
M_1

M = [

(u2+1)*y+x3-1,
(u2+1)*z+x2-1,
(u2+1)*zx+(-u2-1)*y-x+1.

].

Size is: 3.

CCGB

C = [

(u2+1)*y+x3-1
(u2+1)*z+x2-1
(u2+1)*zx+(-u2-1)*y-x+1.

].


Size is: 3.

Polys in M_1 but not in CCGB:


Polys in CCGB but not in M_1:

--------------------


=================== RGB =================

RGB = [

(u2+1)*y+x3-1
(u2+1)*z+x2-1
zx3-z-yx2+y.

].


Size is: 3.

It is not comprehensive.
RGB is not a subset of CGB!
