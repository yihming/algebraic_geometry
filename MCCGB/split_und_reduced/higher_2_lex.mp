The given ring is:
(0,u,v),(x,y,z),(lp(3),C)

F = {
-4*x2y-4*z3+(v)*z, 
(2v)*x+(-3v2)*z, 
(3u)*xz+(4v)*x+(-4v2)*z
}.

E = {0}.

N = {}.

=============================


RGB is not the CCGB.

--------------------------------

RGB = [

/* f_1 = */ (uv2)*z2+(4v3)/9*z,
/* f_2 = */ (u)*z4+(4v)/9*z3+(-uv)/4*z2+(-v2)/9*z,
/* f_3 = */ (v4)*yz+(-uv)*z3+(uv2)/4*z,
/* f_4 = */ (v3)*yz2+(4v)/9*z3+(-v2)/9*z,
/* f_5 = */ (v)*x+(-3v2)/2*z,
/* f_6 = */ (u)*xz+(2v2)/3*z,
/* f_8 = */ x2y+z3+(-v)/4*z;

].


Size is : 7.

It is comprehensive, but not minimal.

------------------------------

C = [

/* f_1 = */ (uv2)*z2+(4v3)/9*z,
/* f_2 = */ (u)*z4+(4v)/9*z3+(-uv)/4*z2+(-v2)/9*z,
/* f_3 = */ (v4)*yz+(-uv)*z3+(uv2)/4*z,
/* f_5 = */ (v)*x+(-3v2)/2*z,
/* f_6 = */ (u)*xz+(2v2)/3*z,
/* f_8 = */ x2y+z3+(-v)/4*z;

].


Size is: 6.

It is comprehensive and minimal.
--------------------------

M_1

M = [

/* f_1 = */ (uv2)*z2+(4v3)/9*z,
/* f_2 = */ (u)*z4+(4v)/9*z3+(-uv)/4*z2+(-v2)/9*z,
/* f_3 = */ (v4)*yz+(-uv)*z3+(uv2)/4*z,
/* f_5 = */ (v)*x+(-3v2)/2*z,
/* f_6 = */ (u)*xz+(2v2)/3*z,
/* f_8 = */ x2y+z3+(-v)/4*z;

].

Size is: 6.

It is comprehensive and minimal.

Normal form of Split form of M_1 :
M = [

/* f_1 = */ (uv2)*z2+(4v3)/9*z,
/* f_2 = */ (u)*z4+(4v)/9*z3+(-uv)/4*z2+(-v2)/9*z,
/* f_3 = */ (v4)*yz+(-uv)*z3+(uv2)/4*z,
/* f_5 = */ (v)*x+(-3v2)/2*z,
/* f_6 = */ (u)*xz+(2v2)/3*z,
/* f_8 = */ x2y+z3+(-v)/4*z;

].

Size is : 6.

It is comprehensive and minimal.
--------------------------

M_2

M = [

/* f_1 = */ (uv2)*z2+(4v3)/9*z,
/* f_2 = */ (u)*z4+(4v)/9*z3+(-uv)/4*z2+(-v2)/9*z,
/* f_3 = */ (v4)*yz+(-uv)*z3+(uv2)/4*z,
/* f_5 = */ (v)*x+(-3v2)/2*z,
/* f_7 = */ (u)*xz+(4v)/9*x,
/* f_8 = */ x2y+z3+(-v)/4*z;

].

Size is: 6.

It is comprehensive and minimal.

Normal form of Split form of M_2 :
M = [

/* f_1 = */ (uv2)*z2+(4v3)/9*z,
/* f_2 = */ (u)*z4+(4v)/9*z3+(-uv)/4*z2+(-v2)/9*z,
/* f_3 = */ (v4)*yz+(-uv)*z3+(uv2)/4*z,
/* f_5 = */ (v)*x+(-3v2)/2*z,
/* f_6 = */ (u)*xz+(2v2)/3*z,
/* f_8 = */ x2y+z3+(-v)/4*z;

].

Size is : 6.

It is comprehensive and minimal.
==================================


Comprehensive Groebner Basis: 

/* f_1 = */ (uv2)*z2+(4v3)/9*z,
/* f_2 = */ (u)*z4+(4v)/9*z3+(-uv)/4*z2+(-v2)/9*z,
/* f_3 = */ (v4)*yz+(-uv)*z3+(uv2)/4*z,
/* f_5 = */ (v)*x+(-3v2)/2*z,
/* f_6 = */ (u)*xz+(2v2)/3*z,
/* f_7 = */ (u)*xz+(4v)/9*x,
/* f_8 = */ x2y+z3+(-v)/4*z;




Size is: 7.

--------------------------------------


Module Comprehensive Groebner Systems: 

Branch 1:
constraints: u!=0,v!=0,
RGB from KSW:
[(9*u*v^2)*z^2+(4*v^3)*z  ,  0]
[(36*u)*z^4+(16*v)*z^3+(-9*u*v)*z^2+(-4*v^2)*z  ,  0]
[(4*v^4)*y*z+(-4*u*v)*z^3+(u*v^2)*z  ,  0]
[(9*v^3)*y*z^2+(4*v)*z^3+(-v^2)*z  ,  0]
[(2*v)*x+(-3*v^2)*z  ,  0]
[(3*u)*x*z+(2*v^2)*z  ,  0]
[4*x^2*y+4*z^3+(-v)*z  ,  0]

Module Groebner basis: 
[(9*u*v^2)*z^2+(4*v^3)*z, 0], 
[(4*v^4)*y*z+(-4*u*v)*z^3+(u*v^2)*z, 0], 
[(2*v)*x+(-3*v^2)*z , 0].

LPP Set of Module Groebner Basis under specialization:
[ z^2 ]
[ y*z ]
[ x ]

Branch 2:
constraints: u=0,v!=0,
RGB from KSW:
[(2*v^2)*z  ,  (3*u)*x*z]
[(16*v)*z^3  ,  (6*u)*x*z+(36*u)*z^4+(-9*u*v)*z^2]
[(4*v)*x  ,  (9*u)*x*z]
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
[(36*u)*z^4  ,  (16*v)*z^3+(-9*u*v)*z^2+(-4*v^2)*z]
[(3*u)*x*z  ,  (2*v^2)*z]
[4*x^2*y+4*z^3  ,  (-v)*z]

Module Groebner basis: 
[(36*u)*z^4, (16*v)*z^3+(-9*u*v)*z^2+(-4*v^2)*z], 
[(3*u)*x*z, (2*v^2)*z], 
[4*x^2*y+4*z^3 , (-v)*z].

LPP Set of Module Groebner Basis under specialization:
[ z^4 ]
[ x*z ]
[ x^2*y ]



