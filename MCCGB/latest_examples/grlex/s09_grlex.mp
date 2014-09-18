
+++++++++++++++++++++++++++++++++++++++

The given ring is:
(0,a,b,c),(x,y,z),(dp(3),C)

F = {
x+(c)*y+(b)*z+(a), 
(c)*x+y+(a)*z+(b), 
(b)*x+(a)*y+z+(c)
}.

E = {0}.

N = {}.


Module Comprehensive Groebner Systems: 

Branch 1:
constraints: -2*a*b*c+a^2+b^2+c^2-1!=0,c-1!=0,c+1!=0,
RGB from KSW:
[(-a^2+2*a*b*c-b^2-c^2+1)*z+(a^2*c-2*a*b+b^2*c-c^3+c)  ,  0]
[(c^2-1)*y+(-a+b*c)*z+(a*c-b)  ,  0]
[(-a+b*c)*y+(b^2-1)*z+(a*b-c)  ,  0]
[(a*c-b)*y+(-a*b+c)*z+(-b^2+c^2)  ,  0]
[(a^2-b^2)*y+(-2*a*b^2+a+b*c)*z+(-a^2*b+a*c-b^3+b*c^2)  ,  0]
[x+(c)*y+(b)*z+(a)  ,  0]

Module Groebner basis: 
[(-a^2+2*a*b*c-b^2-c^2+1)*z+(a^2*c-2*a*b+b^2*c-c^3+c), 0], 
[(c^2-1)*y+(-a+b*c)*z+(a*c-b), 0], 
[x+(c)*y+(b)*z+(a) , 0].

LPP Set of Module Groebner Basis under specialization:
[ z ]
[ y ]
[ x ]

Branch 2:
constraints: c-1=0,a-b!=0,
RGB from KSW:
[(a-b)*z+(-a+b)  ,  (-c^2+1)*y+(-b*c+b)*z+(-a*c+a)]
[(a-b)*y+(-b^2+1)*z+(-a*b+1)  ,  (-b*c+b)*y+(c-1)]
[x+y+(b)*z+(a)  ,  (c-1)*y]
[(b^2-1)*z^2+(-b^2+1)  ,  (-c^2+1)*y^2+(c^2-1)]

Module Groebner basis: 
[(a-b)*z+(-a+b), (-c^2+1)*y+(-b*c+b)*z+(-a*c+a)], 
[(a-b)*y+(-b^2+1)*z+(-a*b+1), (-b*c+b)*y+(c-1)], 
[x+y+(b)*z+(a) , (c-1)*y].

LPP Set of Module Groebner Basis under specialization:
[ z ]
[ y ]
[ x ]

Branch 3:
constraints: c-1=0,a-b=0,b-1!=0,b+1!=0,
RGB from KSW:
[(b^2-1)*z+(b^2-1)  ,  (-a+b*c)*y+(a*b-b^2-c+1)]
[x+y+(b)*z+(b)  ,  (c-1)*y+(a-b)]

Module Groebner basis: 
[(b^2-1)*z+(b^2-1), (-a+b*c)*y+(a*b-b^2-c+1)], 
[x+y+(b)*z+(b) , (c-1)*y+(a-b)].

LPP Set of Module Groebner Basis under specialization:
[ z ]
[ x ]

Branch 4:
constraints: c-1=0,b+1=0,a+1=0,
RGB from KSW:
[x+y-z-1  ,  (c-1)*y+(b+1)*z+(a+1)]

Module Groebner basis: 
[x+y-z-1 , (c-1)*y+(b+1)*z+(a+1)].

LPP Set of Module Groebner Basis under specialization:
[ x ]

Branch 5:
constraints: c-1=0,b-1=0,a-1=0,
RGB from KSW:
[x+y+z+1  ,  (c-1)*y+(b-1)*z+(a-1)]

Module Groebner basis: 
[x+y+z+1 , (c-1)*y+(b-1)*z+(a-1)].

LPP Set of Module Groebner Basis under specialization:
[ x ]

Branch 6:
constraints: 2*a*b*c-a^2-b^2-c^2+1=0,c-1!=0,a^2*c+b^2*c-c^3-2*a*b+c!=0,
RGB from KSW:
[(a^2*c-2*a*b+b^2*c-c^3+c)  ,  (-a^2+2*a*b*c-b^2-c^2+1)*z]
[(a^2*b-2*a*c-b^3+b*c^2+b)  ,  (-a^2+2*a*b*c-b^2-c^2+1)*y]
[(a^3-a*b^2-a*c^2-a+2*b*c)  ,  (-a^2*c+2*a*b*c^2-b^2*c-c^3+c)*y+(-a^2*b+2*a*b^2*c-b^3-b*c^2+b)*z+(-a^3+2*a^2*b*c-a*b^2-a*c^2+a)]
[(-2*a*b^2+2*a*c^2+2*b^3*c-2*b*c^3)  ,  (a^2*c-2*a*b*c^2+b^2*c+c^3-c)*y+(-a^2*b+2*a*b^2*c-b^3-b*c^2+b)*z]
[(2*b^4-2*b^2*c^2-2*b^2+2*c^2)*z+(2*a*b^3-2*a*b-2*b^2*c+2*c)  ,  (-a^2*c+2*a*b*c^2-b^2*c-c^3+c)*y^2+(a^2*b-2*a*b^2*c+b^3+b*c^2-b)*y*z+(-a^2+2*a*b*c-b^2-c^2+1)*z+(a^2*c-2*a*b*c^2+b^2*c+c^3-c)]
[(2*a*b^3-2*a*b-2*b^2*c+2*c)*z+(2*b^4-2*b^2*c^2-2*b^2+2*c^2)  ,  (-a^2+2*a*b*c-b^2-c^2+1)*y^2+(a^2*b-2*a*b^2*c+b^3+b*c^2-b)*y]
[(c^2-1)*y+(-a+b*c)*z+(a*c-b)  ,  0]
[(-a+b*c)*y+(b^2-1)*z+(a*b-c)  ,  0]
[(a*c-b)*y+(-a*b+c)*z+(-b^2+c^2)  ,  0]
[(a^2-b^2)*y+(-2*a*b^2+a+b*c)*z+(-a*c-2*b^3+2*b*c^2+b)  ,  (-a^2+2*a*b*c-b^2-c^2+1)*y]
[x+(c)*y+(b)*z+(a)  ,  0]

Module Groebner basis: 
[(a^2*c-2*a*b+b^2*c-c^3+c) , (-a^2+2*a*b*c-b^2-c^2+1)*z].

LPP Set of Module Groebner Basis under specialization:
[ 1 ]

Branch 7:
constraints: b+c=0,a*c+c=0,a^2-1=0,c-1!=0,c-1!=0,c+1!=0,
RGB from KSW:
[(a+1)*y+(a+1)*z  ,  (-b*c-c^2)*y+(-b^2-b*c)*z+(-a*b-a*c+b+c)]
[(c^2-1)*y+(-a-c^2)*z  ,  (b*c+c^2)*z+(a*c-b)]
[x+(c)*y+(-c)*z+(a)  ,  (b+c)*z]

Module Groebner basis: 
[(c^2-1)*y+(-a-c^2)*z, (b*c+c^2)*z+(a*c-b)], 
[x+(c)*y+(-c)*z+(a) , (b+c)*z].

LPP Set of Module Groebner Basis under specialization:
[ y ]
[ x ]

Branch 8:
constraints: c+1=0,b-1=0,a+1=0,
RGB from KSW:
[x-y+z-1  ,  (c+1)*y+(b-1)*z+(a+1)]

Module Groebner basis: 
[x-y+z-1 , (c+1)*y+(b-1)*z+(a+1)].

LPP Set of Module Groebner Basis under specialization:
[ x ]

Branch 9:
constraints: b-1=0,a-c=0,c-1!=0,c+1!=0,c-1!=0,c+1!=0,
RGB from KSW:
[(c^2-1)*y+(c^2-1)  ,  (-a+b*c)*z+(a*c-b-c^2+1)]
[x+(c)*y+z+(c)  ,  (b-1)*z+(a-c)]

Module Groebner basis: 
[(c^2-1)*y+(c^2-1), (-a+b*c)*z+(a*c-b-c^2+1)], 
[x+(c)*y+z+(c) , (b-1)*z+(a-c)].

LPP Set of Module Groebner Basis under specialization:
[ y ]
[ x ]

Branch 10:
constraints: c+1=0,a+b=0,b-1!=0,b-1!=0,b+1!=0,
RGB from KSW:
[(b^2-1)*z+(-b^2+1)  ,  (-a+b*c)*y+(a*b+b^2-c-1)]
[x-y+(b)*z+(-b)  ,  (c+1)*y+(a+b)]

Module Groebner basis: 
[(b^2-1)*z+(-b^2+1), (-a+b*c)*y+(a*b+b^2-c-1)], 
[x-y+(b)*z+(-b) , (c+1)*y+(a+b)].

LPP Set of Module Groebner Basis under specialization:
[ z ]
[ x ]

Branch 11:
constraints: c+1=0,b+1=0,a-1=0,
RGB from KSW:
[x-y-z+1  ,  (c+1)*y+(b+1)*z+(a-1)]

Module Groebner basis: 
[x-y-z+1 , (c+1)*y+(b+1)*z+(a-1)].

LPP Set of Module Groebner Basis under specialization:
[ x ]

Branch 12:
constraints: b+1=0,a+c=0,c-1!=0,c+1!=0,c-1!=0,c+1!=0,
RGB from KSW:
[(c^2-1)*y+(-c^2+1)  ,  (-a+b*c)*z+(a*c-b+c^2-1)]
[x+(c)*y-z+(-c)  ,  (b+1)*z+(a+c)]

Module Groebner basis: 
[(c^2-1)*y+(-c^2+1), (-a+b*c)*z+(a*c-b+c^2-1)], 
[x+(c)*y-z+(-c) , (b+1)*z+(a+c)].

LPP Set of Module Groebner Basis under specialization:
[ y ]
[ x ]

Branch 13:
constraints: b-c=0,a-1=0,c-1!=0,2*c!=0,c+1!=0,c-1!=0,c+1!=0,
RGB from KSW:
[(c^2-1)*y+(c^2-1)*z  ,  (-a+b*c-c^2+1)*z+(a*c-b)]
[x+(c)*y+(c)*z+1  ,  (b-c)*z+(a-1)]

Module Groebner basis: 
[(c^2-1)*y+(c^2-1)*z, (-a+b*c-c^2+1)*z+(a*c-b)], 
[x+(c)*y+(c)*z+1 , (b-c)*z+(a-1)].

LPP Set of Module Groebner Basis under specialization:
[ y ]
[ x ]

Branch 14:
constraints: c+1=0,a^2+2*a*b+b^2!=0,a+b!=0,
RGB from KSW:
[(a+b)*z+(a+b)  ,  (-c^2+1)*y+(-b*c-b)*z+(-a*c-a)]
[(a+b)*y+(-b^2+1)*z+(-a*b-1)  ,  (-b*c-b)*y+(c+1)]
[x-y+(b)*z+(a)  ,  (c+1)*y]
[(b^2-1)*z^2+(-b^2+1)  ,  (-c^2+1)*y^2+(c^2-1)]

Module Groebner basis: 
[(a+b)*z+(a+b), (-c^2+1)*y+(-b*c-b)*z+(-a*c-a)], 
[(a+b)*y+(-b^2+1)*z+(-a*b-1), (-b*c-b)*y+(c+1)], 
[x-y+(b)*z+(a) , (c+1)*y].

LPP Set of Module Groebner Basis under specialization:
[ z ]
[ y ]
[ x ]




Comprehensive Groebner Basis: 

(-a2+2abc-b2-c2+1)/2*z+(a2c-2ab+b2c-c3+c)/2,
(c2-1)*y+(-a+bc)*z+(ac-b),
(-a+bc)*y+(b2-1)*z+(ab-c),
x+(c)*y+(b)*z+(a).




Size is: 4.

================ Algorithm 1 =====================

---------------------

M_1

M = [

(-a2+2abc-b2-c2+1)/2*z+(a2c-2ab+b2c-c3+c)/2,
(c2-1)*y+(-a+bc)*z+(ac-b),
(-a+bc)*y+(b2-1)*z+(ab-c),
x+(c)*y+(b)*z+(a).

].

Size is: 4.

It is comprehensive and minimal.

========================= Algorithm 3 ======================

C = [

(-a2+2abc-b2-c2+1)/2*z+(a2c-2ab+b2c-c3+c)/2
(c2-1)*y+(-a+bc)*z+(ac-b)
(-a+bc)*y+(b2-1)*z+(ab-c)
x+(c)*y+(b)*z+(a).

].


Size is: 4.

It is comprehensive and minimal.
=================================
Compare MCGBs with CCGB:

Consider M_1:
M_1

M = [

(-a2+2abc-b2-c2+1)/2*z+(a2c-2ab+b2c-c3+c)/2,
(c2-1)*y+(-a+bc)*z+(ac-b),
(-a+bc)*y+(b2-1)*z+(ab-c),
x+(c)*y+(b)*z+(a).

].

Size is: 4.

CCGB

C = [

(-a2+2abc-b2-c2+1)/2*z+(a2c-2ab+b2c-c3+c)/2
(c2-1)*y+(-a+bc)*z+(ac-b)
(-a+bc)*y+(b2-1)*z+(ab-c)
x+(c)*y+(b)*z+(a).

].


Size is: 4.

Polys in M_1 but not in CCGB:


Polys in CCGB but not in M_1:

--------------------


=================== RGB =================

RGB = [

(-a2+2abc-b2-c2+1)/2*z+(a2c-2ab+b2c-c3+c)/2
(c2-1)*y+(-a+bc)*z+(ac-b)
(-a+bc)*y+(b2-1)*z+(ab-c)
(ac-b)*y+(-ab+c)*z+(-b2+c2)
(a2-b2)*y+(-2ab2+a+bc)*z+(-a2b+ac-b3+bc2)
x+(c)*y+(b)*z+(a).

].


Size is: 6.

It is comprehensive, but not minimal.
RGB is not a subset of CGB!
