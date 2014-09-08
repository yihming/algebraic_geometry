
+++++++++++++++++++++++++++++++++++++++

The given ring is:
(0,a,b,c,d),(x,y),(lp(2),C)

F = {
(a)*x+(b), 
(c)*x+(d)
}.

E = {0}.

N = {}.


Module Comprehensive Groebner Systems: 

Branch 1:
constraints: a*d-b*c!=0,
RGB from KSW:
[(a*d-b*c)  ,  0]
[(c)*x+(d)  ,  0]
[(a)*x+(b)  ,  0]

Module Groebner basis: 
[(a*d-b*c) , 0].

LPP Set of Module Groebner Basis under specialization:
[ 1 ]

Branch 2:
constraints: a*d-b*c=0,c!=0,
RGB from KSW:
[(c)*x+(d)  ,  0]
[(a)*x+(b)  ,  0]

Module Groebner basis: 
[(c)*x+(d) , 0].

LPP Set of Module Groebner Basis under specialization:
[ x ]

Branch 3:
constraints: c=0,a*d=0,d!=0,
RGB from KSW:
[(d)  ,  (c)*x]
[(a)*x+(b)  ,  0]

Module Groebner basis: 
[(d) , (c)*x].

LPP Set of Module Groebner Basis under specialization:
[ 1 ]

Branch 4:
constraints: d=0,c=0,a!=0,
RGB from KSW:
[(a)*x+(b)  ,  0]

Module Groebner basis: 
[(a)*x+(b) , 0].

LPP Set of Module Groebner Basis under specialization:
[ x ]

Branch 5:
constraints: d=0,c=0,a=0,b!=0,
RGB from KSW:
[(b)  ,  (a)*x]

Module Groebner basis: 
[(b) , (a)*x].

LPP Set of Module Groebner Basis under specialization:
[ 1 ]

Branch 6:
constraints: d=0,c=0,b=0,a=0,
RGB from KSW:
[   ].

Module Groebner basis: 
[  ].


LPP Set of Module Groebner Basis under specialization:
[  ].




Comprehensive Groebner Basis: 

(ad-bc),
(c)*x+(d),
(a)*x+(b).




Size is: 3.

================ Algorithm 1 =====================

---------------------

M_1

M = [

(ad-bc),
(c)*x+(d),
(a)*x+(b).

].

Size is: 3.

It is comprehensive and minimal.

========================= Algorithm 3 ======================

C = [

(ad-bc)
(c)*x+(d)
(a)*x+(b).

].


Size is: 3.

It is comprehensive and minimal.
=================================
Compare MCGBs with CCGB:

Consider M_1:
M_1

M = [

(ad-bc),
(c)*x+(d),
(a)*x+(b).

].

Size is: 3.

CCGB

C = [

(ad-bc)
(c)*x+(d)
(a)*x+(b).

].


Size is: 3.

Polys in M_1 but not in CCGB:


Polys in CCGB but not in M_1:

--------------------


=================== RGB =================

RGB = [

(ad-bc)
(c)*x+(d)
(a)*x+(b).

].


Size is: 3.

It is comprehensive and minimal.
RGB is a subset of CGB!
