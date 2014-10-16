The given ring is:
(0,u,v),(y,x,z),(lp(3),C)

F = {
(u)*x+(u+v)*z, 
(u+v)*y+(-u+v)*x+(-v)*z
}.

E = {0}.

N = {}.

=============================


RGB is not the CCGB.

--------------------------------

RGB = [

f_1 = (u)*x+(u+v)*z
f_2 = (u+v)*y+(v)*x+(u)*z
f_4 = (v)*yx+(v)*x2+(v)*xz+(-v)*z2.

].


Size is : 3.

It is not comprehensive.

------------------------------

C = [

f_1 = (u)*x+(u+v)*z
f_3 = (u+v)*y+(u+v)*x+(2u+v)*z.

].


Size is: 2.

It is comprehensive and minimal.
--------------------------

M_1

M = [

f_1 = (u)*x+(u+v)*z,
f_3 = (u+v)*y+(u+v)*x+(2u+v)*z.

].

Size is: 2.

It is comprehensive and minimal.
The normal form is:

M = [

f_1 = (u)*x+(u+v)*z,
f_3 = (u+v)*y+(u+v)*x+(2u+v)*z.

].

Size is: 2.

It is comprehensive and minimal.
==================================


Comprehensive Groebner Basis: 

f_1 = (u)*x+(u+v)*z,
f_2 = (u+v)*y+(v)*x+(u)*z,
f_3 = (u+v)*y+(u+v)*x+(2u+v)*z.




Size is: 3.

--------------------------------------


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



