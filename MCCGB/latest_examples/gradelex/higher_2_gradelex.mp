
+++++++++++++++++++++++++++++++++++++++

The given ring is:
(0,u,v),(x,y,z),(Dp(3),C)

F = {
-4*x2y-4*z3+(v)*z, 
(2v)*x+(-3v2)*z, 
(3u)*xz+(4v)*x+(-4v2)*z
}.

E = {0}.

N = {}.


Module Comprehensive Groebner Systems: 

Branch 1:
constraints: v!=0,u!=0,
RGB from KSW:
[(2*v)*x+(-3*v^2)*z  ,  0]
[(9*u*v^2)*z^2+(4*v^3)*z  ,  0]
[(36*v^5)*y*z+(16*v^3)*z^2+(9*u*v^3)*z  ,  0]
[(3*u)*x*z+(2*v^2)*z  ,  0]
[(4*u*v)*z^3+(-4*v^4)*y*z+(-u*v^2)*z  ,  0]
[(9*v^3)*y*z^2+(4*v)*z^3+(-v^2)*z  ,  0]
[4*x^2*y+4*z^3+(-v)*z  ,  0]
[(36*u)*z^4+(16*v)*z^3+(-9*u*v)*z^2+(-4*v^2)*z  ,  0]

Module Groebner basis: 
[(2*v)*x+(-3*v^2)*z, 0], 
[(9*u*v^2)*z^2+(4*v^3)*z, 0], 
[(36*v^5)*y*z+(16*v^3)*z^2+(9*u*v^3)*z , 0].

LPP Set of Module Groebner Basis under specialization:
[ x ]
[ z^2 ]
[ y*z ]

Branch 2:
constraints: u=0,v!=0,
RGB from KSW:
[(2*v^2)*z  ,  (3*u)*x*z]
[(4*v)*x  ,  (9*u)*x*z]
[(16*v)*z^3  ,  (36*u)*z^4+(6*u)*x*z+(-9*u*v)*z^2]
[4*x^2*y+4*z^3+(-v)*z  ,  0]

Module Groebner basis: 
[(2*v^2)*z, (3*u)*x*z], 
[(4*v)*x , (9*u)*x*z].

LPP Set of Module Groebner Basis under specialization:
[ z ]
[ x ]

Branch 3:
constraints: v=0,u=0,
RGB from KSW:
[4*x^2*y+4*z^3  ,  (-v)*z]

Module Groebner basis: 
[4*x^2*y+4*z^3 , (-v)*z].

LPP Set of Module Groebner Basis under specialization:
[ x^2*y ]

Branch 4:
constraints: v=0,u!=0,u!=0,
RGB from KSW:
[(3*u)*x*z  ,  (2*v^2)*z]
[4*x^2*y+4*z^3  ,  (-v)*z]
[(36*u)*z^4  ,  (16*v)*z^3+(-9*u*v)*z^2+(-4*v^2)*z]

Module Groebner basis: 
[(3*u)*x*z, (2*v^2)*z], 
[4*x^2*y+4*z^3, (-v)*z], 
[(36*u)*z^4 , (16*v)*z^3+(-9*u*v)*z^2+(-4*v^2)*z].

LPP Set of Module Groebner Basis under specialization:
[ x*z ]
[ x^2*y ]
[ z^4 ]




Comprehensive Groebner Basis: 

(v)*x+(-3/2v2)*z,
(uv2)*z2+(4/9v3)*z,
(v5)*yz+(4/9v3)*z2+(1/4uv3)*z,
(u)*xz+(2/3v2)*z,
(u)*xz+(4/9v)*x,
x2y+z3+(-1/4v)*z,
(u)*z4+(4/9v)*z3+(-1/4uv)*z2+(-1/9v2)*z.




Size is: 7.

================ Algorithm 1 =====================

---------------------

M_1

M = [

(v)*x+(-3/2v2)*z,
(uv2)*z2+(4/9v3)*z,
(v5)*yz+(4/9v3)*z2+(1/4uv3)*z,
(u)*xz+(2/3v2)*z,
x2y+z3+(-1/4v)*z,
(u)*z4+(4/9v)*z3+(-1/4uv)*z2+(-1/9v2)*z.

].

Size is: 6.

It is comprehensive and minimal.
---------------------

M_2

M = [

(v)*x+(-3/2v2)*z,
(uv2)*z2+(4/9v3)*z,
(v5)*yz+(4/9v3)*z2+(1/4uv3)*z,
(u)*xz+(4/9v)*x,
x2y+z3+(-1/4v)*z,
(u)*z4+(4/9v)*z3+(-1/4uv)*z2+(-1/9v2)*z.

].

Size is: 6.

It is comprehensive and minimal.

========================= Algorithm 3 ======================

C = [

(v)*x+(-3/2v2)*z
(uv2)*z2+(4/9v3)*z
(v5)*yz+(4/9v3)*z2+(1/4uv3)*z
(u)*xz+(2/3v2)*z
x2y+z3+(-1/4v)*z
(u)*z4+(4/9v)*z3+(-1/4uv)*z2+(-1/9v2)*z.

].


Size is: 6.

It is comprehensive and minimal.
=================================
Compare MCGBs with CCGB:

Consider M_1:
M_1

M = [

(v)*x+(-3/2v2)*z,
(uv2)*z2+(4/9v3)*z,
(v5)*yz+(4/9v3)*z2+(1/4uv3)*z,
(u)*xz+(2/3v2)*z,
x2y+z3+(-1/4v)*z,
(u)*z4+(4/9v)*z3+(-1/4uv)*z2+(-1/9v2)*z.

].

Size is: 6.

CCGB

C = [

(v)*x+(-3/2v2)*z
(uv2)*z2+(4/9v3)*z
(v5)*yz+(4/9v3)*z2+(1/4uv3)*z
(u)*xz+(2/3v2)*z
x2y+z3+(-1/4v)*z
(u)*z4+(4/9v)*z3+(-1/4uv)*z2+(-1/9v2)*z.

].


Size is: 6.

Polys in M_1 but not in CCGB:


Polys in CCGB but not in M_1:

--------------------

Consider M_2:
M_2

M = [

(v)*x+(-3/2v2)*z,
(uv2)*z2+(4/9v3)*z,
(v5)*yz+(4/9v3)*z2+(1/4uv3)*z,
(u)*xz+(4/9v)*x,
x2y+z3+(-1/4v)*z,
(u)*z4+(4/9v)*z3+(-1/4uv)*z2+(-1/9v2)*z.

].

Size is: 6.

CCGB

C = [

(v)*x+(-3/2v2)*z
(uv2)*z2+(4/9v3)*z
(v5)*yz+(4/9v3)*z2+(1/4uv3)*z
(u)*xz+(2/3v2)*z
x2y+z3+(-1/4v)*z
(u)*z4+(4/9v)*z3+(-1/4uv)*z2+(-1/9v2)*z.

].


Size is: 6.

Polys in M_2 but not in CCGB:
(u)*xz+(4/9v)*x,


Polys in CCGB but not in M_2:
(u)*xz+(2/3v2)*z,

--------------------


=================== RGB =================

RGB = [

(v)*x+(-3/2v2)*z
(uv2)*z2+(4/9v3)*z
(v5)*yz+(4/9v3)*z2+(1/4uv3)*z
(u)*xz+(2/3v2)*z
(uv)*z3+(-v4)*yz+(-1/4uv2)*z
(v3)*yz2+(4/9v)*z3+(-1/9v2)*z
x2y+z3+(-1/4v)*z
(u)*z4+(4/9v)*z3+(-1/4uv)*z2+(-1/9v2)*z.

].


Size is: 8.

It is comprehensive, but not minimal.
RGB is not a subset of CGB!
