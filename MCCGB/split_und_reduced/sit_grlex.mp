The given ring is:
(0,a,b,c,d,u,v),(x,y),(dp(2),C)

F = {
(a)*x+(b)*y+(-u), 
(c)*x+(d)*y+(-v)
}.

E = {0}.

N = {}.

=============================


RGB is not the CCGB.

--------------------------------

RGB = [

/* f_1 = */ (-ad+bc)*y+(av-cu),
/* f_2 = */ (c)*x+(d)*y+(-v),
/* f_3 = */ (a)*x+(b)*y+(-u);

].


Size is : 3.

It is not comprehensive.

------------------------------

C = [

/* f_1 = */ (-ad+bc)*y+(av-cu),
/* f_2 = */ (c)*x+(d)*y+(-v),
/* f_3 = */ (a)*x+(b)*y+(-u),
/* f_4 = */ (-ad+bc)*x+(-bv+du);

].


Size is: 4.

It is comprehensive and minimal.
--------------------------

M_1

M = [

/* f_1 = */ (-ad+bc)*y+(av-cu),
/* f_2 = */ (c)*x+(d)*y+(-v),
/* f_3 = */ (a)*x+(b)*y+(-u),
/* f_4 = */ (-ad+bc)*x+(-bv+du);

].

Size is: 4.

It is comprehensive and minimal.

Normal form of Split form of M_1 :
M = [

/* f_1 = */ (-ad+bc)*y+(av-cu),
/* f_2 = */ (c)*x+(d)*y+(-v),
/* f_3 = */ (a)*x+(b)*y+(-u),
/* f_4 = */ (-ad+bc)*x+(-bv+du);

].

Size is : 4.

It is comprehensive and minimal.
==================================


Comprehensive Groebner Basis: 

/* f_1 = */ (-ad+bc)*y+(av-cu),
/* f_2 = */ (c)*x+(d)*y+(-v),
/* f_3 = */ (a)*x+(b)*y+(-u),
/* f_4 = */ (-ad+bc)*x+(-bv+du);




Size is: 4.

--------------------------------------


Module Comprehensive Groebner Systems: 

Branch 1:
constraints: b*c-a*d!=0,c!=0,
RGB from KSW:
[(-a*d+b*c)*y+(a*v-c*u)  ,  0]
[(c)*x+(d)*y+(-v)  ,  0]
[(a)*x+(b)*y+(-u)  ,  0]

Module Groebner basis: 
[(-a*d+b*c)*y+(a*v-c*u), 0], 
[(c)*x+(d)*y+(-v) , 0].

LPP Set of Module Groebner Basis under specialization:
[ y ]
[ x ]

Branch 2:
constraints: b*c-a*d=0,d*u-b*v!=0,
RGB from KSW:
[(-b*v+d*u)  ,  (-a*d+b*c)*x]
[(-a*v+c*u)  ,  (a*d-b*c)*y]
[(c)*x+(d)*y+(-v)  ,  0]
[(a)*x+(b)*y+(-u)  ,  0]

Module Groebner basis: 
[(-b*v+d*u) , (-a*d+b*c)*x].

LPP Set of Module Groebner Basis under specialization:
[ 1 ]

Branch 3:
constraints: d*u-b*v=0,b*c-a*d=0,c*u-a*v!=0,
RGB from KSW:
[(-a*v+c*u)  ,  (a*d-b*c)*y]
[(c)*x+(d)*y+(-v)  ,  0]
[(a)*x+(b)*y+(-u)  ,  0]

Module Groebner basis: 
[(-a*v+c*u) , (a*d-b*c)*y].

LPP Set of Module Groebner Basis under specialization:
[ 1 ]

Branch 4:
constraints: d*u-b*v=0,c*u-a*v=0,b*c-a*d=0,c!=0,
RGB from KSW:
[(c)*x+(d)*y+(-v)  ,  0]
[(a)*x+(b)*y+(-u)  ,  0]

Module Groebner basis: 
[(c)*x+(d)*y+(-v) , 0].

LPP Set of Module Groebner Basis under specialization:
[ x ]

Branch 5:
constraints: c=0,a=0,d*u-b*v=0,d!=0,
RGB from KSW:
[(d)*y+(-v)  ,  (c)*x]
[(b)*y+(-u)  ,  (a)*x]

Module Groebner basis: 
[(d)*y+(-v) , (c)*x].

LPP Set of Module Groebner Basis under specialization:
[ y ]

Branch 6:
constraints: d=0,c=0,a=0,b*v=0,v!=0,
RGB from KSW:
[(v)  ,  (-c)*x+(-d)*y]
[(b)*y+(-u)  ,  (a)*x]

Module Groebner basis: 
[(v) , (-c)*x+(-d)*y].

LPP Set of Module Groebner Basis under specialization:
[ 1 ]

Branch 7:
constraints: v=0,d=0,c=0,a=0,b!=0,
RGB from KSW:
[(b)*y+(-u)  ,  (a)*x]

Module Groebner basis: 
[(b)*y+(-u) , (a)*x].

LPP Set of Module Groebner Basis under specialization:
[ y ]

Branch 8:
constraints: v=0,d=0,c=0,b=0,a=0,u!=0,
RGB from KSW:
[(u)  ,  (-a)*x+(-b)*y]

Module Groebner basis: 
[(u) , (-a)*x+(-b)*y].

LPP Set of Module Groebner Basis under specialization:
[ 1 ]

Branch 9:
constraints: v=0,u=0,d=0,c=0,b=0,a=0,
RGB from KSW:
[   ].

Module Groebner basis: 
[  ].


LPP Set of Module Groebner Basis under specialization:
[  ].

Branch 10:
constraints: v=0,d=0,c=0,a!=0,a!=0,
RGB from KSW:
[(a)*x+(b)*y+(-u)  ,  0]

Module Groebner basis: 
[(a)*x+(b)*y+(-u) , 0].

LPP Set of Module Groebner Basis under specialization:
[ x ]

Branch 11:
constraints: c=0,-a*d!=0,d!=0,a!=0,
RGB from KSW:
[(d)*y+(-v)  ,  (c)*x]
[(a)*x+(b)*y+(-u)  ,  0]

Module Groebner basis: 
[(d)*y+(-v), (c)*x], 
[(a)*x+(b)*y+(-u) , 0].

LPP Set of Module Groebner Basis under specialization:
[ y ]
[ x ]



