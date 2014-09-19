
+++++++++++++++++++++++++++++++++++++++

The given ring is:
(0,u,v),(x,y,z),(dp(3),C)

F = {
-x2y+z3+(-3u)*x+(-4v)*z, 
x2y-2*z3+(4u)*x+(-4v)*z, 
2*xy+(3u)*xz+(2v2)*z, 
-2*xy+(-2u)*xz+(-4v2)*z
}.

E = {0}.

N = {}.


Module Comprehensive Groebner Systems: 

Branch 1:
constraints: v!=0,16*v^9-104*u*v^6+204*u^2*v^3-u^3*v-126*u^3!=0,u!=0,
RGB from KSW:
[(-u^3*v^3-126*u^3*v^2+204*u^2*v^5-104*u*v^8+16*v^11)*z  ,  0]
[(u^2)*x+(6*u*v-4*v^4)*z  ,  0]
[(4*u*v^7)*x+(-u^2*v^3-126*u^2*v^2+204*u*v^5-80*v^8)*z  ,  0]
[(u*v^2)*z^2+(-2*u*v^4)*x+(-42*u*v^2+28*v^5)*z  ,  0]
[(3*u^2*v)*z^2+(-4*u*v^6)*x+(u^2*v^2-84*u*v^4+56*v^7)*z  ,  0]
[(-3*u*v+2*v^4)*z^2+(-u*v^2)*z  ,  0]
[(v)*y*z+(2*u*v)*z^2  ,  0]
[(u)*x*z+(-2*v^2)*z  ,  0]
[(2*v^2)*x*z+(-u)*x+(-6*v)*z  ,  0]
[x*y+(4*v^2)*z  ,  0]
[(u*v^2)*x^2+(-v^2)*z^2+(-7*u*v)*x  ,  0]
[z^3+(-u)*x+(8*v)*z  ,  0]

Module Groebner basis: 
[(-u^3*v^3-126*u^3*v^2+204*u^2*v^5-104*u*v^8+16*v^11)*z, 0], 
[(u^2)*x+(6*u*v-4*v^4)*z , 0].

LPP Set of Module Groebner Basis under specialization:
[ z ]
[ x ]

Branch 2:
constraints: 16*v^9-104*u*v^6+204*u^2*v^3-u^3*v-126*u^3=0,u!=0,v!=0,
RGB from KSW:
[(u^2)*x+(6*u*v-4*v^4)*z  ,  0]
[(4*u*v^7)*x+(-u^2*v^3-126*u^2*v^2+204*u*v^5-80*v^8)*z  ,  0]
[(u*v^2)*z^2+(-2*u*v^4)*x+(-42*u*v^2+28*v^5)*z  ,  0]
[(3*u^2*v)*z^2+(-4*u*v^6)*x+(u^2*v^2-84*u*v^4+56*v^7)*z  ,  0]
[(378*u^3)*z^2+(-15876*u^3+15120*u^2*v^3-3024*u*v^6)*z  ,  (-3*u^3*v-378*u^3+612*u^2*v^3-312*u*v^6+48*v^9)*z^2+(-u^3*v^2+15876*u^3+204*u^2*v^4-25704*u^2*v^3-104*u*v^7+13104*u*v^6+16*v^10-2016*v^9)*z]
[(-3*u*v+2*v^4)*z^2+(-u*v^2)*z  ,  0]
[(v)*y*z+(2*u*v)*z^2  ,  0]
[(378*u^3)*y*z+(31752*u^4-30240*u^3*v^3+6048*u^2*v^6)*z  ,  (-3*u^3*v-378*u^3+612*u^2*v^3-312*u*v^6+48*v^9)*y*z+(2*u^4*v^2-31752*u^4-408*u^3*v^4+51408*u^3*v^3+208*u^2*v^7-26208*u^2*v^6-32*u*v^10+4032*u*v^9)*z]
[(u)*x*z+(-2*v^2)*z  ,  0]
[(2*v^2)*x*z+(-u)*x+(-6*v)*z  ,  0]
[x*y+(4*v^2)*z  ,  0]
[(u*v^2)*x^2+(-v^2)*z^2+(-7*u*v)*x  ,  0]
[z^3+(-u)*x+(8*v)*z  ,  0]

Module Groebner basis: 
[(u^2)*x+(6*u*v-4*v^4)*z, 0], 
[(378*u^3)*z^2+(-15876*u^3+15120*u^2*v^3-3024*u*v^6)*z, (-3*u^3*v-378*u^3+612*u^2*v^3-312*u*v^6+48*v^9)*z^2+(-u^3*v^2+15876*u^3+204*u^2*v^4-25704*u^2*v^3-104*u*v^7+13104*u*v^6+16*v^10-2016*v^9)*z], 
[(v)*y*z+(2*u*v)*z^2 , 0].

LPP Set of Module Groebner Basis under specialization:
[ x ]
[ z^2 ]
[ y*z ]

Branch 3:
constraints: v=0,u=0,
RGB from KSW:
[x*y  ,  (4*v^2)*z]
[z^3  ,  (-u)*x+(8*v)*z]

Module Groebner basis: 
[x*y, (4*v^2)*z], 
[z^3 , (-u)*x+(8*v)*z].

LPP Set of Module Groebner Basis under specialization:
[ x*y ]
[ z^3 ]

Branch 4:
constraints: u=0,16*v^9!=0,v!=0,
RGB from KSW:
[(6*v)*z  ,  (-u)*x^2*z+(u)*x]
[x*y  ,  (2*u)*x*z]
[3*z^3  ,  (4*u)*x^2*z+(-7*u)*x]

Module Groebner basis: 
[(6*v)*z, (-u)*x^2*z+(u)*x], 
[x*y , (2*u)*x*z].

LPP Set of Module Groebner Basis under specialization:
[ z ]
[ x*y ]

Branch 5:
constraints: v=0,-126*u^3!=0,u!=0,u!=0,
RGB from KSW:
[(u)*x  ,  (-2*v^2)*x*z+(6*v)*z]
[x*y  ,  (4*v^2)*z]
[z^3  ,  (-2*v^2)*x*z+(14*v)*z]

Module Groebner basis: 
[(u)*x, (-2*v^2)*x*z+(6*v)*z], 
[z^3 , (-2*v^2)*x*z+(14*v)*z].

LPP Set of Module Groebner Basis under specialization:
[ x ]
[ z^3 ]




Comprehensive Groebner Basis: 

(-1/16u3v3-63/8u3v2+51/4u2v5-13/2uv8+v11)*z,
(u2)*x+(6uv-4v4)*z,
(-1/16u3v+51/4u2v3-13/2uv6+v9)*z2+(-1/48u3v2+17/4u2v4-441/2u2v3-13/6uv7+210uv6+1/3v10-42v9)*z,
(v)*yz+(2uv)*z2,
(v2)*xz+(-1/2u)*x+(-3v)*z,
xy+(4v2)*z,
xy+(2u)*xz,
z3+(-u)*x+(8v)*z,
z3+(-2v2)*xz+(14v)*z,
(u)*x2z+(-u)*x+(-6v)*z.




Size is: 10.

================ Algorithm 1 =====================

---------------------

M_1

M = [

(-1/16u3v3-63/8u3v2+51/4u2v5-13/2uv8+v11)*z,
(u2)*x+(6uv-4v4)*z,
(-1/16u3v+51/4u2v3-13/2uv6+v9)*z2+(-1/48u3v2+17/4u2v4-441/2u2v3-13/6uv7+210uv6+1/3v10-42v9)*z,
(v)*yz+(2uv)*z2,
xy+(4v2)*z,
z3+(-u)*x+(8v)*z.

].

Size is: 6.

It is comprehensive and minimal.
---------------------

M_2

M = [

(-1/16u3v3-63/8u3v2+51/4u2v5-13/2uv8+v11)*z,
(u2)*x+(6uv-4v4)*z,
(-1/16u3v+51/4u2v3-13/2uv6+v9)*z2+(-1/48u3v2+17/4u2v4-441/2u2v3-13/6uv7+210uv6+1/3v10-42v9)*z,
(v)*yz+(2uv)*z2,
xy+(2u)*xz,
z3+(-2v2)*xz+(14v)*z.

].

Size is: 6.

It is comprehensive and minimal.
---------------------

M_3

M = [

(-1/16u3v3-63/8u3v2+51/4u2v5-13/2uv8+v11)*z,
(u2)*x+(6uv-4v4)*z,
(-1/16u3v+51/4u2v3-13/2uv6+v9)*z2+(-1/48u3v2+17/4u2v4-441/2u2v3-13/6uv7+210uv6+1/3v10-42v9)*z,
(v)*yz+(2uv)*z2,
xy+(4v2)*z,
z3+(-2v2)*xz+(14v)*z.

].

Size is: 6.

It is comprehensive and minimal.
---------------------

M_4

M = [

(-1/16u3v3-63/8u3v2+51/4u2v5-13/2uv8+v11)*z,
(u2)*x+(6uv-4v4)*z,
(-1/16u3v+51/4u2v3-13/2uv6+v9)*z2+(-1/48u3v2+17/4u2v4-441/2u2v3-13/6uv7+210uv6+1/3v10-42v9)*z,
(v)*yz+(2uv)*z2,
xy+(2u)*xz,
z3+(-u)*x+(8v)*z.

].

Size is: 6.

It is comprehensive and minimal.

========================= Algorithm 3 ======================

C = [

(-1/16u3v3-63/8u3v2+51/4u2v5-13/2uv8+v11)*z
(u2)*x+(6uv-4v4)*z
(-1/16u3v+51/4u2v3-13/2uv6+v9)*z2+(-1/48u3v2+17/4u2v4-441/2u2v3-13/6uv7+210uv6+1/3v10-42v9)*z
(v)*yz+(2uv)*z2
xy+(4v2)*z
z3+(-u)*x+(8v)*z.

].


Size is: 6.

It is comprehensive and minimal.
=================================
Compare MCGBs with CCGB:

Consider M_1:
M_1

M = [

(-1/16u3v3-63/8u3v2+51/4u2v5-13/2uv8+v11)*z,
(u2)*x+(6uv-4v4)*z,
(-1/16u3v+51/4u2v3-13/2uv6+v9)*z2+(-1/48u3v2+17/4u2v4-441/2u2v3-13/6uv7+210uv6+1/3v10-42v9)*z,
(v)*yz+(2uv)*z2,
xy+(4v2)*z,
z3+(-u)*x+(8v)*z.

].

Size is: 6.

CCGB

C = [

(-1/16u3v3-63/8u3v2+51/4u2v5-13/2uv8+v11)*z
(u2)*x+(6uv-4v4)*z
(-1/16u3v+51/4u2v3-13/2uv6+v9)*z2+(-1/48u3v2+17/4u2v4-441/2u2v3-13/6uv7+210uv6+1/3v10-42v9)*z
(v)*yz+(2uv)*z2
xy+(4v2)*z
z3+(-u)*x+(8v)*z.

].


Size is: 6.

Polys in M_1 but not in CCGB:


Polys in CCGB but not in M_1:

--------------------

Consider M_2:
M_2

M = [

(-1/16u3v3-63/8u3v2+51/4u2v5-13/2uv8+v11)*z,
(u2)*x+(6uv-4v4)*z,
(-1/16u3v+51/4u2v3-13/2uv6+v9)*z2+(-1/48u3v2+17/4u2v4-441/2u2v3-13/6uv7+210uv6+1/3v10-42v9)*z,
(v)*yz+(2uv)*z2,
xy+(2u)*xz,
z3+(-2v2)*xz+(14v)*z.

].

Size is: 6.

CCGB

C = [

(-1/16u3v3-63/8u3v2+51/4u2v5-13/2uv8+v11)*z
(u2)*x+(6uv-4v4)*z
(-1/16u3v+51/4u2v3-13/2uv6+v9)*z2+(-1/48u3v2+17/4u2v4-441/2u2v3-13/6uv7+210uv6+1/3v10-42v9)*z
(v)*yz+(2uv)*z2
xy+(4v2)*z
z3+(-u)*x+(8v)*z.

].


Size is: 6.

Polys in M_2 but not in CCGB:
xy+(2u)*xz,
z3+(-2v2)*xz+(14v)*z,


Polys in CCGB but not in M_2:
xy+(4v2)*z,
z3+(-u)*x+(8v)*z,

--------------------

Consider M_3:
M_3

M = [

(-1/16u3v3-63/8u3v2+51/4u2v5-13/2uv8+v11)*z,
(u2)*x+(6uv-4v4)*z,
(-1/16u3v+51/4u2v3-13/2uv6+v9)*z2+(-1/48u3v2+17/4u2v4-441/2u2v3-13/6uv7+210uv6+1/3v10-42v9)*z,
(v)*yz+(2uv)*z2,
xy+(4v2)*z,
z3+(-2v2)*xz+(14v)*z.

].

Size is: 6.

CCGB

C = [

(-1/16u3v3-63/8u3v2+51/4u2v5-13/2uv8+v11)*z
(u2)*x+(6uv-4v4)*z
(-1/16u3v+51/4u2v3-13/2uv6+v9)*z2+(-1/48u3v2+17/4u2v4-441/2u2v3-13/6uv7+210uv6+1/3v10-42v9)*z
(v)*yz+(2uv)*z2
xy+(4v2)*z
z3+(-u)*x+(8v)*z.

].


Size is: 6.

Polys in M_3 but not in CCGB:
z3+(-2v2)*xz+(14v)*z,


Polys in CCGB but not in M_3:
z3+(-u)*x+(8v)*z,

--------------------

Consider M_4:
M_4

M = [

(-1/16u3v3-63/8u3v2+51/4u2v5-13/2uv8+v11)*z,
(u2)*x+(6uv-4v4)*z,
(-1/16u3v+51/4u2v3-13/2uv6+v9)*z2+(-1/48u3v2+17/4u2v4-441/2u2v3-13/6uv7+210uv6+1/3v10-42v9)*z,
(v)*yz+(2uv)*z2,
xy+(2u)*xz,
z3+(-u)*x+(8v)*z.

].

Size is: 6.

CCGB

C = [

(-1/16u3v3-63/8u3v2+51/4u2v5-13/2uv8+v11)*z
(u2)*x+(6uv-4v4)*z
(-1/16u3v+51/4u2v3-13/2uv6+v9)*z2+(-1/48u3v2+17/4u2v4-441/2u2v3-13/6uv7+210uv6+1/3v10-42v9)*z
(v)*yz+(2uv)*z2
xy+(4v2)*z
z3+(-u)*x+(8v)*z.

].


Size is: 6.

Polys in M_4 but not in CCGB:
xy+(2u)*xz,


Polys in CCGB but not in M_4:
xy+(4v2)*z,

--------------------


=================== RGB =================

RGB = [

(-1/16u3v3-63/8u3v2+51/4u2v5-13/2uv8+v11)*z
(u2)*x+(6uv-4v4)*z
(uv7)*x+(-1/4u2v3-63/2u2v2+51uv5-20v8)*z
(uv2)*z2+(-2uv4)*x+(-42uv2+28v5)*z
(u2v)*z2+(-4/3uv6)*x+(1/3u2v2-28uv4+56/3v7)*z
(-3/2uv+v4)*z2+(-1/2uv2)*z
(v)*yz+(2uv)*z2
(u)*xz+(-2v2)*z
(v2)*xz+(-1/2u)*x+(-3v)*z
xy+(4v2)*z
(uv2)*x2+(-v2)*z2+(-7uv)*x
z3+(-u)*x+(8v)*z.

].


Size is: 12.

It is comprehensive, but not minimal.
RGB is not a subset of CGB!
