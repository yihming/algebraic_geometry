
+++++++++++++++++++++++++++++++++++++++

The given ring is:
(0,a,b),(x),(dp(1),C)

F = {
(a)*x, 
(b)*x
}.

E = {0}.

N = {(a+b-1)}.


Module Comprehensive Groebner Systems: 

Branch 1:
constraints: a+b-1!=0,b!=0,
RGB from KSW:
[(b)*x  ,  0]
[(a)*x  ,  0]

Module Groebner basis: 
[(b)*x , 0].

LPP Set of Module Groebner Basis under specialization:
[ x ]

Branch 2:
constraints: b=0,a-1!=0,a!=0,
RGB from KSW:
[(a)*x  ,  0]

Module Groebner basis: 
[(a)*x , 0].

LPP Set of Module Groebner Basis under specialization:
[ x ]

Branch 3:
constraints: b=0,a=0,
RGB from KSW:
[   ].

Module Groebner basis: 
[  ].


LPP Set of Module Groebner Basis under specialization:
[  ].




Comprehensive Groebner Basis: 

(b)*x,
(a)*x.




Size is: 2.

================ Algorithm 1 =====================

---------------------

M_1

M = [

(b)*x,
(a)*x.

].

Size is: 2.

It is comprehensive and minimal.

========================= Algorithm 3 ======================

C = [

(b)*x
(a)*x.

].


Size is: 2.

It is comprehensive and minimal.
=================================
Compare MCGBs with CCGB:

Consider M_1:
M_1

M = [

(b)*x,
(a)*x.

].

Size is: 2.

CCGB

C = [

(b)*x
(a)*x.

].


Size is: 2.

Polys in M_1 but not in CCGB:


Polys in CCGB but not in M_1:

--------------------


=================== RGB =================

RGB = [

(b)*x
(a)*x.

].


Size is: 2.

It is comprehensive and minimal.
RGB is a subset of CGB!
