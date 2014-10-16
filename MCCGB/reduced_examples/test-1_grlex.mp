The given ring is:
(0,u,v),(y,x,z),(dp(3),C)

F = {
(u-v)*y+(v)*x+(u+v)*z, 
(u+v)*y+(-u+v)*x+(-v)*z
}.

E = {0}.

N = {}.

=============================


RGB is the CCGB.

----------------------------

C = [

f_1 = (u2-uv+2v2)*x+(u2+3uv)*z
f_2 = (v)*y+(-1/2u)*x+(-1/2u-v)*z
f_3 = (u)*y+(-1/2u+v)*x+(1/2u)*z.

].

Size is: 3.

It is comprehensive and minimal.
--------------------------

M_1

M = [

f_1 = (u2-uv+2v2)*x+(u2+3uv)*z,
f_2 = (v)*y+(-1/2u)*x+(-1/2u-v)*z,
f_4 = (u-v)*y+(v)*x+(u+v)*z.

].

Size is: 3.

It is comprehensive and minimal.
The normal form is:

M = [

f_1 = (u2-uv+2v2)*x+(u2+3uv)*z,
f_2 = (v)*y+(-1/2u)*x+(-1/2u-v)*z,
f_4 = (u-v)*y+(v)*x+(u+v)*z.

].

Size is: 3.

It is comprehensive and minimal.
--------------------------

M_2

M = [

f_1 = (u2-uv+2v2)*x+(u2+3uv)*z,
f_2 = (v)*y+(-1/2u)*x+(-1/2u-v)*z,
f_5 = (u2-uv+2v2)*y+(-1/4u2+1/4uv-1/2v2)*x+(3/4u2-3/4uv-2v2)*z.

].

Size is: 3.

It is comprehensive and minimal.
The normal form is:

M = [

f_1 = (u2-uv+2v2)*x+(u2+3uv)*z,
f_2 = (v)*y+(-1/2u)*x+(-1/2u-v)*z,
f_5 = (u2-uv+2v2)*y+(-1/4u2+1/4uv-1/2v2)*x+(3/4u2-3/4uv-2v2)*z.

].

Size is: 3.

It is comprehensive and minimal.
--------------------------

M_3

M = [

f_1 = (u2-uv+2v2)*x+(u2+3uv)*z,
f_4 = (u-v)*y+(v)*x+(u+v)*z,
f_5 = (u2-uv+2v2)*y+(-1/4u2+1/4uv-1/2v2)*x+(3/4u2-3/4uv-2v2)*z.

].

Size is: 3.

It is comprehensive and minimal.
The normal form is:

M = [

f_1 = (u2-uv+2v2)*x+(u2+3uv)*z,
f_4 = (u-v)*y+(v)*x+(u+v)*z,
f_5 = (u2-uv+2v2)*y+(-1/4u2+1/4uv-1/2v2)*x+(3/4u2-3/4uv-2v2)*z.

].

Size is: 3.

It is comprehensive and minimal.
==================================


Comprehensive Groebner Basis: 

f_1 = (u2-uv+2v2)*x+(u2+3uv)*z,
f_2 = (v)*y+(-1/2u)*x+(-1/2u-v)*z,
f_4 = (u-v)*y+(v)*x+(u+v)*z,
f_5 = (u2-uv+2v2)*y+(-1/4u2+1/4uv-1/2v2)*x+(3/4u2-3/4uv-2v2)*z.




Size is: 4.

--------------------------------------


Module Comprehensive Groebner Systems: 

Branch 1:
constraints: u^2-u*v+2*v^2!=0,v!=0,
RGB from KSW:
[(u^2-u*v+2*v^2)*x+(u^2+3*u*v)*z  ,  0]
[(2*v)*y+(-u)*x+(-u-2*v)*z  ,  0]
[(2*u)*y+(-u+2*v)*x+(u)*z  ,  0]

Module Groebner basis: 
[(u^2-u*v+2*v^2)*x+(u^2+3*u*v)*z, 0], 
[(2*v)*y+(-u)*x+(-u-2*v)*z , 0].

LPP Set of Module Groebner Basis under specialization:
[ x ]
[ y ]

Branch 2:
constraints: u^2-u*v+2*v^2=0,v!=0,
RGB from KSW:
[(14*v^2)*z  ,  (-4*u^2+4*u*v-8*v^2)*y+(u^2-u*v+2*v^2)*x+(-3*u^2+3*u*v-6*v^2)*z]
[(7*u*v)*z  ,  (-u^2+u*v-2*v^2)*y+(2*u^2-2*u*v+4*v^2)*x+(u^2-u*v+2*v^2)*z]
[(2*v)*y+(-u)*x+(-u-2*v)*z  ,  0]
[(2*u)*y+(-u+2*v)*x+(u)*z  ,  0]

Module Groebner basis: 
[(14*v^2)*z, (-4*u^2+4*u*v-8*v^2)*y+(u^2-u*v+2*v^2)*x+(-3*u^2+3*u*v-6*v^2)*z], 
[(2*v)*y+(-u)*x+(-u-2*v)*z , 0].

LPP Set of Module Groebner Basis under specialization:
[ z ]
[ y ]

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
[(u)*x+(u)*z  ,  (-2*v)*y+(2*v)*z]
[(u)*y+(u)*z  ,  (-v)*y+(v)*x+(v)*z]

Module Groebner basis: 
[(u)*x+(u)*z, (-2*v)*y+(2*v)*z], 
[(u)*y+(u)*z , (-v)*y+(v)*x+(v)*z].

LPP Set of Module Groebner Basis under specialization:
[ x ]
[ y ]



