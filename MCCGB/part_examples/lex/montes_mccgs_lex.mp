
+++++++++++++++++++++++++++++++++++++++

The given ring is:
(0,b,c,d),(x,y),(lp(2),C)

F = {
x2+(2c)*xy+(d)*x+(b)*y2, 
2*x+(2c)*y+(d), 
(2c)*x+(2b)*y
}.

E = {0}.

N = {}.


Module Comprehensive Groebner Systems: 

Branch 1:
constraints: b*d^2!=0,
RGB from KSW:
[(b*d^2)  ,  0]
[(2*c*d)*y+(d^2)  ,  0]
[(2*b-2*c^2)*y+(-c*d)  ,  0]
[2*x+(2*c)*y+(d)  ,  0]

Module Groebner basis: 
[(b*d^2) , 0].

LPP Set of Module Groebner Basis under specialization:
[ 1 ]

Branch 2:
constraints: b*d^2=0,c!=0,d!=0,
RGB from KSW:
[(2*c*d)*y+(d^2)  ,  0]
[(2*b-2*c^2)*y+(-c*d)  ,  0]
[2*x+(2*c)*y+(d)  ,  0]

Module Groebner basis: 
[(2*c*d)*y+(d^2), 0], 
[2*x+(2*c)*y+(d) , 0].

LPP Set of Module Groebner Basis under specialization:
[ y ]
[ x ]

Branch 3:
constraints: d=0,-b+c^2!=0,
RGB from KSW:
[(2*b-2*c^2)*y  ,  (-c*d)]
[2*x+(2*c)*y  ,  (d)]

Module Groebner basis: 
[(2*b-2*c^2)*y, (-c*d)], 
[2*x+(2*c)*y , (d)].

LPP Set of Module Groebner Basis under specialization:
[ y ]
[ x ]

Branch 4:
constraints: d=0,b-c^2=0,
RGB from KSW:
[2*x+(2*c)*y  ,  (d)]

Module Groebner basis: 
[2*x+(2*c)*y , (d)].

LPP Set of Module Groebner Basis under specialization:
[ x ]

Branch 5:
constraints: c=0,b=0,d!=0,d^2!=0,
RGB from KSW:
[(d^2)  ,  (2*c*d)*y]
[2*x+(d)  ,  (2*c)*y]

Module Groebner basis: 
[(d^2) , (2*c*d)*y].

LPP Set of Module Groebner Basis under specialization:
[ 1 ]




Comprehensive Groebner Basis: 

(bd2),
(cd)*y+(1/2d2),
(b-c2)*y+(-1/2cd),
x+(c)*y+(1/2d).




Size is: 4.

================ Algorithm 1 =====================

---------------------

M_1

M = [

(bd2),
(cd)*y+(1/2d2),
(b-c2)*y+(-1/2cd),
x+(c)*y+(1/2d).

].

Size is: 4.

It is comprehensive and minimal.

========================= Algorithm 3 ======================

C = [

(bd2)
(cd)*y+(1/2d2)
(b-c2)*y+(-1/2cd)
x+(c)*y+(1/2d).

].


Size is: 4.

It is comprehensive and minimal.
=================================
Compare MCGBs with CCGB:

Consider M_1:
M_1

M = [

(bd2),
(cd)*y+(1/2d2),
(b-c2)*y+(-1/2cd),
x+(c)*y+(1/2d).

].

Size is: 4.

CCGB

C = [

(bd2)
(cd)*y+(1/2d2)
(b-c2)*y+(-1/2cd)
x+(c)*y+(1/2d).

].


Size is: 4.

Polys in M_1 but not in CCGB:


Polys in CCGB but not in M_1:

--------------------


=================== RGB =================

RGB = [

(bd2)
(cd)*y+(1/2d2)
(b-c2)*y+(-1/2cd)
x+(c)*y+(1/2d).

].


Size is: 4.

It is comprehensive and minimal.
RGB is a subset of CGB!
