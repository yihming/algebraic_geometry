
+++++++++++++++++++++++++++++++++++++++

The given ring is:
(0,a,b,c),(x,y),(lp(2),C)

F = {
(a)*x+(-b), 
(b)*y+(-a), 
(c)*x2-y, 
-x+(c)*y2
}.

E = {0}.

N = {}.


Module Comprehensive Groebner Systems: 

Branch 1:
constraints: b*c^2-b!=0,
RGB from KSW:
[(b*c^2-b)  ,  0]
[(a*c^2-a)  ,  0]
[(a^3-b^3*c)  ,  0]
[(b)*y+(-a)  ,  0]
[(a^2)*y+(-b^2*c)  ,  0]
[(a)*y^2+(-b*c)  ,  0]
[(c^3)*y^4-y  ,  0]
[x+(-c)*y^2  ,  0]

Module Groebner basis: 
[(b*c^2-b) , 0].

LPP Set of Module Groebner Basis under specialization:
[ 1 ]

Branch 2:
constraints: b*c^2-b=0,a*c^2-a!=0,
RGB from KSW:
[(a*c^2-a)  ,  0]
[(a^3-b^3*c)  ,  0]
[(b)*y+(-a)  ,  0]
[(a^2)*y+(-b^2*c)  ,  0]
[(a)*y^2+(-b*c)  ,  0]
[(c^3)*y^4-y  ,  0]
[x+(-c)*y^2  ,  0]

Module Groebner basis: 
[(a*c^2-a) , 0].

LPP Set of Module Groebner Basis under specialization:
[ 1 ]

Branch 3:
constraints: b*c^2-b=0,a*c^2-a=0,a^3-b^3*c!=0,
RGB from KSW:
[(a^3-b^3*c)  ,  0]
[(b)*y+(-a)  ,  0]
[(a^2)*y+(-b^2*c)  ,  0]
[(a)*y^2+(-b*c)  ,  0]
[(c^3)*y^4-y  ,  0]
[x+(-c)*y^2  ,  0]

Module Groebner basis: 
[(a^3-b^3*c) , 0].

LPP Set of Module Groebner Basis under specialization:
[ 1 ]

Branch 4:
constraints: b*c^2-b=0,a*c^2-a=0,a^3-b^3*c=0,b!=0,
RGB from KSW:
[(b)*y+(-a)  ,  0]
[(a^2)*y+(-b^2*c)  ,  0]
[(a)*y^2+(-b*c)  ,  0]
[(c^3)*y^4-y  ,  0]
[x+(-c)*y^2  ,  0]

Module Groebner basis: 
[(b)*y+(-a), 0], 
[x+(-c)*y^2 , 0].

LPP Set of Module Groebner Basis under specialization:
[ y ]
[ x ]

Branch 5:
constraints: b=0,a=0,c!=0,
RGB from KSW:
[(c^3)*y^4-y  ,  0]
[x+(-c)*y^2  ,  0]

Module Groebner basis: 
[(c^3)*y^4-y, 0], 
[x+(-c)*y^2 , 0].

LPP Set of Module Groebner Basis under specialization:
[ y^4 ]
[ x ]

Branch 6:
constraints: c=0,b=0,a=0,
RGB from KSW:
[y  ,  (-c^3)*y^4]
[x  ,  (-c)*y^2]

Module Groebner basis: 
[y, (-c^3)*y^4], 
[x , (-c)*y^2].

LPP Set of Module Groebner Basis under specialization:
[ y ]
[ x ]




Comprehensive Groebner Basis: 

(bc2-b),
(ac2-a),
(a3-b3c),
(b)*y+(-a),
(c3)*y4-y,
x+(-c)*y2.




Size is: 6.

================ Algorithm 1 =====================

---------------------

M_1

M = [

(bc2-b),
(a3-b3c),
(b)*y+(-a),
(c3)*y4-y,
x+(-c)*y2.

].

Size is: 5.

It is comprehensive and minimal.

========================= Algorithm 3 ======================

C = [

(bc2-b)
(a3-b3c)
(b)*y+(-a)
(c3)*y4-y
x+(-c)*y2.

].


Size is: 5.

It is comprehensive and minimal.
=================================
Compare MCGBs with CCGB:

Consider M_1:
M_1

M = [

(bc2-b),
(a3-b3c),
(b)*y+(-a),
(c3)*y4-y,
x+(-c)*y2.

].

Size is: 5.

CCGB

C = [

(bc2-b)
(a3-b3c)
(b)*y+(-a)
(c3)*y4-y
x+(-c)*y2.

].


Size is: 5.

Polys in M_1 but not in CCGB:


Polys in CCGB but not in M_1:

--------------------


=================== RGB =================

RGB = [

(bc2-b)
(ac2-a)
(a3-b3c)
(b)*y+(-a)
(a2)*y+(-b2c)
(a)*y2+(-bc)
(c3)*y4-y
x+(-c)*y2.

].


Size is: 8.

It is comprehensive, but not minimal.
RGB is not a subset of CGB!
