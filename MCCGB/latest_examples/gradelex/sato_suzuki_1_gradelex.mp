
+++++++++++++++++++++++++++++++++++++++

The given ring is:
(0,a,b),(x,y,z),(Dp(3),C)

F = {
x3+(-a), 
y4+(-b), 
x+y-z
}.

E = {0}.

N = {}.


Module Comprehensive Groebner Systems: 

Branch 1:
constraints: 
RGB from KSW:
[x+y-z  ,  0]
[y^3-3*y^2*z+3*y*z^2-z^3+(a)  ,  0]
[6*y^2*z^2-8*y*z^3+3*z^4+(-a)*y+(-3*a)*z+(-b)  ,  0]
[5*y*z^4-3*z^5+(3*a)*y^2+(4*a)*y*z+(3*a)*z^2+(3*b)*y+(-5*b)*z  ,  0]
[z^6+(-36*a)*y^2*z+(27*a)*y*z^2+(-11*a)*z^3+(-10*b)*y^2+(24*b)*y*z+(-15*b)*z^2+(10*a^2)  ,  0]

Module Groebner basis: 
[x+y-z, 0], 
[y^3-3*y^2*z+3*y*z^2-z^3+(a), 0], 
[6*y^2*z^2-8*y*z^3+3*z^4+(-a)*y+(-3*a)*z+(-b), 0], 
[5*y*z^4-3*z^5+(3*a)*y^2+(4*a)*y*z+(3*a)*z^2+(3*b)*y+(-5*b)*z, 0], 
[z^6+(-36*a)*y^2*z+(27*a)*y*z^2+(-11*a)*z^3+(-10*b)*y^2+(24*b)*y*z+(-15*b)*z^2+(10*a^2) , 0].

LPP Set of Module Groebner Basis under specialization:
[ x ]
[ y^3 ]
[ y^2*z^2 ]
[ y*z^4 ]
[ z^6 ]




Comprehensive Groebner Basis: 

x+y-z,
y3-3*y2z+3*yz2-z3+(a),
y2z2-4/3*yz3+1/2*z4+(-1/6a)*y+(-1/2a)*z+(-1/6b),
yz4-3/5*z5+(3/5a)*y2+(4/5a)*yz+(3/5a)*z2+(3/5b)*y+(-b)*z,
z6+(-36a)*y2z+(27a)*yz2+(-11a)*z3+(-10b)*y2+(24b)*yz+(-15b)*z2+(10a2).




Size is: 5.

================ Algorithm 1 =====================

---------------------

M_1

M = [

x+y-z,
y3-3*y2z+3*yz2-z3+(a),
y2z2-4/3*yz3+1/2*z4+(-1/6a)*y+(-1/2a)*z+(-1/6b),
yz4-3/5*z5+(3/5a)*y2+(4/5a)*yz+(3/5a)*z2+(3/5b)*y+(-b)*z,
z6+(-36a)*y2z+(27a)*yz2+(-11a)*z3+(-10b)*y2+(24b)*yz+(-15b)*z2+(10a2).

].

Size is: 5.

It is comprehensive and minimal.

========================= Algorithm 3 ======================

C = [

x+y-z
y3-3*y2z+3*yz2-z3+(a)
y2z2-4/3*yz3+1/2*z4+(-1/6a)*y+(-1/2a)*z+(-1/6b)
yz4-3/5*z5+(3/5a)*y2+(4/5a)*yz+(3/5a)*z2+(3/5b)*y+(-b)*z
z6+(-36a)*y2z+(27a)*yz2+(-11a)*z3+(-10b)*y2+(24b)*yz+(-15b)*z2+(10a2).

].


Size is: 5.

It is comprehensive and minimal.
=================================
Compare MCGBs with CCGB:

Consider M_1:
M_1

M = [

x+y-z,
y3-3*y2z+3*yz2-z3+(a),
y2z2-4/3*yz3+1/2*z4+(-1/6a)*y+(-1/2a)*z+(-1/6b),
yz4-3/5*z5+(3/5a)*y2+(4/5a)*yz+(3/5a)*z2+(3/5b)*y+(-b)*z,
z6+(-36a)*y2z+(27a)*yz2+(-11a)*z3+(-10b)*y2+(24b)*yz+(-15b)*z2+(10a2).

].

Size is: 5.

CCGB

C = [

x+y-z
y3-3*y2z+3*yz2-z3+(a)
y2z2-4/3*yz3+1/2*z4+(-1/6a)*y+(-1/2a)*z+(-1/6b)
yz4-3/5*z5+(3/5a)*y2+(4/5a)*yz+(3/5a)*z2+(3/5b)*y+(-b)*z
z6+(-36a)*y2z+(27a)*yz2+(-11a)*z3+(-10b)*y2+(24b)*yz+(-15b)*z2+(10a2).

].


Size is: 5.

Polys in M_1 but not in CCGB:


Polys in CCGB but not in M_1:

--------------------


=================== RGB =================

RGB = [

x+y-z
y3-3*y2z+3*yz2-z3+(a)
y2z2-4/3*yz3+1/2*z4+(-1/6a)*y+(-1/2a)*z+(-1/6b)
yz4-3/5*z5+(3/5a)*y2+(4/5a)*yz+(3/5a)*z2+(3/5b)*y+(-b)*z
z6+(-36a)*y2z+(27a)*yz2+(-11a)*z3+(-10b)*y2+(24b)*yz+(-15b)*z2+(10a2).

].


Size is: 5.

It is comprehensive and minimal.
RGB is a subset of CGB!
