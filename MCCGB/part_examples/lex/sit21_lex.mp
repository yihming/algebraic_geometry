
+++++++++++++++++++++++++++++++++++++++

The given ring is:
(0,a,b),(z1,z2,z3),(lp(3),C)

F = {
(-a+b)*z1+(a)*z2+(a^2-1)*z3, 
(b)*z1+(a^2+1)*z2+(a^3)*z3
}.

E = {0}.

N = {}.


Module Comprehensive Groebner Systems: 

Branch 1:
constraints: -a^3+a^2*b-a*b-a+b!=0,b!=0,
RGB from KSW:
[(a^3-a^2*b+a*b+a-b)*z2+(a^4-a^3*b+a^2*b-b)*z3  ,  0]
[(b)*z1+(a^2+1)*z2+(a^3)*z3  ,  0]
[(a)*z1+(a^2-a+1)*z2+(a^3-a^2+1)*z3  ,  0]

Module Groebner basis: 
[(a^3-a^2*b+a*b+a-b)*z2+(a^4-a^3*b+a^2*b-b)*z3, 0], 
[(b)*z1+(a^2+1)*z2+(a^3)*z3 , 0].

LPP Set of Module Groebner Basis under specialization:
[ z2 ]
[ z1 ]

Branch 2:
constraints: a^3-a^2*b+a*b+a-b=0,b!=0,
RGB from KSW:
[z3  ,  (a^3-a^2*b+a*b+a-b)*z1]
[(b)*z1+(a^2+1)*z2  ,  (a^5*b^2-2*a^5*b-a^4*b^3+a^4*b^2+a^4*b+a^4+2*a^3*b^3-a^3*b^2-4*a^3*b-3*a^2*b^3+3*a^2*b^2+2*a^2*b+a^2+2*a*b^3-a*b^2-2*a*b-b^3+b^2)*z2+(a^6*b^2-2*a^6*b-a^5*b^3+a^5*b^2+a^5*b+a^5+2*a^4*b^3-2*a^4*b^2-2*a^4*b-2*a^3*b^3+2*a^3*b^2+a^3*b+a^3+a^2*b^2+a*b^3-a*b^2-a*b-b^3+b^2)*z3]
[(a)*z1+(a^2-a+1)*z2  ,  (-a^3+a^2*b-a*b-a+b)*z1+(a^5*b^2-3*a^5*b+a^5-a^4*b^3+2*a^4*b^2+a^4*b+a^4+2*a^3*b^3-3*a^3*b^2-5*a^3*b+a^3-3*a^2*b^3+6*a^2*b^2+2*a^2*b+a^2+2*a*b^3-3*a*b^2-3*a*b-b^3+2*b^2)*z2+(a^6*b^2-3*a^6*b+a^6-a^5*b^3+2*a^5*b^2+a^5*b+a^5+2*a^4*b^3-4*a^4*b^2-2*a^4*b-2*a^3*b^3+4*a^3*b^2+a^3*b+a^3+a^2*b^2-a^2*b-a^2+a*b^3-2*a*b^2-a*b-b^3+2*b^2)*z3]

Module Groebner basis: 
[z3, (a^3-a^2*b+a*b+a-b)*z1], 
[(b)*z1+(a^2+1)*z2 , (a^5*b^2-2*a^5*b-a^4*b^3+a^4*b^2+a^4*b+a^4+2*a^3*b^3-a^3*b^2-4*a^3*b-3*a^2*b^3+3*a^2*b^2+2*a^2*b+a^2+2*a*b^3-a*b^2-2*a*b-b^3+b^2)*z2+(a^6*b^2-2*a^6*b-a^5*b^3+a^5*b^2+a^5*b+a^5+2*a^4*b^3-2*a^4*b^2-2*a^4*b-2*a^3*b^3+2*a^3*b^2+a^3*b+a^3+a^2*b^2+a*b^3-a*b^2-a*b-b^3+b^2)*z3].

LPP Set of Module Groebner Basis under specialization:
[ z3 ]
[ z1 ]

Branch 3:
constraints: b=0,a=0,
RGB from KSW:
[z3  ,  (a-b)*z1+(-a)*z2+(-a^2)*z3]
[z2  ,  (b)*z1+(a^2)*z2+(a^3)*z3]

Module Groebner basis: 
[z3, (a-b)*z1+(-a)*z2+(-a^2)*z3], 
[z2 , (b)*z1+(a^2)*z2+(a^3)*z3].

LPP Set of Module Groebner Basis under specialization:
[ z3 ]
[ z2 ]

Branch 4:
constraints: b=0,a^2+1=0,a!=0,
RGB from KSW:
[z3  ,  (a^3-a^2*b+a*b+a-b)*z2+(a^4-a^3*b+a^2*b-b-1)*z3]
[z1-z2  ,  (-a^2-1)*z1+(2*a^4-2*a^2*b^2+a^2*b+3*a^2+2*a*b^2+a*b-2*b^2-b+1)*z2+(2*a^5-2*a^3*b^2+a^3*b+a^3+2*a^2*b^2+a^2*b-2*a*b-a-2*b^2-b)*z3]

Module Groebner basis: 
[z3, (a^3-a^2*b+a*b+a-b)*z2+(a^4-a^3*b+a^2*b-b-1)*z3], 
[z1-z2 , (-a^2-1)*z1+(2*a^4-2*a^2*b^2+a^2*b+3*a^2+2*a*b^2+a*b-2*b^2-b+1)*z2+(2*a^5-2*a^3*b^2+a^3*b+a^3+2*a^2*b^2+a^2*b-2*a*b-a-2*b^2-b)*z3].

LPP Set of Module Groebner Basis under specialization:
[ z3 ]
[ z1 ]

Branch 5:
constraints: b=0,-a^3-a!=0,a^2+1!=0,a!=0,
RGB from KSW:
[(a^2+1)*z2+(a^3)*z3  ,  (b)*z1]
[(a)*z1+(-a)*z2+(-a^2+1)*z3  ,  (-b)*z1]
[z1*z2-z2^2+(-2*a)*z2*z3+(-a^2)*z3^2  ,  (b)*z1^2+(-b)*z1*z2+(-a^2*b+a*b-b)*z2^2+(-2*a^2*b^2+3*a^2*b+2*a*b^2-2*b^2)*z2*z3+(a^4*b-2*a^3*b^2+2*a^3*b+2*a^2*b^2-a^2*b-a*b-2*b^2+b)*z3^2]

Module Groebner basis: 
[(a^2+1)*z2+(a^3)*z3, (b)*z1], 
[(a)*z1+(-a)*z2+(-a^2+1)*z3 , (-b)*z1].

LPP Set of Module Groebner Basis under specialization:
[ z2 ]
[ z1 ]




Comprehensive Groebner Basis: 

(a^3-a^2*b+a*b+a-b)*z2+(a^4-a^3*b+a^2*b-b)*z3,
(b)*z1+(a^2+1)*z2+(a^3)*z3,
(b)*z1+(a^5*b^2-2*a^5*b-a^4*b^3+a^4*b^2+a^4*b+a^4+2*a^3*b^3-a^3*b^2-4*a^3*b-3*a^2*b^3+3*a^2*b^2+2*a^2*b+2*a^2+2*a*b^3-a*b^2-2*a*b-b^3+b^2+1)*z2+(a^6*b^2-2*a^6*b-a^5*b^3+a^5*b^2+a^5*b+a^5+2*a^4*b^3-2*a^4*b^2-2*a^4*b-2*a^3*b^3+2*a^3*b^2+a^3*b+a^3+a^2*b^2+a*b^3-a*b^2-a*b-b^3+b^2)*z3,
(a-b)*z1+(-a)*z2+(-a^2+1)*z3,
(a^2)*z1+(-2*a^4+2*a^2*b^2-a^2*b-3*a^2-2*a*b^2-a*b+2*b^2+b)*z2+(-2*a^5+2*a^3*b^2-a^3*b-a^3-2*a^2*b^2-a^2*b+2*a*b+a+2*b^2+b)*z3,
(a^3-a^2*b+a*b+a-b)*z1+z3.




Size is: 6.

================ Algorithm 1 =====================

---------------------

M_1

M = [

(a^3-a^2*b+a*b+a-b)*z2+(a^4-a^3*b+a^2*b-b)*z3,
(b)*z1+(a^2+1)*z2+(a^3)*z3,
(a-b)*z1+(-a)*z2+(-a^2+1)*z3.

].

Size is: 3.

It is comprehensive and minimal.
---------------------

M_2

M = [

(a^3-a^2*b+a*b+a-b)*z2+(a^4-a^3*b+a^2*b-b)*z3,
(b)*z1+(a^2+1)*z2+(a^3)*z3,
(a^2)*z1+(-2*a^4+2*a^2*b^2-a^2*b-3*a^2-2*a*b^2-a*b+2*b^2+b)*z2+(-2*a^5+2*a^3*b^2-a^3*b-a^3-2*a^2*b^2-a^2*b+2*a*b+a+2*b^2+b)*z3,
(a^3-a^2*b+a*b+a-b)*z1+z3.

].

Size is: 4.

It is comprehensive and minimal.
---------------------

M_3

M = [

(a^3-a^2*b+a*b+a-b)*z2+(a^4-a^3*b+a^2*b-b)*z3,
(b)*z1+(a^5*b^2-2*a^5*b-a^4*b^3+a^4*b^2+a^4*b+a^4+2*a^3*b^3-a^3*b^2-4*a^3*b-3*a^2*b^3+3*a^2*b^2+2*a^2*b+2*a^2+2*a*b^3-a*b^2-2*a*b-b^3+b^2+1)*z2+(a^6*b^2-2*a^6*b-a^5*b^3+a^5*b^2+a^5*b+a^5+2*a^4*b^3-2*a^4*b^2-2*a^4*b-2*a^3*b^3+2*a^3*b^2+a^3*b+a^3+a^2*b^2+a*b^3-a*b^2-a*b-b^3+b^2)*z3,
(a-b)*z1+(-a)*z2+(-a^2+1)*z3.

].

Size is: 3.

It is comprehensive and minimal.
---------------------

M_4

M = [

(a^3-a^2*b+a*b+a-b)*z2+(a^4-a^3*b+a^2*b-b)*z3,
(b)*z1+(a^5*b^2-2*a^5*b-a^4*b^3+a^4*b^2+a^4*b+a^4+2*a^3*b^3-a^3*b^2-4*a^3*b-3*a^2*b^3+3*a^2*b^2+2*a^2*b+2*a^2+2*a*b^3-a*b^2-2*a*b-b^3+b^2+1)*z2+(a^6*b^2-2*a^6*b-a^5*b^3+a^5*b^2+a^5*b+a^5+2*a^4*b^3-2*a^4*b^2-2*a^4*b-2*a^3*b^3+2*a^3*b^2+a^3*b+a^3+a^2*b^2+a*b^3-a*b^2-a*b-b^3+b^2)*z3,
(a^2)*z1+(-2*a^4+2*a^2*b^2-a^2*b-3*a^2-2*a*b^2-a*b+2*b^2+b)*z2+(-2*a^5+2*a^3*b^2-a^3*b-a^3-2*a^2*b^2-a^2*b+2*a*b+a+2*b^2+b)*z3,
(a^3-a^2*b+a*b+a-b)*z1+z3.

].

Size is: 4.

It is comprehensive and minimal.

========================= Algorithm 3 ======================

C = [

(a^3-a^2*b+a*b+a-b)*z2+(a^4-a^3*b+a^2*b-b)*z3
(b)*z1+(a^2+1)*z2+(a^3)*z3
(a-b)*z1+(-a)*z2+(-a^2+1)*z3.

].


Size is: 3.

It is comprehensive and minimal.
=================================
Compare MCGBs with CCGB:

Consider M_1:
M_1

M = [

(a^3-a^2*b+a*b+a-b)*z2+(a^4-a^3*b+a^2*b-b)*z3,
(b)*z1+(a^2+1)*z2+(a^3)*z3,
(a-b)*z1+(-a)*z2+(-a^2+1)*z3.

].

Size is: 3.

CCGB

C = [

(a^3-a^2*b+a*b+a-b)*z2+(a^4-a^3*b+a^2*b-b)*z3
(b)*z1+(a^2+1)*z2+(a^3)*z3
(a-b)*z1+(-a)*z2+(-a^2+1)*z3.

].


Size is: 3.

Polys in M_1 but not in CCGB:


Polys in CCGB but not in M_1:

--------------------

Consider M_2:
M_2

M = [

(a^3-a^2*b+a*b+a-b)*z2+(a^4-a^3*b+a^2*b-b)*z3,
(b)*z1+(a^2+1)*z2+(a^3)*z3,
(a^2)*z1+(-2*a^4+2*a^2*b^2-a^2*b-3*a^2-2*a*b^2-a*b+2*b^2+b)*z2+(-2*a^5+2*a^3*b^2-a^3*b-a^3-2*a^2*b^2-a^2*b+2*a*b+a+2*b^2+b)*z3,
(a^3-a^2*b+a*b+a-b)*z1+z3.

].

Size is: 4.

CCGB

C = [

(a^3-a^2*b+a*b+a-b)*z2+(a^4-a^3*b+a^2*b-b)*z3
(b)*z1+(a^2+1)*z2+(a^3)*z3
(a-b)*z1+(-a)*z2+(-a^2+1)*z3.

].


Size is: 3.

Polys in M_2 but not in CCGB:
(a^2)*z1+(-2*a^4+2*a^2*b^2-a^2*b-3*a^2-2*a*b^2-a*b+2*b^2+b)*z2+(-2*a^5+2*a^3*b^2-a^3*b-a^3-2*a^2*b^2-a^2*b+2*a*b+a+2*b^2+b)*z3,
(a^3-a^2*b+a*b+a-b)*z1+z3,


Polys in CCGB but not in M_2:
(a-b)*z1+(-a)*z2+(-a^2+1)*z3,

--------------------

Consider M_3:
M_3

M = [

(a^3-a^2*b+a*b+a-b)*z2+(a^4-a^3*b+a^2*b-b)*z3,
(b)*z1+(a^5*b^2-2*a^5*b-a^4*b^3+a^4*b^2+a^4*b+a^4+2*a^3*b^3-a^3*b^2-4*a^3*b-3*a^2*b^3+3*a^2*b^2+2*a^2*b+2*a^2+2*a*b^3-a*b^2-2*a*b-b^3+b^2+1)*z2+(a^6*b^2-2*a^6*b-a^5*b^3+a^5*b^2+a^5*b+a^5+2*a^4*b^3-2*a^4*b^2-2*a^4*b-2*a^3*b^3+2*a^3*b^2+a^3*b+a^3+a^2*b^2+a*b^3-a*b^2-a*b-b^3+b^2)*z3,
(a-b)*z1+(-a)*z2+(-a^2+1)*z3.

].

Size is: 3.

CCGB

C = [

(a^3-a^2*b+a*b+a-b)*z2+(a^4-a^3*b+a^2*b-b)*z3
(b)*z1+(a^2+1)*z2+(a^3)*z3
(a-b)*z1+(-a)*z2+(-a^2+1)*z3.

].


Size is: 3.

Polys in M_3 but not in CCGB:
(b)*z1+(a^5*b^2-2*a^5*b-a^4*b^3+a^4*b^2+a^4*b+a^4+2*a^3*b^3-a^3*b^2-4*a^3*b-3*a^2*b^3+3*a^2*b^2+2*a^2*b+2*a^2+2*a*b^3-a*b^2-2*a*b-b^3+b^2+1)*z2+(a^6*b^2-2*a^6*b-a^5*b^3+a^5*b^2+a^5*b+a^5+2*a^4*b^3-2*a^4*b^2-2*a^4*b-2*a^3*b^3+2*a^3*b^2+a^3*b+a^3+a^2*b^2+a*b^3-a*b^2-a*b-b^3+b^2)*z3,


Polys in CCGB but not in M_3:
(b)*z1+(a^2+1)*z2+(a^3)*z3,

--------------------

Consider M_4:
M_4

M = [

(a^3-a^2*b+a*b+a-b)*z2+(a^4-a^3*b+a^2*b-b)*z3,
(b)*z1+(a^5*b^2-2*a^5*b-a^4*b^3+a^4*b^2+a^4*b+a^4+2*a^3*b^3-a^3*b^2-4*a^3*b-3*a^2*b^3+3*a^2*b^2+2*a^2*b+2*a^2+2*a*b^3-a*b^2-2*a*b-b^3+b^2+1)*z2+(a^6*b^2-2*a^6*b-a^5*b^3+a^5*b^2+a^5*b+a^5+2*a^4*b^3-2*a^4*b^2-2*a^4*b-2*a^3*b^3+2*a^3*b^2+a^3*b+a^3+a^2*b^2+a*b^3-a*b^2-a*b-b^3+b^2)*z3,
(a^2)*z1+(-2*a^4+2*a^2*b^2-a^2*b-3*a^2-2*a*b^2-a*b+2*b^2+b)*z2+(-2*a^5+2*a^3*b^2-a^3*b-a^3-2*a^2*b^2-a^2*b+2*a*b+a+2*b^2+b)*z3,
(a^3-a^2*b+a*b+a-b)*z1+z3.

].

Size is: 4.

CCGB

C = [

(a^3-a^2*b+a*b+a-b)*z2+(a^4-a^3*b+a^2*b-b)*z3
(b)*z1+(a^2+1)*z2+(a^3)*z3
(a-b)*z1+(-a)*z2+(-a^2+1)*z3.

].


Size is: 3.

Polys in M_4 but not in CCGB:
(b)*z1+(a^5*b^2-2*a^5*b-a^4*b^3+a^4*b^2+a^4*b+a^4+2*a^3*b^3-a^3*b^2-4*a^3*b-3*a^2*b^3+3*a^2*b^2+2*a^2*b+2*a^2+2*a*b^3-a*b^2-2*a*b-b^3+b^2+1)*z2+(a^6*b^2-2*a^6*b-a^5*b^3+a^5*b^2+a^5*b+a^5+2*a^4*b^3-2*a^4*b^2-2*a^4*b-2*a^3*b^3+2*a^3*b^2+a^3*b+a^3+a^2*b^2+a*b^3-a*b^2-a*b-b^3+b^2)*z3,
(a^2)*z1+(-2*a^4+2*a^2*b^2-a^2*b-3*a^2-2*a*b^2-a*b+2*b^2+b)*z2+(-2*a^5+2*a^3*b^2-a^3*b-a^3-2*a^2*b^2-a^2*b+2*a*b+a+2*b^2+b)*z3,
(a^3-a^2*b+a*b+a-b)*z1+z3,


Polys in CCGB but not in M_4:
(b)*z1+(a^2+1)*z2+(a^3)*z3,
(a-b)*z1+(-a)*z2+(-a^2+1)*z3,

--------------------


=================== RGB =================

RGB = [

(a^3-a^2*b+a*b+a-b)*z2+(a^4-a^3*b+a^2*b-b)*z3
(b)*z1+(a^2+1)*z2+(a^3)*z3
(a)*z1+(a^2-a+1)*z2+(a^3-a^2+1)*z3.

].


Size is: 3.

It is not comprehensive.
RGB is not a subset of CGB!
