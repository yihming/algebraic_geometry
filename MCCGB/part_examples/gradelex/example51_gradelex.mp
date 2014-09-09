
+++++++++++++++++++++++++++++++++++++++

The given ring is:
(0,a,b,c),(x,y),(Dp(2),C)

F = {
(a)*x+(-b), 
(b)*y+(-a), 
(c)*x2-y, 
(c)*y2-x
}.

E = {0}.

N = {}.


Module Comprehensive Groebner Systems: 

Branch 1:
constraints: b*c^2-b!=0,
RGB from KSW:
[(b*c^2-b)  ,  0]
[(a*c^2-a)  ,  0]
[(-a^3+b^3*c)  ,  0]
[(a^3*c-b^3)  ,  0]
[(a^6-b^6)  ,  0]
[(b)*y+(-a)  ,  0]
[(a^2)*y+(-b^2*c)  ,  0]
[(b)*x+(-a*c)*y  ,  0]
[(a)*x+(-b)  ,  0]
[(c)*y^2-x  ,  0]
[(a)*y^2+(-b*c)  ,  0]
[(c)*x^2-y  ,  0]
[x^3-y^3  ,  0]

Module Groebner basis: 
[(b*c^2-b) , 0].

LPP Set of Module Groebner Basis under specialization:
[ 1 ]

Branch 2:
constraints: b*c^2-b=0,a*c^2-a!=0,
RGB from KSW:
[(a*c^2-a)  ,  0]
[(-a^3+b^3*c)  ,  0]
[(a^3*c-b^3)  ,  0]
[(a^6-b^6)  ,  0]
[(b)*y+(-a)  ,  0]
[(a^2)*y+(-b^2*c)  ,  0]
[(b)*x+(-a*c)*y  ,  0]
[(a)*x+(-b)  ,  0]
[(c)*y^2-x  ,  0]
[(a)*y^2+(-b*c)  ,  0]
[(c)*x^2-y  ,  0]
[x^3-y^3  ,  0]

Module Groebner basis: 
[(a*c^2-a) , 0].

LPP Set of Module Groebner Basis under specialization:
[ 1 ]

Branch 3:
constraints: b*c^2-b=0,a*c^2-a=0,b^3*c-a^3!=0,
RGB from KSW:
[(-a^3+b^3*c)  ,  0]
[(a^3*c-b^3)  ,  0]
[(a^6-b^6)  ,  0]
[(b)*y+(-a)  ,  0]
[(a^2)*y+(-b^2*c)  ,  0]
[(b)*x+(-a*c)*y  ,  0]
[(a)*x+(-b)  ,  0]
[(c)*y^2-x  ,  0]
[(a)*y^2+(-b*c)  ,  0]
[(c)*x^2-y  ,  0]
[x^3-y^3  ,  0]

Module Groebner basis: 
[(-a^3+b^3*c) , 0].

LPP Set of Module Groebner Basis under specialization:
[ 1 ]

Branch 4:
constraints: b*c^2-b=0,a*c^2-a=0,b^3*c-a^3=0,a^3*c-b^3=0,a^6-b^6=0,b!=0,
RGB from KSW:
[(b)*y+(-a)  ,  0]
[(a^2)*y+(-b^2*c)  ,  0]
[(b)*x+(-a*c)*y  ,  0]
[(a)*x+(-b)  ,  0]
[(c)*y^2-x  ,  0]
[(a)*y^2+(-b*c)  ,  0]
[(c)*x^2-y  ,  0]
[x^3-y^3  ,  0]

Module Groebner basis: 
[(b)*y+(-a), 0], 
[(b)*x+(-a*c)*y , 0].

LPP Set of Module Groebner Basis under specialization:
[ y ]
[ x ]

Branch 5:
constraints: b=0,a=0,c!=0,
RGB from KSW:
[(c)*y^2-x  ,  0]
[(c)*x^2-y  ,  0]
[x^3-y^3  ,  0]

Module Groebner basis: 
[(c)*y^2-x, 0], 
[(c)*x^2-y , 0].

LPP Set of Module Groebner Basis under specialization:
[ y^2 ]
[ x^2 ]

Branch 6:
constraints: c=0,b=0,a=0,
RGB from KSW:
[y  ,  (-c)*x^2]
[x  ,  (-c)*y^2]

Module Groebner basis: 
[y, (-c)*x^2], 
[x , (-c)*y^2].

LPP Set of Module Groebner Basis under specialization:
[ y ]
[ x ]




Comprehensive Groebner Basis: 

(bc2-b),
(ac2-a),
(-a3+b3c),
(b)*y+(-a),
(b)*x+(-ac)*y,
(c)*y2-x,
(c)*x2-y.




Size is: 7.

================ Algorithm 1 =====================

---------------------

M_1

M = [

(bc2-b),
(-a3+b3c),
(b)*y+(-a),
(b)*x+(-ac)*y,
(c)*y2-x,
(c)*x2-y.

].

Size is: 6.

It is comprehensive and minimal.

========================= Algorithm 3 ======================

C = [

(bc2-b)
(-a3+b3c)
(b)*y+(-a)
(b)*x+(-ac)*y
(c)*y2-x
(c)*x2-y.

].


Size is: 6.

It is comprehensive and minimal.
=================================
Compare MCGBs with CCGB:

Consider M_1:
M_1

M = [

(bc2-b),
(-a3+b3c),
(b)*y+(-a),
(b)*x+(-ac)*y,
(c)*y2-x,
(c)*x2-y.

].

Size is: 6.

CCGB

C = [

(bc2-b)
(-a3+b3c)
(b)*y+(-a)
(b)*x+(-ac)*y
(c)*y2-x
(c)*x2-y.

].


Size is: 6.

Polys in M_1 but not in CCGB:


Polys in CCGB but not in M_1:

--------------------


=================== RGB =================

RGB = [

(bc2-b)
(ac2-a)
(-a3+b3c)
(a3c-b3)
(a6-b6)
(b)*y+(-a)
(a2)*y+(-b2c)
(b)*x+(-ac)*y
(a)*x+(-b)
(c)*y2-x
(a)*y2+(-bc)
(c)*x2-y
x3-y3.

].


Size is: 13.

It is comprehensive, but not minimal.
RGB is not a subset of CGB!
