The given ring is:
(0,v,u),(y,x),(dp(2),C)

F = {
y+(u)*x+(v), 
(u)*y+x+(v)
}.

E = {0}.

N = {}.

=============================


RGB is the CCGB.

----------------------------

C = [

f_1 = (u2-1)*x+(vu-v)
f_2 = y+(u)*x+(v).

].

Size is: 2.

It is comprehensive and minimal.
--------------------------

M_1

M = [

f_1 = (u2-1)*x+(vu-v),
f_2 = y+(u)*x+(v).

].

Size is: 2.

It is comprehensive and minimal.
The normal form is:

M = [

f_1 = (u2-1)*x+(vu-v),
f_2 = y+(u)*x+(v).

].

Size is: 2.

It is comprehensive and minimal.
==================================


Comprehensive Groebner Basis: 

f_1 = (u2-1)*x+(vu-v),
f_2 = y+(u)*x+(v).




Size is: 2.

--------------------------------------


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



