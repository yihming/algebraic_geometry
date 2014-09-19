
+++++++++++++++++++++++++++++++++++++++

The given ring is:
(0,u,v),(x,y,z),(lp(3),C)

F = {
(u)*x2y+(2u)*x2+(-2uv)*x+3*yz, 
(3u)*x2+(-3uv)*x+3*yz, 
(-v)*x-yz
}.

E = {0}.

N = {}.


Module Comprehensive Groebner Systems: 

Branch 1:
constraints: u!=0,u+1!=0,v!=0,
RGB from KSW:
[(u)*y*z^2+(u^2*v^2+2*u*v^2+v^2)*y*z  ,  0]
[(u+1)*y^2*z-y*z  ,  0]
[y^2*z^2-y*z^2+(-u*v^2-v^2)*y*z  ,  0]
[(v)*x+y*z  ,  0]
[(u)*x*y*z+(-u*v-v)*y*z  ,  0]
[x*y^2*z-x*y*z+(v)*y*z  ,  0]
[(u)*x^2+(u+1)*y*z  ,  0]

Module Groebner basis: 
[(u)*y*z^2+(u^2*v^2+2*u*v^2+v^2)*y*z, 0], 
[(u+1)*y^2*z-y*z, 0], 
[(v)*x+y*z , 0].

LPP Set of Module Groebner Basis under specialization:
[ y*z^2 ]
[ y^2*z ]
[ x ]

Branch 2:
constraints: v=0,u!=0,
RGB from KSW:
[y*z  ,  (v)*x]
[(u)*x^2  ,  (-u*v-v)*x]

Module Groebner basis: 
[y*z, (v)*x], 
[(u)*x^2 , (-u*v-v)*x].

LPP Set of Module Groebner Basis under specialization:
[ y*z ]
[ x^2 ]

Branch 3:
constraints: v=0,u=0,
RGB from KSW:
[y*z  ,  (v)*x]

Module Groebner basis: 
[y*z , (v)*x].

LPP Set of Module Groebner Basis under specialization:
[ y*z ]

Branch 4:
constraints: u+1=0,v!=0,v!=0,
RGB from KSW:
[y*z  ,  (-u-1)*y^2*z]
[(v)*x  ,  (u+1)*y^2*z]
[x^2  ,  (-u-1)*x^2+(-u-1)*y*z]

Module Groebner basis: 
[y*z, (-u-1)*y^2*z], 
[(v)*x , (u+1)*y^2*z].

LPP Set of Module Groebner Basis under specialization:
[ y*z ]
[ x ]

Branch 5:
constraints: u=0,v!=0,v!=0,
RGB from KSW:
[y*z  ,  (u)*x^2+(u)*y*z]
[(v)*x  ,  (-u)*x^2+(-u)*y*z]

Module Groebner basis: 
[y*z, (u)*x^2+(u)*y*z], 
[(v)*x , (-u)*x^2+(-u)*y*z].

LPP Set of Module Groebner Basis under specialization:
[ y*z ]
[ x ]




Comprehensive Groebner Basis: 

(u)*yz2+(u2v2+2uv2+v2)*yz,
(u+1)*y2z-yz,
(v)*x+yz,
(v)*x+(u+1)*y2z,
(u)*x2+(u+1)*yz,
(u)*x2+(-v)*x+(u)*yz,
(u)*x2+(-uv-v)*x.




Size is: 7.

================ Algorithm 1 =====================

---------------------

M_1

M = [

(u)*yz2+(u2v2+2uv2+v2)*yz,
(u+1)*y2z-yz,
(v)*x+yz,
(u)*x2+(-uv-v)*x.

].

Size is: 4.

It is comprehensive and minimal.
---------------------

M_2

M = [

(u)*yz2+(u2v2+2uv2+v2)*yz,
(u+1)*y2z-yz,
(v)*x+yz,
(u)*x2+(-v)*x+(u)*yz.

].

Size is: 4.

It is comprehensive and minimal.
---------------------

M_3

M = [

(u)*yz2+(u2v2+2uv2+v2)*yz,
(u+1)*y2z-yz,
(v)*x+yz,
(u)*x2+(u+1)*yz.

].

Size is: 4.

It is comprehensive and minimal.

========================= Algorithm 3 ======================

C = [

(u)*yz2+(u2v2+2uv2+v2)*yz
(u+1)*y2z-yz
(v)*x+yz
(u)*x2+(u+1)*yz.

].


Size is: 4.

It is comprehensive and minimal.
=================================
Compare MCGBs with CCGB:

Consider M_1:
M_1

M = [

(u)*yz2+(u2v2+2uv2+v2)*yz,
(u+1)*y2z-yz,
(v)*x+yz,
(u)*x2+(-uv-v)*x.

].

Size is: 4.

CCGB

C = [

(u)*yz2+(u2v2+2uv2+v2)*yz
(u+1)*y2z-yz
(v)*x+yz
(u)*x2+(u+1)*yz.

].


Size is: 4.

Polys in M_1 but not in CCGB:
(u)*x2+(-uv-v)*x,


Polys in CCGB but not in M_1:
(u)*x2+(u+1)*yz,

--------------------

Consider M_2:
M_2

M = [

(u)*yz2+(u2v2+2uv2+v2)*yz,
(u+1)*y2z-yz,
(v)*x+yz,
(u)*x2+(-v)*x+(u)*yz.

].

Size is: 4.

CCGB

C = [

(u)*yz2+(u2v2+2uv2+v2)*yz
(u+1)*y2z-yz
(v)*x+yz
(u)*x2+(u+1)*yz.

].


Size is: 4.

Polys in M_2 but not in CCGB:
(u)*x2+(-v)*x+(u)*yz,


Polys in CCGB but not in M_2:
(u)*x2+(u+1)*yz,

--------------------

Consider M_3:
M_3

M = [

(u)*yz2+(u2v2+2uv2+v2)*yz,
(u+1)*y2z-yz,
(v)*x+yz,
(u)*x2+(u+1)*yz.

].

Size is: 4.

CCGB

C = [

(u)*yz2+(u2v2+2uv2+v2)*yz
(u+1)*y2z-yz
(v)*x+yz
(u)*x2+(u+1)*yz.

].


Size is: 4.

Polys in M_3 but not in CCGB:


Polys in CCGB but not in M_3:

--------------------


=================== RGB =================

RGB = [

(u)*yz2+(u2v2+2uv2+v2)*yz
(u+1)*y2z-yz
y2z2-yz2+(-uv2-v2)*yz
(v)*x+yz
(u)*xyz+(-uv-v)*yz
xy2z-xyz+(v)*yz
(u)*x2+(u+1)*yz.

].


Size is: 7.

It is comprehensive, but not minimal.
RGB is not a subset of CGB!
