
+++++++++++++++++++++++++++++++++++++++

The given ring is:
(0,v,u),(x),(dp(1),C)

F = {
(u)*x, 
(v)*x
}.

E = {0}.

N = {}.


Module Comprehensive Groebner Systems: 

Branch 1:
constraints: u!=0,
RGB from KSW:
[(u)*x  ,  0]
[(v)*x  ,  0]

Module Groebner basis: 
[(u)*x , 0].

LPP Set of Module Groebner Basis under specialization:
[ x ]

Branch 2:
constraints: u=0,v!=0,
RGB from KSW:
[(v)*x  ,  0]

Module Groebner basis: 
[(v)*x , 0].

LPP Set of Module Groebner Basis under specialization:
[ x ]

Branch 3:
constraints: u=0,v=0,
RGB from KSW:
[   ].

Module Groebner basis: 
[  ].


LPP Set of Module Groebner Basis under specialization:
[  ].




Comprehensive Groebner Basis: 

(u)*x,
(v)*x.




Size is: 2.

================ Algorithm 1 =====================

---------------------

M_1

M = [

(u)*x,
(v)*x.

].

Size is: 2.

It is comprehensive and minimal.

========================= Algorithm 3 ======================

C = [

(u)*x
(v)*x.

].


Size is: 2.

It is comprehensive and minimal.
=================================
Compare MCGBs with CCGB:

Consider M_1:
M_1

M = [

(u)*x,
(v)*x.

].

Size is: 2.

CCGB

C = [

(u)*x
(v)*x.

].


Size is: 2.

Polys in M_1 but not in CCGB:


Polys in CCGB but not in M_1:

--------------------


=================== RGB =================

RGB = [

(u)*x
(v)*x.

].


Size is: 2.

It is comprehensive and minimal.
RGB is a subset of CGB!
