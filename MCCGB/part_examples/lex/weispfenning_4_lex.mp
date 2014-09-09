
+++++++++++++++++++++++++++++++++++++++

The given ring is:
(0,v,u),(y,x),(lp(2),C)

F = {
y+(u)*x+(v), 
(u)*y+x+(v)
}.

E = {0}.

N = {}.


Module Comprehensive Groebner Systems: 

Branch 1:
constraints: u-1!=0,u+1!=0,
RGB from KSW:
[(u^2-1)*x+(v*u-v)  ,  0]
[y+(u)*x+(v)  ,  0]

Module Groebner basis: 
[(u^2-1)*x+(v*u-v), 0], 
[y+(u)*x+(v) , 0].

LPP Set of Module Groebner Basis under specialization:
[ x ]
[ y ]

Branch 2:
constraints: u+1=0,2*v!=0,
RGB from KSW:
[(2*v)  ,  (-u^2+1)*x+(-v*u-v)]
[2*y-2*x  ,  (u^2+2*u+1)*x+(v*u+v)]

Module Groebner basis: 
[(2*v) , (-u^2+1)*x+(-v*u-v)].

LPP Set of Module Groebner Basis under specialization:
[ 1 ]

Branch 3:
constraints: u+1=0,v=0,
RGB from KSW:
[y-x  ,  (u+1)*x+(v)]

Module Groebner basis: 
[y-x , (u+1)*x+(v)].

LPP Set of Module Groebner Basis under specialization:
[ y ]

Branch 4:
constraints: u-1=0,
RGB from KSW:
[y+x+(v)  ,  (u-1)*x]

Module Groebner basis: 
[y+x+(v) , (u-1)*x].

LPP Set of Module Groebner Basis under specialization:
[ y ]




Comprehensive Groebner Basis: 

(u2-1)*x+(vu-v),
y+(u)*x+(v).




Size is: 2.

================ Algorithm 1 =====================

---------------------

M_1

M = [

(u2-1)*x+(vu-v),
y+(u)*x+(v).

].

Size is: 2.

It is comprehensive and minimal.

========================= Algorithm 3 ======================

C = [

(u2-1)*x+(vu-v)
y+(u)*x+(v).

].


Size is: 2.

It is comprehensive and minimal.
=================================
Compare MCGBs with CCGB:

Consider M_1:
M_1

M = [

(u2-1)*x+(vu-v),
y+(u)*x+(v).

].

Size is: 2.

CCGB

C = [

(u2-1)*x+(vu-v)
y+(u)*x+(v).

].


Size is: 2.

Polys in M_1 but not in CCGB:


Polys in CCGB but not in M_1:

--------------------


=================== RGB =================

RGB = [

(u2-1)*x+(vu-v)
y+(u)*x+(v).

].


Size is: 2.

It is comprehensive and minimal.
RGB is a subset of CGB!
