
+++++++++++++++++++++++++++++++++++++++

The given ring is:
(0,x),(z1,z2),(lp(2),C)

F = {
(x)*z1+(x^2)*z2-1, 
(x^2+1)*z1+(x^3)*z2
}.

E = {0}.

N = {}.


Module Comprehensive Groebner Systems: 

Branch 1:
constraints: x!=0,
RGB from KSW:
[(x^2)*z2+(-x^2-1)  ,  0]
[z1+(x)  ,  0]

Module Groebner basis: 
[(x^2)*z2+(-x^2-1), 0], 
[z1+(x) , 0].

LPP Set of Module Groebner Basis under specialization:
[ z2 ]
[ z1 ]

Branch 2:
constraints: x=0,
RGB from KSW:
[1  ,  (-x^2)*z2+(x^2)]

Module Groebner basis: 
[1 , (-x^2)*z2+(x^2)].

LPP Set of Module Groebner Basis under specialization:
[ 1 ]




Comprehensive Groebner Basis: 

(x^2)*z2+(-x^2-1),
z1+(x).




Size is: 2.

================ Algorithm 1 =====================

---------------------

M_1

M = [

(x^2)*z2+(-x^2-1),
z1+(x).

].

Size is: 2.

It is comprehensive and minimal.

========================= Algorithm 3 ======================

C = [

(x^2)*z2+(-x^2-1)
z1+(x).

].


Size is: 2.

It is comprehensive and minimal.
=================================
Compare MCGBs with CCGB:

Consider M_1:
M_1

M = [

(x^2)*z2+(-x^2-1),
z1+(x).

].

Size is: 2.

CCGB

C = [

(x^2)*z2+(-x^2-1)
z1+(x).

].


Size is: 2.

Polys in M_1 but not in CCGB:


Polys in CCGB but not in M_1:

--------------------


=================== RGB =================

RGB = [

(x^2)*z2+(-x^2-1)
z1+(x).

].


Size is: 2.

It is comprehensive and minimal.
RGB is a subset of CGB!
