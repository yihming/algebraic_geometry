
+++++++++++++++++++++++++++++++++++++++

The given ring is:
(0,a,b,c),(x,y,z),(dp(3),C)

F = {
x+y+z-1, 
x-y+2*z+1, 
(a)*x+(b)*y+(c)*z
}.

E = {0}.

N = {}.


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




Comprehensive Groebner Basis: 

(3a-b-2c)/3*z+(-2b)/3,
y-1/2*z-1,
x+3/2*z.




Size is: 3.

================ Algorithm 1 =====================

---------------------

M_1

M = [

(3a-b-2c)/3*z+(-2b)/3,
y-1/2*z-1,
x+3/2*z.

].

Size is: 3.

It is comprehensive and minimal.

========================= Algorithm 3 ======================

C = [

(3a-b-2c)/3*z+(-2b)/3
y-1/2*z-1
x+3/2*z.

].


Size is: 3.

It is comprehensive and minimal.
=================================
Compare MCGBs with CCGB:

Consider M_1:
M_1

M = [

(3a-b-2c)/3*z+(-2b)/3,
y-1/2*z-1,
x+3/2*z.

].

Size is: 3.

CCGB

C = [

(3a-b-2c)/3*z+(-2b)/3
y-1/2*z-1
x+3/2*z.

].


Size is: 3.

Polys in M_1 but not in CCGB:


Polys in CCGB but not in M_1:

--------------------


=================== RGB =================

RGB = [

(3a-b-2c)/3*z+(-2b)/3
y-1/2*z-1
x+3/2*z.

].


Size is: 3.

It is comprehensive and minimal.
RGB is a subset of CGB!
