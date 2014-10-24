The given ring is:
(0,b,c,d),(x,y),(dp(2),C)

F = {
x2+(2c)*xy+(b)*y2+(d)*x, 
2*x+(2c)*y+(d), 
(2c)*x+(2b)*y
}.

E = {0}.

N = {}.

=============================


RGB is not the CCGB.

--------------------------------

RGB = [

/* f_1 = */ (bd2),
/* f_2 = */ (cd)*y+(d2)/2,
/* f_3 = */ (bd)*y,
/* f_4 = */ (-b+c2)*y+(cd)/2,
/* f_5 = */ x+(c)*y+(d)/2;

].


Size is : 5.

It is comprehensive, but not minimal.

------------------------------

C = [

/* f_1 = */ (bd2),
/* f_2 = */ (cd)*y+(d2)/2,
/* f_4 = */ (-b+c2)*y+(cd)/2,
/* f_5 = */ x+(c)*y+(d)/2;

].


Size is: 4.

It is comprehensive and minimal.
--------------------------

M_1

M = [

/* f_1 = */ (bd2),
/* f_2 = */ (cd)*y+(d2)/2,
/* f_4 = */ (-b+c2)*y+(cd)/2,
/* f_5 = */ x+(c)*y+(d)/2;

].

Size is: 4.

It is comprehensive and minimal.

Normal form of Split form of M_1 :
M = [

/* f_1 = */ (bd2),
/* f_2 = */ (cd)*y+(d2)/2,
/* f_4 = */ (-b+c2)*y+(cd)/2,
/* f_5 = */ x+(c)*y+(d)/2;

].

Size is : 4.

It is comprehensive and minimal.
==================================


Comprehensive Groebner Basis: 

/* f_1 = */ (bd2),
/* f_2 = */ (cd)*y+(d2)/2,
/* f_4 = */ (-b+c2)*y+(cd)/2,
/* f_5 = */ x+(c)*y+(d)/2;




Size is: 4.

--------------------------------------


Module Comprehensive Groebner Systems: 

Branch 1:
constraints: b*d^2!=0,
RGB from KSW:
[(b*d^2)  ,  0]
[(2*c*d)*y+(d^2)  ,  0]
[(b*d)*y  ,  0]
[(-2*b+2*c^2)*y+(c*d)  ,  0]
[2*x+(2*c)*y+(d)  ,  0]

Module Groebner basis: 
[(b*d^2) , 0].

LPP Set of Module Groebner Basis under specialization:
[ 1 ]

Branch 2:
constraints: b*d^2=0,c!=0,d!=0,
RGB from KSW:
[(2*c*d)*y+(d^2)  ,  0]
[(-2*b+2*c^2)*y+(c*d)  ,  0]
[2*x+(2*c)*y+(d)  ,  0]

Module Groebner basis: 
[(2*c*d)*y+(d^2), 0], 
[2*x+(2*c)*y+(d) , 0].

LPP Set of Module Groebner Basis under specialization:
[ y ]
[ x ]

Branch 3:
constraints: d=0,c^2-b!=0,
RGB from KSW:
[(-2*b+2*c^2)*y  ,  (c*d)]
[2*x+(2*c)*y  ,  (d)]

Module Groebner basis: 
[(-2*b+2*c^2)*y, (c*d)], 
[2*x+(2*c)*y , (d)].

LPP Set of Module Groebner Basis under specialization:
[ y ]
[ x ]

Branch 4:
constraints: d=0,c^2-b=0,
RGB from KSW:
[2*x+(2*c)*y  ,  (d)]

Module Groebner basis: 
[2*x+(2*c)*y , (d)].

LPP Set of Module Groebner Basis under specialization:
[ x ]

Branch 5:
constraints: c=0,b=0,d!=0,d^2!=0,
RGB from KSW:
[(d^2)  ,  (2*c*d)*y]
[2*x+(d)  ,  (2*c)*y]

Module Groebner basis: 
[(d^2) , (2*c*d)*y].

LPP Set of Module Groebner Basis under specialization:
[ 1 ]



