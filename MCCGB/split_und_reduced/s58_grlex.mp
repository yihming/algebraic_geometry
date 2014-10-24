The given ring is:
(0,a0,a1,b0,b1,c0,c1),(x,y),(dp(2),C)

F = {
(a0)*x^2+(b0)*y+(c0), 
(a1)*x^2+(b1)*y+(c1)
}.

E = {0}.

N = {}.

=============================


RGB is not the CCGB.

--------------------------------

RGB = [

/* f_1 = */ (-a0*b1+a1*b0)*y+(-a0*c1+a1*c0),
/* f_2 = */ (a1)*x^2+(b1)*y+(c1),
/* f_3 = */ (a0)*x^2+(b0)*y+(c0);

].


Size is : 3.

It is not comprehensive.

------------------------------

C = [

/* f_1 = */ (-a0*b1+a1*b0)*y+(-a0*c1+a1*c0),
/* f_2 = */ (a1)*x^2+(b1)*y+(c1),
/* f_3 = */ (a0)*x^2+(b0)*y+(c0),
/* f_4 = */ (-a0*b1+a1*b0)*x^2+(b0*c1-b1*c0);

].


Size is: 4.

It is comprehensive and minimal.
--------------------------

M_1

M = [

/* f_1 = */ (-a0*b1+a1*b0)*y+(-a0*c1+a1*c0),
/* f_2 = */ (a1)*x^2+(b1)*y+(c1),
/* f_3 = */ (a0)*x^2+(b0)*y+(c0),
/* f_4 = */ (-a0*b1+a1*b0)*x^2+(b0*c1-b1*c0);

].

Size is: 4.

It is comprehensive and minimal.

Normal form of Split form of M_1 :
M = [

/* f_1 = */ (-a0*b1+a1*b0)*y+(-a0*c1+a1*c0),
/* f_2 = */ (a1)*x^2+(b1)*y+(c1),
/* f_3 = */ (a0)*x^2+(b0)*y+(c0),
/* f_4 = */ (-a0*b1+a1*b0)*x^2+(b0*c1-b1*c0);

].

Size is : 4.

It is comprehensive and minimal.
==================================


Comprehensive Groebner Basis: 

/* f_1 = */ (-a0*b1+a1*b0)*y+(-a0*c1+a1*c0),
/* f_2 = */ (a1)*x^2+(b1)*y+(c1),
/* f_3 = */ (a0)*x^2+(b0)*y+(c0),
/* f_4 = */ (-a0*b1+a1*b0)*x^2+(b0*c1-b1*c0);




Size is: 4.

--------------------------------------


Module Comprehensive Groebner Systems: 

Branch 1:
constraints: a1*b0-a0*b1!=0,a1!=0,
RGB from KSW:
[(-a0*b1+a1*b0)*y+(-a0*c1+a1*c0)  ,  0]
[(a1)*x^2+(b1)*y+(c1)  ,  0]
[(a0)*x^2+(b0)*y+(c0)  ,  0]

Module Groebner basis: 
[(-a0*b1+a1*b0)*y+(-a0*c1+a1*c0), 0], 
[(a1)*x^2+(b1)*y+(c1) , 0].

LPP Set of Module Groebner Basis under specialization:
[ y ]
[ x^2 ]

Branch 2:
constraints: a1=0,b1!=0,a0!=0,
RGB from KSW:
[(b1)*y+(c1)  ,  (a1)*x^2]
[(a0)*x^2+(b0)*y+(c0)  ,  0]

Module Groebner basis: 
[(b1)*y+(c1), (a1)*x^2], 
[(a0)*x^2+(b0)*y+(c0) , 0].

LPP Set of Module Groebner Basis under specialization:
[ y ]
[ x^2 ]

Branch 3:
constraints: a1=0,a0=0,b1*c0-b0*c1!=0,
RGB from KSW:
[(-b0*c1+b1*c0)  ,  (a0*b1-a1*b0)*x^2]
[(b1)*y+(c1)  ,  (a1)*x^2]
[(b0)*y+(c0)  ,  (a0)*x^2]

Module Groebner basis: 
[(-b0*c1+b1*c0) , (a0*b1-a1*b0)*x^2].

LPP Set of Module Groebner Basis under specialization:
[ 1 ]

Branch 4:
constraints: a1=0,a0=0,b1*c0-b0*c1=0,b1!=0,
RGB from KSW:
[(b1)*y+(c1)  ,  (a1)*x^2]
[(b0)*y+(c0)  ,  (a0)*x^2]

Module Groebner basis: 
[(b1)*y+(c1) , (a1)*x^2].

LPP Set of Module Groebner Basis under specialization:
[ y ]

Branch 5:
constraints: b1=0,a1=0,a0=0,b0*c1=0,c1!=0,
RGB from KSW:
[(c1)  ,  (a1)*x^2+(b1)*y]
[(b0)*y+(c0)  ,  (a0)*x^2]

Module Groebner basis: 
[(c1) , (a1)*x^2+(b1)*y].

LPP Set of Module Groebner Basis under specialization:
[ 1 ]

Branch 6:
constraints: c1=0,b1=0,a1=0,a0=0,b0!=0,
RGB from KSW:
[(b0)*y+(c0)  ,  (a0)*x^2]

Module Groebner basis: 
[(b0)*y+(c0) , (a0)*x^2].

LPP Set of Module Groebner Basis under specialization:
[ y ]

Branch 7:
constraints: c1=0,b1=0,b0=0,a1=0,a0=0,c0!=0,
RGB from KSW:
[(c0)  ,  (a0)*x^2+(b0)*y]

Module Groebner basis: 
[(c0) , (a0)*x^2+(b0)*y].

LPP Set of Module Groebner Basis under specialization:
[ 1 ]

Branch 8:
constraints: c1=0,c0=0,b1=0,b0=0,a1=0,a0=0,
RGB from KSW:
[   ].

Module Groebner basis: 
[  ].


LPP Set of Module Groebner Basis under specialization:
[  ].

Branch 9:
constraints: b1=0,a1=0,a0!=0,c1!=0,
RGB from KSW:
[(c1)  ,  (a1)*x^2+(b1)*y]
[(a0)*x^2+(b0)*y+(c0)  ,  0]

Module Groebner basis: 
[(c1) , (a1)*x^2+(b1)*y].

LPP Set of Module Groebner Basis under specialization:
[ 1 ]

Branch 10:
constraints: c1=0,b1=0,a1=0,a0!=0,a0!=0,
RGB from KSW:
[(a0)*x^2+(b0)*y+(c0)  ,  0]

Module Groebner basis: 
[(a0)*x^2+(b0)*y+(c0) , 0].

LPP Set of Module Groebner Basis under specialization:
[ x^2 ]

Branch 11:
constraints: a1*b0-a0*b1=0,a1!=0,b1*c0-b0*c1!=0,
RGB from KSW:
[(-b0*c1+b1*c0)  ,  (a0*b1-a1*b0)*x^2]
[(-a0*c1+a1*c0)  ,  (-a0*b1+a1*b0)*y]
[(a1)*x^2+(b1)*y+(c1)  ,  0]
[(a0)*x^2+(b0)*y+(c0)  ,  0]

Module Groebner basis: 
[(-b0*c1+b1*c0) , (a0*b1-a1*b0)*x^2].

LPP Set of Module Groebner Basis under specialization:
[ 1 ]

Branch 12:
constraints: b1*c0-b0*c1=0,a1*b0-a0*b1=0,a1!=0,a1*c0-a0*c1!=0,
RGB from KSW:
[(-a0*c1+a1*c0)  ,  (-a0*b1+a1*b0)*y]
[(a1)*x^2+(b1)*y+(c1)  ,  0]
[(a0)*x^2+(b0)*y+(c0)  ,  0]

Module Groebner basis: 
[(-a0*c1+a1*c0) , (-a0*b1+a1*b0)*y].

LPP Set of Module Groebner Basis under specialization:
[ 1 ]

Branch 13:
constraints: b1*c0-b0*c1=0,a1*c0-a0*c1=0,a1*b0-a0*b1=0,a1!=0,a1!=0,
RGB from KSW:
[(a1)*x^2+(b1)*y+(c1)  ,  0]
[(a0)*x^2+(b0)*y+(c0)  ,  0]

Module Groebner basis: 
[(a1)*x^2+(b1)*y+(c1) , 0].

LPP Set of Module Groebner Basis under specialization:
[ x^2 ]



