The given ring is:
(0,b,c,d,e,f),(x,y),(dp(2),C)

F = {
x2+(2c)*xy+(b)*y2+(2d)*x+(2e)*y+(f), 
2*x+(2c)*y+(2d), 
(2c)*x+(2b)*y+(2e)
}.

E = {0}.

N = {}.

=============================


RGB is not the CCGB.

--------------------------------

RGB = [

f_1 = (bd2-bf+c2f-2cde+e2)
f_2 = (cd-e)*y+(d2-f)
f_3 = (bd-ce)*y+(-cf+de)
f_4 = (-b+c2)*y+(cd-e)
f_7 = x+(c)*y+(d).

].


Size is : 5.

It is comprehensive, but not minimal.

------------------------------

C = [

f_1 = (bd2-bf+c2f-2cde+e2)
f_2 = (cd-e)*y+(d2-f)
f_4 = (-b+c2)*y+(cd-e)
f_7 = x+(c)*y+(d).

].


Size is: 4.

It is comprehensive and minimal.
--------------------------

M_1

M = [

f_1 = (bd2-bf+c2f-2cde+e2),
f_2 = (cd-e)*y+(d2-f),
f_4 = (-b+c2)*y+(cd-e),
f_7 = x+(c)*y+(d).

].

Size is: 4.

It is comprehensive and minimal.
==================================


Comprehensive Groebner Basis: 

f_1 = (bd2-bf+c2f-2cde+e2),
f_2 = (cd-e)*y+(d2-f),
f_4 = (-b+c2)*y+(cd-e),
f_5 = (-bf+c2f)*y+(cdf-ef),
f_6 = (c2d-ce)*y+(cd2-cf),
f_7 = x+(c)*y+(d).




Size is: 6.

--------------------------------------


Module Comprehensive Groebner Systems: 

Branch 1:
constraints: b*d^2-2*c*d*e+c^2*f+e^2-b*f!=0,
RGB from KSW:
[(b*d^2-b*f+c^2*f-2*c*d*e+e^2)  ,  0]
[(c*d-e)*y+(d^2-f)  ,  0]
[(b*d-c*e)*y+(-c*f+d*e)  ,  0]
[(-b+c^2)*y+(c*d-e)  ,  0]
[x+(c)*y+(d)  ,  0]

Module Groebner basis: 
[(b*d^2-b*f+c^2*f-2*c*d*e+e^2) , 0].

LPP Set of Module Groebner Basis under specialization:
[ 1 ]

Branch 2:
constraints: b*d^2-2*c*d*e+c^2*f+e^2-b*f=0,-c*d+e!=0,
RGB from KSW:
[(c*d-e)*y+(d^2-f)  ,  0]
[(b*d-c*e)*y+(-c*f+d*e)  ,  0]
[(-b+c^2)*y+(c*d-e)  ,  0]
[x+(c)*y+(d)  ,  0]

Module Groebner basis: 
[(c*d-e)*y+(d^2-f), 0], 
[x+(c)*y+(d) , 0].

LPP Set of Module Groebner Basis under specialization:
[ y ]
[ x ]

Branch 3:
constraints: c*d-e=0,b*d^2+c^2*f-e^2-b*f=0,c^3*f+b*d*e-c*e^2-b*c*f=0,d*e-c*f!=0,
RGB from KSW:
[(-c*f+d*e)  ,  (c^2*d-c*e)*y+(c*d^2-d*e)]
[(d^2-f)  ,  (c*d-e)*y]
[(c^2*f-e^2)  ,  (-b*c*d+b*e)*y+(-2*c*d*e+2*e^2)]
[(-b*f+e^2)*y  ,  (b*c*d-b*e)*y^2+(2*c*d*e-2*e^2)*y+(c*d*f-e*f)]
[(b*d-c*e)*y  ,  (-c^2*d+c*e)*y+(-c*d^2+d*e)]
[(-b+c^2)*y  ,  (c*d-e)]
[x+(c)*y+(d)  ,  0]

Module Groebner basis: 
[(-c*f+d*e) , (c^2*d-c*e)*y+(c*d^2-d*e)].

LPP Set of Module Groebner Basis under specialization:
[ 1 ]

Branch 4:
constraints: d*e-c*f=0,c*d-e=0,c^2*f-e^2=0,b*d^2-b*f=0,d^2-f!=0,
RGB from KSW:
[(d^2-f)  ,  (c*d-e)*y]
[(-b*f+e^2)*y  ,  (b*c*d-b*e)*y^2+(2*c*d*e-2*e^2)*y+(c*d*f-e*f)]
[(b*d-c*e)*y  ,  (-c^2*d+c*e)*y+(-c*d^2+d*e)]
[(-b+c^2)*y  ,  (c*d-e)]
[x+(c)*y+(d)  ,  0]

Module Groebner basis: 
[(d^2-f) , (c*d-e)*y].

LPP Set of Module Groebner Basis under specialization:
[ 1 ]

Branch 5:
constraints: d*e-c*f=0,d^2-f=0,c*d-e=0,c^2*f-e^2=0,-e^2+b*f!=0,
RGB from KSW:
[(-b*f+e^2)*y  ,  (c^2*f-e^2)*y+(c*d*f-e*f)]
[(b*d-c*e)*y  ,  (-c*f+d*e)]
[(-b+c^2)*y  ,  (c*d-e)]
[x+(c)*y+(d)  ,  0]

Module Groebner basis: 
[(-b*f+e^2)*y, (c^2*f-e^2)*y+(c*d*f-e*f)], 
[x+(c)*y+(d) , 0].

LPP Set of Module Groebner Basis under specialization:
[ y ]
[ x ]

Branch 6:
constraints: e^2-b*f=0,d*e-c*f=0,d^2-f=0,c*d-e=0,b*d-c*e=0,c^2*f-b*f=0,c^2*e-b*e=0,c^2-b!=0,
RGB from KSW:
[(-b+c^2)*y  ,  (c*d-e)]
[x+(c)*y+(d)  ,  0]

Module Groebner basis: 
[(-b+c^2)*y, (c*d-e)], 
[x+(c)*y+(d) , 0].

LPP Set of Module Groebner Basis under specialization:
[ y ]
[ x ]

Branch 7:
constraints: e^2-b*f=0,d*e-c*f=0,d^2-f=0,c*d-e=0,b*d-c*e=0,c^2-b=0,
RGB from KSW:
[x+(c)*y+(d)  ,  0]

Module Groebner basis: 
[x+(c)*y+(d) , 0].

LPP Set of Module Groebner Basis under specialization:
[ x ]



