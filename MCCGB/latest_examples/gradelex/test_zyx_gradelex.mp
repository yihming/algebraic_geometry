
+++++++++++++++++++++++++++++++++++++++

The given ring is:
(0,u,v),(y,x,z),(Dp(3),C)

F = {
(u)*x+(u+v)*z, 
(u+v)*y+(-u+v)*x+(-v)*z
}.

E = {0}.

N = {}.


Module Comprehensive Groebner Systems: 

Branch 1:
constraints: u!=0,u+v!=0,
RGB from KSW:
[(u)*x+(u+v)*z  ,  0]
[(u+v)*y+(v)*x+(u)*z  ,  0]
[(v)*y*x+(v)*x^2+(v)*x*z+(-v)*z^2  ,  0]

Module Groebner basis: 
[(u)*x+(u+v)*z, 0], 
[(u+v)*y+(v)*x+(u)*z , 0].

LPP Set of Module Groebner Basis under specialization:
[ x ]
[ y ]

Branch 2:
constraints: u+v=0,v!=0,
RGB from KSW:
[(v)*z  ,  (-u-v)*y+(-u-v)*x+(-2*u-2*v)*z]
[(v)*x  ,  (-u-v)*x+(-u-v)*z]

Module Groebner basis: 
[(v)*z, (-u-v)*y+(-u-v)*x+(-2*u-2*v)*z], 
[(v)*x , (-u-v)*x+(-u-v)*z].

LPP Set of Module Groebner Basis under specialization:
[ z ]
[ x ]

Branch 3:
constraints: v=0,u=0,
RGB from KSW:
[   ].

Module Groebner basis: 
[  ].


LPP Set of Module Groebner Basis under specialization:
[  ].

Branch 4:
constraints: u=0,v!=0,v!=0,
RGB from KSW:
[(v)*z  ,  (u)*x+(u)*z]
[(v)*y+(v)*x  ,  (u)*y+(u)*z]

Module Groebner basis: 
[(v)*z, (u)*x+(u)*z], 
[(v)*y+(v)*x , (u)*y+(u)*z].

LPP Set of Module Groebner Basis under specialization:
[ z ]
[ y ]




Comprehensive Groebner Basis: 

(u)*x+(u+v)*z,
(u+v)*y+(v)*x+(u)*z,
(u+v)*y+(u+v)*x+(2u+v)*z.




Size is: 3.

================ Algorithm 1 =====================

---------------------

M_1

M = [

(u)*x+(u+v)*z,
(u+v)*y+(u+v)*x+(2u+v)*z.

].

Size is: 2.

It is comprehensive and minimal.

========================= Algorithm 3 ======================

C = [

(u)*x+(u+v)*z
(u+v)*y+(u+v)*x+(2u+v)*z.

].


Size is: 2.

It is comprehensive and minimal.
=================================
Compare MCGBs with CCGB:

Consider M_1:
M_1

M = [

(u)*x+(u+v)*z,
(u+v)*y+(u+v)*x+(2u+v)*z.

].

Size is: 2.

CCGB

C = [

(u)*x+(u+v)*z
(u+v)*y+(u+v)*x+(2u+v)*z.

].


Size is: 2.

Polys in M_1 but not in CCGB:


Polys in CCGB but not in M_1:

--------------------


=================== RGB =================

RGB = [

(u)*x+(u+v)*z
(u+v)*y+(v)*x+(u)*z
(v)*yx+(v)*x2+(v)*xz+(-v)*z2.

].


Size is: 3.

It is not comprehensive.
RGB is not a subset of CGB!
