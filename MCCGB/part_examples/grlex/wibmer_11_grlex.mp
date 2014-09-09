
+++++++++++++++++++++++++++++++++++++++

The given ring is:
(0,u(1),u(2)),(x),(dp(1),C)

F = {
(u(1))*x, 
(u(2)^2-1)*x^2+x
}.

E = {0}.

N = {}.


Module Comprehensive Groebner Systems: 

Branch 1:
constraints: u(1)!=0,
RGB from KSW:
[(u(1))*x  ,  0]
[(u(2)^2-1)*x^2+x  ,  0]

Module Groebner basis: 
[(u(1))*x , 0].

LPP Set of Module Groebner Basis under specialization:
[ x ]

Branch 2:
constraints: u(1)=0,u(2)-1!=0,u(2)+1!=0,
RGB from KSW:
[(u(2)^2-1)*x^2+x  ,  0]

Module Groebner basis: 
[(u(2)^2-1)*x^2+x , 0].

LPP Set of Module Groebner Basis under specialization:
[ x^2 ]

Branch 3:
constraints: u(2)-1=0,u(1)=0,
RGB from KSW:
[x  ,  (u(2)^2-1)*x^2]

Module Groebner basis: 
[x , (u(2)^2-1)*x^2].

LPP Set of Module Groebner Basis under specialization:
[ x ]

Branch 4:
constraints: u(2)+1=0,u(1)=0,
RGB from KSW:
[x  ,  (u(2)^2-1)*x^2]

Module Groebner basis: 
[x , (u(2)^2-1)*x^2].

LPP Set of Module Groebner Basis under specialization:
[ x ]




Comprehensive Groebner Basis: 

(u(1))*x,
(u(2)^2-1)*x^2+x.




Size is: 2.

================ Algorithm 1 =====================

---------------------

M_1

M = [

(u(1))*x,
(u(2)^2-1)*x^2+x.

].

Size is: 2.

It is comprehensive and minimal.

========================= Algorithm 3 ======================

C = [

(u(1))*x
(u(2)^2-1)*x^2+x.

].


Size is: 2.

It is comprehensive and minimal.
=================================
Compare MCGBs with CCGB:

Consider M_1:
M_1

M = [

(u(1))*x,
(u(2)^2-1)*x^2+x.

].

Size is: 2.

CCGB

C = [

(u(1))*x
(u(2)^2-1)*x^2+x.

].


Size is: 2.

Polys in M_1 but not in CCGB:


Polys in CCGB but not in M_1:

--------------------


=================== RGB =================

RGB = [

(u(1))*x
(u(2)^2-1)*x^2+x.

].


Size is: 2.

It is comprehensive and minimal.
RGB is a subset of CGB!
