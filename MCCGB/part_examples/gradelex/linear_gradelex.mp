
+++++++++++++++++++++++++++++++++++++++

The given ring is:
(0,u,v),(x,y,z),(Dp(3),C)

F = {
(v)*x+(u-v)*y+(u+v)*z, 
(-u+v)*x+(u+v)*y+(-v)*z
}.

E = {0}.

N = {}.


Module Comprehensive Groebner Systems: 

Branch 1:
constraints: u^2-u*v+2*v^2!=0,v!=0,
RGB from KSW:
[(u^2-u*v+2*v^2)*y+(u^2-2*v^2)*z  ,  0]
[(v)*x+(u-v)*y+(u+v)*z  ,  0]
[(u)*x+(-2*v)*y+(u+2*v)*z  ,  0]

Module Groebner basis: 
[(u^2-u*v+2*v^2)*y+(u^2-2*v^2)*z, 0], 
[(v)*x+(u-v)*y+(u+v)*z , 0].

LPP Set of Module Groebner Basis under specialization:
[ y ]
[ x ]

Branch 2:
constraints: u^2-u*v+2*v^2=0,v!=0,
RGB from KSW:
[(14*v^2)*z  ,  (u^2-u*v+2*v^2)*x+(-4*u^2+4*u*v-8*v^2)*y+(-3*u^2+3*u*v-6*v^2)*z]
[(7*u*v)*z  ,  (2*u^2-2*u*v+4*v^2)*x+(-u^2+u*v-2*v^2)*y+(u^2-u*v+2*v^2)*z]
[(v)*x+(u-v)*y+(u+v)*z  ,  0]
[(u)*x+(-2*v)*y+(u+2*v)*z  ,  0]

Module Groebner basis: 
[(14*v^2)*z, (u^2-u*v+2*v^2)*x+(-4*u^2+4*u*v-8*v^2)*y+(-3*u^2+3*u*v-6*v^2)*z], 
[(v)*x+(u-v)*y+(u+v)*z , 0].

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
constraints: v=0,u^2!=0,u!=0,
RGB from KSW:
[(u)*y+(u)*z  ,  (v)*x+(-v)*y+(v)*z]
[(u)*x+(u)*z  ,  (-2*v)*y+(2*v)*z]

Module Groebner basis: 
[(u)*y+(u)*z, (v)*x+(-v)*y+(v)*z], 
[(u)*x+(u)*z , (-2*v)*y+(2*v)*z].

LPP Set of Module Groebner Basis under specialization:
[ y ]
[ x ]




Comprehensive Groebner Basis: 

(u2-uv+2v2)*y+(u2-2v2)*z,
(v)*x+(u-v)*y+(u+v)*z,
(u)*x+(-2v)*y+(u+2v)*z,
(u2-uv+2v2)*x+(-4u2+4uv-8v2)*y+(-3u2+3uv+8v2)*z.




Size is: 4.

================ Algorithm 1 =====================

---------------------

M_1

M = [

(u2-uv+2v2)*y+(u2-2v2)*z,
(v)*x+(u-v)*y+(u+v)*z,
(u2-uv+2v2)*x+(-4u2+4uv-8v2)*y+(-3u2+3uv+8v2)*z.

].

Size is: 3.

It is comprehensive and minimal.
---------------------

M_2

M = [

(u2-uv+2v2)*y+(u2-2v2)*z,
(u)*x+(-2v)*y+(u+2v)*z,
(u2-uv+2v2)*x+(-4u2+4uv-8v2)*y+(-3u2+3uv+8v2)*z.

].

Size is: 3.

It is comprehensive and minimal.
---------------------

M_3

M = [

(u2-uv+2v2)*y+(u2-2v2)*z,
(v)*x+(u-v)*y+(u+v)*z,
(u)*x+(-2v)*y+(u+2v)*z.

].

Size is: 3.

It is comprehensive and minimal.

========================= Algorithm 3 ======================

C = [

(u2-uv+2v2)*y+(u2-2v2)*z
(v)*x+(u-v)*y+(u+v)*z
(u)*x+(-2v)*y+(u+2v)*z.

].


Size is: 3.

It is comprehensive and minimal.
=================================
Compare MCGBs with CCGB:

Consider M_1:
M_1

M = [

(u2-uv+2v2)*y+(u2-2v2)*z,
(v)*x+(u-v)*y+(u+v)*z,
(u2-uv+2v2)*x+(-4u2+4uv-8v2)*y+(-3u2+3uv+8v2)*z.

].

Size is: 3.

CCGB

C = [

(u2-uv+2v2)*y+(u2-2v2)*z
(v)*x+(u-v)*y+(u+v)*z
(u)*x+(-2v)*y+(u+2v)*z.

].


Size is: 3.

Polys in M_1 but not in CCGB:
(u2-uv+2v2)*x+(-4u2+4uv-8v2)*y+(-3u2+3uv+8v2)*z,


Polys in CCGB but not in M_1:
(u)*x+(-2v)*y+(u+2v)*z,

--------------------

Consider M_2:
M_2

M = [

(u2-uv+2v2)*y+(u2-2v2)*z,
(u)*x+(-2v)*y+(u+2v)*z,
(u2-uv+2v2)*x+(-4u2+4uv-8v2)*y+(-3u2+3uv+8v2)*z.

].

Size is: 3.

CCGB

C = [

(u2-uv+2v2)*y+(u2-2v2)*z
(v)*x+(u-v)*y+(u+v)*z
(u)*x+(-2v)*y+(u+2v)*z.

].


Size is: 3.

Polys in M_2 but not in CCGB:
(u2-uv+2v2)*x+(-4u2+4uv-8v2)*y+(-3u2+3uv+8v2)*z,


Polys in CCGB but not in M_2:
(v)*x+(u-v)*y+(u+v)*z,

--------------------

Consider M_3:
M_3

M = [

(u2-uv+2v2)*y+(u2-2v2)*z,
(v)*x+(u-v)*y+(u+v)*z,
(u)*x+(-2v)*y+(u+2v)*z.

].

Size is: 3.

CCGB

C = [

(u2-uv+2v2)*y+(u2-2v2)*z
(v)*x+(u-v)*y+(u+v)*z
(u)*x+(-2v)*y+(u+2v)*z.

].


Size is: 3.

Polys in M_3 but not in CCGB:


Polys in CCGB but not in M_3:

--------------------


=================== RGB =================

RGB = [

(u2-uv+2v2)*y+(u2-2v2)*z
(v)*x+(u-v)*y+(u+v)*z
(u)*x+(-2v)*y+(u+2v)*z.

].


Size is: 3.

It is comprehensive and minimal.
RGB is a subset of CGB!
