
+++++++++++++++++++++++++++++++++++++++

The given ring is:
(0,v,u),(z,y,x),(lp(3),C)

F = {
(u)*y+x, 
(v)*z+x+1
}.

E = {0}.

N = {}.


Module Comprehensive Groebner Systems: 

Branch 1:
constraints: u!=0,v!=0,
RGB from KSW:
[(u)*y+x  ,  0]
[(v)*z+x+1  ,  0]

Module Groebner basis: 
[(u)*y+x, 0], 
[(v)*z+x+1 , 0].

LPP Set of Module Groebner Basis under specialization:
[ y ]
[ z ]

Branch 2:
constraints: u=0,v!=0,
RGB from KSW:
[x  ,  (u)*y]
[(v)*z+1  ,  (-u)*y]

Module Groebner basis: 
[x, (u)*y], 
[(v)*z+1 , (-u)*y].

LPP Set of Module Groebner Basis under specialization:
[ x ]
[ z ]

Branch 3:
constraints: u=0,v=0,
RGB from KSW:
[1  ,  (v)*z+(-u)*y]

Module Groebner basis: 
[1 , (v)*z+(-u)*y].

LPP Set of Module Groebner Basis under specialization:
[ 1 ]

Branch 4:
constraints: v=0,u!=0,u!=0,
RGB from KSW:
[x+1  ,  (v)*z]
[(u)*y-1  ,  (-v)*z]

Module Groebner basis: 
[x+1, (v)*z], 
[(u)*y-1 , (-v)*z].

LPP Set of Module Groebner Basis under specialization:
[ x ]
[ y ]




Comprehensive Groebner Basis: 

(u)*y+x,
(v)*z+x+1,
(v)*z+(-u)*y+1.




Size is: 3.

================ Algorithm 1 =====================

---------------------

M_1

M = [

(u)*y+x,
(v)*z+x+1,
(v)*z+(-u)*y+1.

].

Size is: 3.

It is comprehensive and minimal.

========================= Algorithm 3 ======================

C = [

(u)*y+x
(v)*z+x+1
(v)*z+(-u)*y+1.

].


Size is: 3.

It is comprehensive and minimal.
=================================
Compare MCGBs with CCGB:

Consider M_1:
M_1

M = [

(u)*y+x,
(v)*z+x+1,
(v)*z+(-u)*y+1.

].

Size is: 3.

CCGB

C = [

(u)*y+x
(v)*z+x+1
(v)*z+(-u)*y+1.

].


Size is: 3.

Polys in M_1 but not in CCGB:


Polys in CCGB but not in M_1:

--------------------


=================== RGB =================

RGB = [

(u)*y+x
(v)*z+x+1.

].


Size is: 2.

It is not comprehensive.
RGB is a subset of CGB!
