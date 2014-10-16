The given ring is:
(0,a,b,c),(x,y),(Dp(2),C)

F = {
(a)*x+(-b), 
(b)*y+(-a), 
(c)*x2-y, 
(c)*y2-x
}.

E = {0}.

N = {}.

=============================


RGB is not the CCGB.

--------------------------------

RGB = [

f_1 = (bc2-b)
f_2 = (ac2-a)
f_3 = (-a3+b3c)
f_4 = (a3c-b3)
f_5 = (a6-b6)
f_6 = (b)*y+(-a)
f_7 = (a2)*y+(-b2c)
f_8 = (b)*x+(-ac)*y
f_9 = (a)*x+(-b)
f_10 = (c)*y2-x
f_11 = (a)*y2+(-bc)
f_12 = (c)*x2-y
f_13 = x3-y3.

].


Size is : 13.

It is comprehensive, but not minimal.

------------------------------

C = [

f_1 = (bc2-b)
f_3 = (-a3+b3c)
f_6 = (b)*y+(-a)
f_8 = (b)*x+(-ac)*y
f_10 = (c)*y2-x
f_12 = (c)*x2-y.

].


Size is: 6.

It is comprehensive and minimal.
--------------------------

M_1

M = [

f_1 = (bc2-b),
f_3 = (-a3+b3c),
f_6 = (b)*y+(-a),
f_8 = (b)*x+(-ac)*y,
f_10 = (c)*y2-x,
f_12 = (c)*x2-y.

].

Size is: 6.

It is comprehensive and minimal.
The normal form is:

M = [

f_1 = (bc2-b),
f_3 = (-a3+b3c),
f_6 = (b)*y+(-a),
f_8 = (b)*x+(-ac)*y,
f_10 = (c)*y2-x,
f_12 = (c)*x2-y.

].

Size is: 6.

It is comprehensive and minimal.
==================================


Comprehensive Groebner Basis: 

f_1 = (bc2-b),
f_2 = (ac2-a),
f_3 = (-a3+b3c),
f_6 = (b)*y+(-a),
f_8 = (b)*x+(-ac)*y,
f_10 = (c)*y2-x,
f_12 = (c)*x2-y.




Size is: 7.

--------------------------------------


Module Comprehensive Groebner Systems: 

Branch 1:
constraints: b*c^2-b!=0,
RGB from KSW:
[(b*c^2-b)  ,  0]
[(a*c^2-a)  ,  0]
[(-a^3+b^3*c)  ,  0]
[(a^3*c-b^3)  ,  0]
[(a^6-b^6)  ,  0]
[(b)*y+(-a)  ,  0]
[(a^2)*y+(-b^2*c)  ,  0]
[(b)*x+(-a*c)*y  ,  0]
[(a)*x+(-b)  ,  0]
[(c)*y^2-x  ,  0]
[(a)*y^2+(-b*c)  ,  0]
[(c)*x^2-y  ,  0]
[x^3-y^3  ,  0]

Module Groebner basis: 
[(b*c^2-b) , 0].

LPP Set of Module Groebner Basis under specialization:
[ 1 ]

Branch 2:
constraints: b*c^2-b=0,a*c^2-a!=0,
RGB from KSW:
[(a*c^2-a)  ,  0]
[(-a^3+b^3*c)  ,  0]
[(a^3*c-b^3)  ,  0]
[(a^6-b^6)  ,  0]
[(b)*y+(-a)  ,  0]
[(a^2)*y+(-b^2*c)  ,  0]
[(b)*x+(-a*c)*y  ,  0]
[(a)*x+(-b)  ,  0]
[(c)*y^2-x  ,  0]
[(a)*y^2+(-b*c)  ,  0]
[(c)*x^2-y  ,  0]
[x^3-y^3  ,  0]

Module Groebner basis: 
[(a*c^2-a) , 0].

LPP Set of Module Groebner Basis under specialization:
[ 1 ]

Branch 3:
constraints: b*c^2-b=0,a*c^2-a=0,b^3*c-a^3!=0,
RGB from KSW:
[(-a^3+b^3*c)  ,  0]
[(a^3*c-b^3)  ,  0]
[(a^6-b^6)  ,  0]
[(b)*y+(-a)  ,  0]
[(a^2)*y+(-b^2*c)  ,  0]
[(b)*x+(-a*c)*y  ,  0]
[(a)*x+(-b)  ,  0]
[(c)*y^2-x  ,  0]
[(a)*y^2+(-b*c)  ,  0]
[(c)*x^2-y  ,  0]
[x^3-y^3  ,  0]

Module Groebner basis: 
[(-a^3+b^3*c) , 0].

LPP Set of Module Groebner Basis under specialization:
[ 1 ]

Branch 4:
constraints: b*c^2-b=0,a*c^2-a=0,b^3*c-a^3=0,a^3*c-b^3=0,a^6-b^6=0,b!=0,
RGB from KSW:
[(b)*y+(-a)  ,  0]
[(a^2)*y+(-b^2*c)  ,  0]
[(b)*x+(-a*c)*y  ,  0]
[(a)*x+(-b)  ,  0]
[(c)*y^2-x  ,  0]
[(a)*y^2+(-b*c)  ,  0]
[(c)*x^2-y  ,  0]
[x^3-y^3  ,  0]

Module Groebner basis: 
[(b)*y+(-a), 0], 
[(b)*x+(-a*c)*y , 0].

LPP Set of Module Groebner Basis under specialization:
[ y ]
[ x ]

Branch 5:
constraints: b=0,a=0,c!=0,
RGB from KSW:
[(c)*y^2-x  ,  0]
[(c)*x^2-y  ,  0]
[x^3-y^3  ,  0]

Module Groebner basis: 
[(c)*y^2-x, 0], 
[(c)*x^2-y , 0].

LPP Set of Module Groebner Basis under specialization:
[ y^2 ]
[ x^2 ]

Branch 6:
constraints: c=0,b=0,a=0,
RGB from KSW:
[y  ,  (-c)*x^2]
[x  ,  (-c)*y^2]

Module Groebner basis: 
[y, (-c)*x^2], 
[x , (-c)*y^2].

LPP Set of Module Groebner Basis under specialization:
[ y ]
[ x ]



