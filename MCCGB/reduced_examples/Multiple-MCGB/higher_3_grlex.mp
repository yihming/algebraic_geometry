The given ring is:
(0,u,v),(x,y,z),(dp(3),C)

F = {
(u)*x2y+(2u)*x2+3*yz+(-2uv)*x, 
(3u)*x2+3*yz+(-3uv)*x, 
-yz+(-v)*x
}.

E = {0}.

N = {}.

=============================


RGB is not the CCGB.

--------------------------------

RGB = [

f_1 = yz+(v)*x
f_2 = (uv)*xz+(u2v3+2uv3+v3)*x
f_3 = (uv+v)*xy+(-v)*x
f_5 = (u)*x2+(-uv-v)*x
f_7 = (v2)*x2+(v)*xz+(uv3+v3)*x
f_8 = (v)*x2y+(-v)*x2+(v2)*x.

].


Size is : 6.

It is comprehensive, but not minimal.

------------------------------

C = [

f_1 = yz+(v)*x
f_2 = (uv)*xz+(u2v3+2uv3+v3)*x
f_3 = (uv+v)*xy+(-v)*x
f_5 = (u)*x2+(-uv-v)*x.

].


Size is: 4.

It is comprehensive and minimal.
--------------------------

M_1

M = [

f_1 = yz+(v)*x,
f_2 = (uv)*xz+(u2v3+2uv3+v3)*x,
f_3 = (uv+v)*xy+(-v)*x,
f_5 = (u)*x2+(-uv-v)*x.

].

Size is: 4.

It is comprehensive and minimal.
The normal form is:

M = [

f_1 = yz+(v)*x,
f_2 = (uv)*xz+(u2v3+2uv3+v3)*x,
f_3 = (uv+v)*xy+(-v)*x,
f_5 = (u)*x2+(-uv-v)*x.

].

Size is: 4.

It is comprehensive and minimal.
--------------------------

M_2

M = [

f_1 = yz+(v)*x,
f_2 = (uv)*xz+(u2v3+2uv3+v3)*x,
f_3 = (uv+v)*xy+(-v)*x,
f_6 = (u)*x2+yz+(-uv)*x.

].

Size is: 4.

It is comprehensive and minimal.
The normal form is:

M = [

f_1 = yz+(v)*x,
f_2 = (uv)*xz+(u2v3+2uv3+v3)*x,
f_3 = (uv+v)*xy+(-v)*x,
f_6 = (u)*x2+yz+(-uv)*x.

].

Size is: 4.

It is comprehensive and minimal.
==================================


Comprehensive Groebner Basis: 

f_1 = yz+(v)*x,
f_2 = (uv)*xz+(u2v3+2uv3+v3)*x,
f_3 = (uv+v)*xy+(-v)*x,
f_4 = (uv+v)*xy+yz,
f_5 = (u)*x2+(-uv-v)*x,
f_6 = (u)*x2+yz+(-uv)*x,
f_7 = (v2)*x2+(v)*xz+(uv3+v3)*x.




Size is: 7.

--------------------------------------


Module Comprehensive Groebner Systems: 

Branch 1:
constraints: u!=0,v!=0,u+1!=0,
RGB from KSW:
[y*z+(v)*x  ,  0]
[(u*v)*x*z+(u^2*v^3+2*u*v^3+v^3)*x  ,  0]
[(u*v+v)*x*y+(-v)*x  ,  0]
[(u)*x^2+(-u*v-v)*x  ,  0]
[(v^2)*x^2+(v)*x*z+(u*v^3+v^3)*x  ,  0]
[(v)*x^2*y+(-v)*x^2+(v^2)*x  ,  0]

Module Groebner basis: 
[y*z+(v)*x, 0], 
[(u*v)*x*z+(u^2*v^3+2*u*v^3+v^3)*x, 0], 
[(u*v+v)*x*y+(-v)*x, 0], 
[(v^2)*x^2+(v)*x*z+(u*v^3+v^3)*x , 0].

LPP Set of Module Groebner Basis under specialization:
[ y*z ]
[ x*z ]
[ x*y ]
[ x^2 ]

Branch 2:
constraints: u=0,v!=0,
RGB from KSW:
[(v)*x  ,  (-u)*x^2+(u*v)*x]
[y*z  ,  (u)*x^2+(-u*v)*x]

Module Groebner basis: 
[(v)*x, (-u)*x^2+(u*v)*x], 
[y*z , (u)*x^2+(-u*v)*x].

LPP Set of Module Groebner Basis under specialization:
[ x ]
[ y*z ]

Branch 3:
constraints: v=0,u=0,
RGB from KSW:
[y*z  ,  (v)*x]

Module Groebner basis: 
[y*z , (v)*x].

LPP Set of Module Groebner Basis under specialization:
[ y*z ]

Branch 4:
constraints: u+1=0,v!=0,
RGB from KSW:
[(v)*x  ,  (-u*v-v)*x*y]
[y*z  ,  (u*v+v)*x*y]
[x^2  ,  (-u-1)*x^2+(u*v+v)*x]

Module Groebner basis: 
[(v)*x, (-u*v-v)*x*y], 
[y*z , (u*v+v)*x*y].

LPP Set of Module Groebner Basis under specialization:
[ x ]
[ y*z ]

Branch 5:
constraints: v=0,u+1=0,
RGB from KSW:
[y*z  ,  (v)*x]
[x^2  ,  (-u-1)*x^2+(u*v+v)*x]

Module Groebner basis: 
[y*z, (v)*x], 
[x^2 , (-u-1)*x^2+(u*v+v)*x].

LPP Set of Module Groebner Basis under specialization:
[ y*z ]
[ x^2 ]

Branch 6:
constraints: v=0,u!=0,u+1!=0,u!=0,
RGB from KSW:
[y*z  ,  (v)*x]
[(u)*x^2  ,  (-u*v-v)*x]

Module Groebner basis: 
[y*z, (v)*x], 
[(u)*x^2 , (-u*v-v)*x].

LPP Set of Module Groebner Basis under specialization:
[ y*z ]
[ x^2 ]



