
+++++++++++++++++++++++++++++++++++++++

The given ring is:
(0,a,b,c,d,u,v),(x,y),(Dp(2),C)

F = {
(a)*x+(b)*y+(-u), 
(c)*x+(d)*y+(-v)
}.

E = {0}.

N = {}.


Module Comprehensive Groebner Systems: 

Branch 1:
constraints: -a*d+b*c!=0,c!=0,
RGB from KSW:
[(a*d-b*c)*y+(-a*v+c*u)  ,  0]
[(c)*x+(d)*y+(-v)  ,  0]
[(a)*x+(b)*y+(-u)  ,  0]

Module Groebner basis: 
[(a*d-b*c)*y+(-a*v+c*u), 0], 
[(c)*x+(d)*y+(-v) , 0].

LPP Set of Module Groebner Basis under specialization:
[ y ]
[ x ]

Branch 2:
constraints: c=0,d!=0,a!=0,
RGB from KSW:
[(d)*y+(-v)  ,  (c)*x]
[(a)*x+(b)*y+(-u)  ,  0]

Module Groebner basis: 
[(d)*y+(-v), (c)*x], 
[(a)*x+(b)*y+(-u) , 0].

LPP Set of Module Groebner Basis under specialization:
[ y ]
[ x ]

Branch 3:
constraints: c=0,a=0,b*v-d*u!=0,
RGB from KSW:
[(b*v-d*u)  ,  (a*d-b*c)*x]
[(d)*y+(-v)  ,  (c)*x]
[(b)*y+(-u)  ,  (a)*x]

Module Groebner basis: 
[(b*v-d*u) , (a*d-b*c)*x].

LPP Set of Module Groebner Basis under specialization:
[ 1 ]

Branch 4:
constraints: c=0,a=0,b*v-d*u=0,d!=0,
RGB from KSW:
[(d)*y+(-v)  ,  (c)*x]
[(b)*y+(-u)  ,  (a)*x]

Module Groebner basis: 
[(d)*y+(-v) , (c)*x].

LPP Set of Module Groebner Basis under specialization:
[ y ]

Branch 5:
constraints: d=0,c=0,a=0,b*v=0,v!=0,
RGB from KSW:
[(v)  ,  (-c)*x+(-d)*y]
[(b)*y+(-u)  ,  (a)*x]

Module Groebner basis: 
[(v) , (-c)*x+(-d)*y].

LPP Set of Module Groebner Basis under specialization:
[ 1 ]

Branch 6:
constraints: v=0,d=0,c=0,a=0,b!=0,
RGB from KSW:
[(b)*y+(-u)  ,  (a)*x]

Module Groebner basis: 
[(b)*y+(-u) , (a)*x].

LPP Set of Module Groebner Basis under specialization:
[ y ]

Branch 7:
constraints: v=0,d=0,c=0,b=0,a=0,u!=0,
RGB from KSW:
[(u)  ,  (-a)*x+(-b)*y]

Module Groebner basis: 
[(u) , (-a)*x+(-b)*y].

LPP Set of Module Groebner Basis under specialization:
[ 1 ]

Branch 8:
constraints: v=0,u=0,d=0,c=0,b=0,a=0,
RGB from KSW:
[   ].

Module Groebner basis: 
[  ].


LPP Set of Module Groebner Basis under specialization:
[  ].

Branch 9:
constraints: d=0,c=0,a!=0,v!=0,
RGB from KSW:
[(v)  ,  (-c)*x+(-d)*y]
[(a)*x+(b)*y+(-u)  ,  0]

Module Groebner basis: 
[(v) , (-c)*x+(-d)*y].

LPP Set of Module Groebner Basis under specialization:
[ 1 ]

Branch 10:
constraints: v=0,d=0,c=0,a!=0,a!=0,
RGB from KSW:
[(a)*x+(b)*y+(-u)  ,  0]

Module Groebner basis: 
[(a)*x+(b)*y+(-u) , 0].

LPP Set of Module Groebner Basis under specialization:
[ x ]

Branch 11:
constraints: a*d-b*c=0,c!=0,b*v-d*u!=0,
RGB from KSW:
[(b*v-d*u)  ,  (a*d-b*c)*x]
[(a*v-c*u)  ,  (-a*d+b*c)*y]
[(c)*x+(d)*y+(-v)  ,  0]
[(a)*x+(b)*y+(-u)  ,  0]

Module Groebner basis: 
[(b*v-d*u) , (a*d-b*c)*x].

LPP Set of Module Groebner Basis under specialization:
[ 1 ]

Branch 12:
constraints: b*v-d*u=0,a*d-b*c=0,c!=0,a*v-c*u!=0,
RGB from KSW:
[(a*v-c*u)  ,  (-a*d+b*c)*y]
[(c)*x+(d)*y+(-v)  ,  0]
[(a)*x+(b)*y+(-u)  ,  0]

Module Groebner basis: 
[(a*v-c*u) , (-a*d+b*c)*y].

LPP Set of Module Groebner Basis under specialization:
[ 1 ]

Branch 13:
constraints: b*v-d*u=0,a*v-c*u=0,a*d-b*c=0,c!=0,c!=0,
RGB from KSW:
[(c)*x+(d)*y+(-v)  ,  0]
[(a)*x+(b)*y+(-u)  ,  0]

Module Groebner basis: 
[(c)*x+(d)*y+(-v) , 0].

LPP Set of Module Groebner Basis under specialization:
[ x ]




Comprehensive Groebner Basis: 

(ad-bc)*y+(-av+cu),
(c)*x+(d)*y+(-v),
(a)*x+(b)*y+(-u),
(ad-bc)*x+(bv-du).




Size is: 4.

================ Algorithm 1 =====================

---------------------

M_1

M = [

(ad-bc)*y+(-av+cu),
(c)*x+(d)*y+(-v),
(a)*x+(b)*y+(-u),
(ad-bc)*x+(bv-du).

].

Size is: 4.

It is comprehensive and minimal.

========================= Algorithm 3 ======================

C = [

(ad-bc)*y+(-av+cu)
(c)*x+(d)*y+(-v)
(a)*x+(b)*y+(-u)
(ad-bc)*x+(bv-du).

].


Size is: 4.

It is comprehensive and minimal.
=================================
Compare MCGBs with CCGB:

Consider M_1:
M_1

M = [

(ad-bc)*y+(-av+cu),
(c)*x+(d)*y+(-v),
(a)*x+(b)*y+(-u),
(ad-bc)*x+(bv-du).

].

Size is: 4.

CCGB

C = [

(ad-bc)*y+(-av+cu)
(c)*x+(d)*y+(-v)
(a)*x+(b)*y+(-u)
(ad-bc)*x+(bv-du).

].


Size is: 4.

Polys in M_1 but not in CCGB:


Polys in CCGB but not in M_1:

--------------------


=================== RGB =================

RGB = [

(ad-bc)*y+(-av+cu)
(c)*x+(d)*y+(-v)
(a)*x+(b)*y+(-u).

].


Size is: 3.

It is not comprehensive.
RGB is a subset of CGB!
