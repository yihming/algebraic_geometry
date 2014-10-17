The given ring is:
(0,a,b,c,d),(x,y),(lp(2),C)

F = {
(a)*x+(b), 
(c)*x+(d)
}.

E = {0}.

N = {}.

=============================


RGB is the CCGB.

----------------------------

C = [

f_1 = (ad-bc)
f_2 = (c)*x+(d)
f_3 = (a)*x+(b).

].

Size is: 3.

It is comprehensive and minimal.
--------------------------

M_1

M = [

f_1 = (ad-bc),
f_2 = (c)*x+(d),
f_3 = (a)*x+(b).

].

Size is: 3.

It is comprehensive and minimal.
The normal form is:

M = [

f_1 = (ad-bc),
f_2 = (c)*x+(d),
f_3 = (a)*x+(b).

].

Size is: 3.

It is comprehensive and minimal.
==================================


Comprehensive Groebner Basis: 

f_1 = (ad-bc),
f_2 = (c)*x+(d),
f_3 = (a)*x+(b).




Size is: 3.

--------------------------------------


Module Comprehensive Groebner Systems: 

Branch 1:
constraints: a*d-b*c!=0,
RGB from KSW:
[(a*d-b*c)  ,  0]
[(c)*x+(d)  ,  0]
[(a)*x+(b)  ,  0]

Module Groebner basis: 
[(a*d-b*c) , 0].

LPP Set of Module Groebner Basis under specialization:
[ 1 ]

Branch 2:
constraints: a*d-b*c=0,c!=0,
RGB from KSW:
[(c)*x+(d)  ,  0]
[(a)*x+(b)  ,  0]

Module Groebner basis: 
[(c)*x+(d) , 0].

LPP Set of Module Groebner Basis under specialization:
[ x ]

Branch 3:
constraints: c=0,a*d=0,d!=0,
RGB from KSW:
[(d)  ,  (c)*x]
[(a)*x+(b)  ,  0]

Module Groebner basis: 
[(d) , (c)*x].

LPP Set of Module Groebner Basis under specialization:
[ 1 ]

Branch 4:
constraints: d=0,c=0,a!=0,
RGB from KSW:
[(a)*x+(b)  ,  0]

Module Groebner basis: 
[(a)*x+(b) , 0].

LPP Set of Module Groebner Basis under specialization:
[ x ]

Branch 5:
constraints: d=0,c=0,a=0,b!=0,
RGB from KSW:
[(b)  ,  (a)*x]

Module Groebner basis: 
[(b) , (a)*x].

LPP Set of Module Groebner Basis under specialization:
[ 1 ]

Branch 6:
constraints: d=0,c=0,b=0,a=0,
RGB from KSW:
[   ].

Module Groebner basis: 
[  ].


LPP Set of Module Groebner Basis under specialization:
[  ].



