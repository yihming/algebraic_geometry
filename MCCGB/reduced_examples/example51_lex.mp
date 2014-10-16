The given ring is:
(0,a,b,c),(x,y),(lp(2),C)

F = {
(a)*x+(-b), 
(b)*y+(-a), 
(c)*x2-y, 
-x+(c)*y2
}.

E = {0}.

N = {}.

=============================


RGB is not the CCGB.

--------------------------------

RGB = [

f_1 = (bc2-b)
f_2 = (ac2-a)
f_3 = (a3-b3c)
f_4 = (b)*y+(-a)
f_5 = (a2)*y+(-b2c)
f_6 = (a)*y2+(-bc)
f_7 = (c3)*y4-y
f_8 = x+(-c)*y2.

].


Size is : 8.

It is comprehensive, but not minimal.

------------------------------

C = [

f_1 = (bc2-b)
f_3 = (a3-b3c)
f_4 = (b)*y+(-a)
f_7 = (c3)*y4-y
f_8 = x+(-c)*y2.

].


Size is: 5.

It is comprehensive and minimal.
--------------------------

M_1

M = [

f_1 = (bc2-b),
f_3 = (a3-b3c),
f_4 = (b)*y+(-a),
f_7 = (c3)*y4-y,
f_8 = x+(-c)*y2.

].

Size is: 5.

It is comprehensive and minimal.
The normal form is:

M = [

f_1 = (bc2-b),
f_3 = (a3-b3c),
f_4 = (b)*y+(-a),
f_7 = (c3)*y4-y,
f_8 = x+(-c)*y2.

].

Size is: 5.

It is comprehensive and minimal.
==================================


Comprehensive Groebner Basis: 

f_1 = (bc2-b),
f_2 = (ac2-a),
f_3 = (a3-b3c),
f_4 = (b)*y+(-a),
f_7 = (c3)*y4-y,
f_8 = x+(-c)*y2.




Size is: 6.

--------------------------------------


Module Comprehensive Groebner Systems: 

Branch 1:
constraints: b*c^2-b!=0,
RGB from KSW:
[(b*c^2-b)  ,  0]
[(a*c^2-a)  ,  0]
[(a^3-b^3*c)  ,  0]
[(b)*y+(-a)  ,  0]
[(a^2)*y+(-b^2*c)  ,  0]
[(a)*y^2+(-b*c)  ,  0]
[(c^3)*y^4-y  ,  0]
[x+(-c)*y^2  ,  0]

Module Groebner basis: 
[(b*c^2-b) , 0].

LPP Set of Module Groebner Basis under specialization:
[ 1 ]

Branch 2:
constraints: b*c^2-b=0,a*c^2-a!=0,
RGB from KSW:
[(a*c^2-a)  ,  0]
[(a^3-b^3*c)  ,  0]
[(b)*y+(-a)  ,  0]
[(a^2)*y+(-b^2*c)  ,  0]
[(a)*y^2+(-b*c)  ,  0]
[(c^3)*y^4-y  ,  0]
[x+(-c)*y^2  ,  0]

Module Groebner basis: 
[(a*c^2-a) , 0].

LPP Set of Module Groebner Basis under specialization:
[ 1 ]

Branch 3:
constraints: b*c^2-b=0,a*c^2-a=0,a^3-b^3*c!=0,
RGB from KSW:
[(a^3-b^3*c)  ,  0]
[(b)*y+(-a)  ,  0]
[(a^2)*y+(-b^2*c)  ,  0]
[(a)*y^2+(-b*c)  ,  0]
[(c^3)*y^4-y  ,  0]
[x+(-c)*y^2  ,  0]

Module Groebner basis: 
[(a^3-b^3*c) , 0].

LPP Set of Module Groebner Basis under specialization:
[ 1 ]

Branch 4:
constraints: b*c^2-b=0,a*c^2-a=0,a^3-b^3*c=0,b!=0,
RGB from KSW:
[(b)*y+(-a)  ,  0]
[(a^2)*y+(-b^2*c)  ,  0]
[(a)*y^2+(-b*c)  ,  0]
[(c^3)*y^4-y  ,  0]
[x+(-c)*y^2  ,  0]

Module Groebner basis: 
[(b)*y+(-a), 0], 
[x+(-c)*y^2 , 0].

LPP Set of Module Groebner Basis under specialization:
[ y ]
[ x ]

Branch 5:
constraints: b=0,a=0,c!=0,
RGB from KSW:
[(c^3)*y^4-y  ,  0]
[x+(-c)*y^2  ,  0]

Module Groebner basis: 
[(c^3)*y^4-y, 0], 
[x+(-c)*y^2 , 0].

LPP Set of Module Groebner Basis under specialization:
[ y^4 ]
[ x ]

Branch 6:
constraints: c=0,b=0,a=0,
RGB from KSW:
[y  ,  (-c^3)*y^4]
[x  ,  (-c)*y^2]

Module Groebner basis: 
[y, (-c^3)*y^4], 
[x , (-c)*y^2].

LPP Set of Module Groebner Basis under specialization:
[ y ]
[ x ]



