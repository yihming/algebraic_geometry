
+++++++++++++++++++++++++++++++++++++++

The given ring is:
(0,u,v),(x,y,z),(lp(3),C)

F = {
(v)*x+y+(u+v)*z, 
(-u+v)*x-y+(-v)*z
}.

E = {0}.

N = {}.


Module Comprehensive Groebner Systems: 

Branch 1:
constraints: u-2*v!=0,v!=0,
RGB from KSW:
[(u-2*v)*y+(u^2-2*v^2)*z  ,  0]
[(v)*x+y+(u+v)*z  ,  0]
[(u)*x+2*y+(u+2*v)*z  ,  0]

Module Groebner basis: 
[(u-2*v)*y+(u^2-2*v^2)*z, 0], 
[(v)*x+y+(u+v)*z , 0].

LPP Set of Module Groebner Basis under specialization:
[ y ]
[ x ]

Branch 2:
constraints: v=0,u!=0,
RGB from KSW:
[y+(u)*z  ,  (v)*x+(v)*z]
[(u)*x+(-u)*z  ,  (-2*v)*x]

Module Groebner basis: 
[y+(u)*z, (v)*x+(v)*z], 
[(u)*x+(-u)*z , (-2*v)*x].

LPP Set of Module Groebner Basis under specialization:
[ y ]
[ x ]

Branch 3:
constraints: v=0,u=0,
RGB from KSW:
[y  ,  (v)*x+(u+v)*z]

Module Groebner basis: 
[y , (v)*x+(u+v)*z].

LPP Set of Module Groebner Basis under specialization:
[ y ]

Branch 4:
constraints: u-2*v=0,v!=0,v!=0,
RGB from KSW:
[(2*v)*z  ,  (-u+2*v)*x+(u-2*v)*z]
[2*y*z  ,  (u-2*v)*x^2+(2*u-4*v)*x*z+(-u+2*v)*z^2]
[(2*v)*x+2*y  ,  (3*u-6*v)*x+(-u+2*v)*z]

Module Groebner basis: 
[(2*v)*z, (-u+2*v)*x+(u-2*v)*z], 
[(2*v)*x+2*y , (3*u-6*v)*x+(-u+2*v)*z].

LPP Set of Module Groebner Basis under specialization:
[ z ]
[ x ]




Comprehensive Groebner Basis: 

(u-2v)*y+(u2-2v2)*z,
(v)*x+y+(u+v)*z,
(u-2v)*x+(-u)*z,
(u-4/3v)*x+2/3*y+(-1/3u+2/3v)*z.




Size is: 4.

================ Algorithm 1 =====================

---------------------

M_1

M = [

(u-2v)*y+(u2-2v2)*z,
(v)*x+y+(u+v)*z,
(u-2v)*x+(-u)*z.

].

Size is: 3.

It is comprehensive and minimal.
---------------------

M_2

M = [

(u-2v)*y+(u2-2v2)*z,
(v)*x+y+(u+v)*z,
(u-4/3v)*x+2/3*y+(-1/3u+2/3v)*z.

].

Size is: 3.

It is comprehensive and minimal.
---------------------

M_3

M = [

(u-2v)*y+(u2-2v2)*z,
(u-2v)*x+(-u)*z,
(u-4/3v)*x+2/3*y+(-1/3u+2/3v)*z.

].

Size is: 3.

It is comprehensive and minimal.

========================= Algorithm 3 ======================

C = [

(u-2v)*y+(u2-2v2)*z
(v)*x+y+(u+v)*z
(u)*x+2*y+(u+2v)*z.

].


Size is: 3.

It is comprehensive and minimal.
=================================
Compare MCGBs with CCGB:

Consider M_1:
M_1

M = [

(u-2v)*y+(u2-2v2)*z,
(v)*x+y+(u+v)*z,
(u-2v)*x+(-u)*z.

].

Size is: 3.

CCGB

C = [

(u-2v)*y+(u2-2v2)*z
(v)*x+y+(u+v)*z
(u)*x+2*y+(u+2v)*z.

].


Size is: 3.

Polys in M_1 but not in CCGB:
(u-2v)*x+(-u)*z,


Polys in CCGB but not in M_1:
(u)*x+2*y+(u+2v)*z,

--------------------

Consider M_2:
M_2

M = [

(u-2v)*y+(u2-2v2)*z,
(v)*x+y+(u+v)*z,
(u-4/3v)*x+2/3*y+(-1/3u+2/3v)*z.

].

Size is: 3.

CCGB

C = [

(u-2v)*y+(u2-2v2)*z
(v)*x+y+(u+v)*z
(u)*x+2*y+(u+2v)*z.

].


Size is: 3.

Polys in M_2 but not in CCGB:
(u-4/3v)*x+2/3*y+(-1/3u+2/3v)*z,


Polys in CCGB but not in M_2:
(u)*x+2*y+(u+2v)*z,

--------------------

Consider M_3:
M_3

M = [

(u-2v)*y+(u2-2v2)*z,
(u-2v)*x+(-u)*z,
(u-4/3v)*x+2/3*y+(-1/3u+2/3v)*z.

].

Size is: 3.

CCGB

C = [

(u-2v)*y+(u2-2v2)*z
(v)*x+y+(u+v)*z
(u)*x+2*y+(u+2v)*z.

].


Size is: 3.

Polys in M_3 but not in CCGB:
(u-2v)*x+(-u)*z,
(u-4/3v)*x+2/3*y+(-1/3u+2/3v)*z,


Polys in CCGB but not in M_3:
(v)*x+y+(u+v)*z,
(u)*x+2*y+(u+2v)*z,

--------------------


=================== RGB =================

RGB = [

(u-2v)*y+(u2-2v2)*z
(v)*x+y+(u+v)*z
(u)*x+2*y+(u+2v)*z.

].


Size is: 3.

It is comprehensive and minimal.
RGB is not a subset of CGB!
