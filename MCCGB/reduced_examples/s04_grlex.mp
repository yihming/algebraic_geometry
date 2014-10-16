The given ring is:
(0,a,b,c),(x,y,z),(dp(3),C)

F = {
x+y+z-1, 
x-y+2*z+1, 
(a)*x+(b)*y+(c)*z
}.

E = {0}.

N = {}.

=============================


RGB is the CCGB.

----------------------------

C = [

f_1 = (a-1/3b-2/3c)*z+(-2/3b)
f_2 = y-1/2*z-1
f_3 = x+3/2*z.

].

Size is: 3.

It is comprehensive and minimal.
--------------------------

M_1

M = [

f_1 = (a-1/3b-2/3c)*z+(-2/3b),
f_2 = y-1/2*z-1,
f_3 = x+3/2*z.

].

Size is: 3.

It is comprehensive and minimal.
The normal form is:

M = [

f_1 = (a-1/3b-2/3c)*z+(-2/3b),
f_2 = y-1/2*z-1,
f_3 = x+3/2*z.

].

Size is: 3.

It is comprehensive and minimal.
==================================


Comprehensive Groebner Basis: 

f_1 = (a-1/3b-2/3c)*z+(-2/3b),
f_2 = y-1/2*z-1,
f_3 = x+3/2*z.




Size is: 3.

--------------------------------------


Module Comprehensive Groebner Systems: 

Branch 1:
constraints: -3*a+b+2*c!=0,
RGB from KSW:
[(3*a-b-2*c)*z+(-2*b)  ,  0]
[2*y-z-2  ,  0]
[2*x+3*z  ,  0]

Module Groebner basis: 
[(3*a-b-2*c)*z+(-2*b), 0], 
[2*y-z-2, 0], 
[2*x+3*z , 0].

LPP Set of Module Groebner Basis under specialization:
[ z ]
[ y ]
[ x ]

Branch 2:
constraints: 3*a-b-2*c=0,2*b!=0,
RGB from KSW:
[(2*b)  ,  (-3*a+b+2*c)*z]
[(6*a-4*c)  ,  (-3*a+b+2*c)*z+(-6*a+2*b+4*c)]
[2*y-z-2  ,  0]
[2*x+3*z  ,  0]

Module Groebner basis: 
[(2*b) , (-3*a+b+2*c)*z].

LPP Set of Module Groebner Basis under specialization:
[ 1 ]

Branch 3:
constraints: b=0,3*a-2*c=0,
RGB from KSW:
[2*y-z-2  ,  0]
[2*x+3*z  ,  0]

Module Groebner basis: 
[2*y-z-2, 0], 
[2*x+3*z , 0].

LPP Set of Module Groebner Basis under specialization:
[ y ]
[ x ]



