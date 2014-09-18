
+++++++++++++++++++++++++++++++++++++++

The given ring is:
(0,a0,a1,a2,b0,b1,b2,c0,c1),(x,y),(dp(2),C)

F = {
(a0)*x^2+(b0)*x*y+(c0)*y^2, 
(a1)*x^2+(b1)*x*y+(c1)*y^2, 
(a2)*x+(b2)*y
}.

E = {0}.

N = {}.


Module Comprehensive Groebner Systems: 

Branch 1:
constraints: a2!=0,-a2*b1*c0+a1*b2*c0+a2*b0*c1-a0*b2*c1!=0,
RGB from KSW:
[(a2)*x+(b2)*y  ,  0]
[(a0*b2*c1-a1*b2*c0-a2*b0*c1+a2*b1*c0)*y^2  ,  0]
[(-a1*b2^2-a2^2*c1+a2*b1*b2)*y^2  ,  0]
[(-a0*b2^2-a2^2*c0+a2*b0*b2)*y^2  ,  0]
[(a0*a2*c1-a0*b1*b2-a1*a2*c0+a1*b0*b2)*y^2  ,  0]
[(a1*b2)*x*y+(-a2*c1+b1*b2)*y^2  ,  0]
[(a0*b2)*x*y+(-a2*c0+b0*b2)*y^2  ,  0]
[(-a0*b1+a1*b0)*x*y+(-a0*c1+a1*c0)*y^2  ,  0]
[(a1)*x^2+(b1)*x*y+(c1)*y^2  ,  0]
[(a0)*x^2+(b0)*x*y+(c0)*y^2  ,  0]
[(-a0^2*c1^2+2*a0*a1*c0*c1+a0*b0*b1*c1-a0*b1^2*c0-a1^2*c0^2-a1*b0^2*c1+a1*b0*b1*c0)*y^3  ,  0]
[(-a0*c1+a1*c0)*x*y^2+(-b0*c1+b1*c0)*y^3  ,  0]
[(-a0*b0*c1+a0*b1*c0)*x*y^2+(a0*c0*c1-a1*c0^2-b0^2*c1+b0*b1*c0)*y^3  ,  0]

Module Groebner basis: 
[(a2)*x+(b2)*y, 0], 
[(a0*b2*c1-a1*b2*c0-a2*b0*c1+a2*b1*c0)*y^2 , 0].

LPP Set of Module Groebner Basis under specialization:
[ x ]
[ y^2 ]

Branch 2:
constraints: a2=0,b2!=0,a1!=0,
RGB from KSW:
[(b2)*y  ,  (a2)*x]
[(-a0*b1+a1*b0)*x*y+(-a0*c1+a1*c0)*y^2  ,  0]
[(a1)*x^2+(b1)*x*y+(c1)*y^2  ,  0]
[(a0)*x^2+(b0)*x*y+(c0)*y^2  ,  0]
[(-a0^2*c1^2+2*a0*a1*c0*c1+a0*b0*b1*c1-a0*b1^2*c0-a1^2*c0^2-a1*b0^2*c1+a1*b0*b1*c0)*y^3  ,  0]
[(-a0*c1+a1*c0)*x*y^2+(-b0*c1+b1*c0)*y^3  ,  0]
[(-a0*b0*c1+a0*b1*c0)*x*y^2+(a0*c0*c1-a1*c0^2-b0^2*c1+b0*b1*c0)*y^3  ,  0]

Module Groebner basis: 
[(b2)*y, (a2)*x], 
[(a1)*x^2+(b1)*x*y+(c1)*y^2 , 0].

LPP Set of Module Groebner Basis under specialization:
[ y ]
[ x^2 ]

Branch 3:
constraints: b2=0,a2=0,a1*b0-a0*b1!=0,a1!=0,-a1*b0*b1*c0+a0*b1^2*c0+a1^2*c0^2+a1*b0^2*c1-a0*b0*b1*c1-2*a0*a1*c0*c1+a0^2*c1^2!=0,
RGB from KSW:
[(-a0*b1+a1*b0)*x*y+(-a0*c1+a1*c0)*y^2  ,  0]
[(a1)*x^2+(b1)*x*y+(c1)*y^2  ,  0]
[(a0)*x^2+(b0)*x*y+(c0)*y^2  ,  0]
[(-a0^2*c1^2+2*a0*a1*c0*c1+a0*b0*b1*c1-a0*b1^2*c0-a1^2*c0^2-a1*b0^2*c1+a1*b0*b1*c0)*y^3  ,  0]
[(-a0*c1+a1*c0)*x*y^2+(-b0*c1+b1*c0)*y^3  ,  0]
[(-a0*b0*c1+a0*b1*c0)*x*y^2+(a0*c0*c1-a1*c0^2-b0^2*c1+b0*b1*c0)*y^3  ,  0]

Module Groebner basis: 
[(-a0*b1+a1*b0)*x*y+(-a0*c1+a1*c0)*y^2, 0], 
[(a1)*x^2+(b1)*x*y+(c1)*y^2, 0], 
[(-a0^2*c1^2+2*a0*a1*c0*c1+a0*b0*b1*c1-a0*b1^2*c0-a1^2*c0^2-a1*b0^2*c1+a1*b0*b1*c0)*y^3 , 0].

LPP Set of Module Groebner Basis under specialization:
[ x*y ]
[ x^2 ]
[ y^3 ]

Branch 4:
constraints: b2=0,a2=0,a1=0,b1!=0,a0!=0,b1^2*c0-b0*b1*c1+a0*c1^2!=0,
RGB from KSW:
[(b1)*x*y+(c1)*y^2  ,  (a1)*x^2]
[(a0)*x^2+(b0)*x*y+(c0)*y^2  ,  0]
[(a0*c1^2-b0*b1*c1+b1^2*c0)*y^3  ,  (-a1*b0*c1+a1*b1*c0)*x*y^2+(-a1*c0*c1)*y^3]
[(a0*c1)*x*y^2+(b0*c1-b1*c0)*y^3  ,  (-a1*c0)*x*y^2]

Module Groebner basis: 
[(b1)*x*y+(c1)*y^2, (a1)*x^2], 
[(a0)*x^2+(b0)*x*y+(c0)*y^2, 0], 
[(a0*c1^2-b0*b1*c1+b1^2*c0)*y^3 , (-a1*b0*c1+a1*b1*c0)*x*y^2+(-a1*c0*c1)*y^3].

LPP Set of Module Groebner Basis under specialization:
[ x*y ]
[ x^2 ]
[ y^3 ]

Branch 5:
constraints: b2=0,a2=0,a1=0,a0=0,b1*c0-b0*c1!=0,b1!=0,
RGB from KSW:
[(-b0*c1+b1*c0)*y^2  ,  (a0*b1-a1*b0)*x^2]
[(b1)*x*y+(c1)*y^2  ,  (a1)*x^2]
[(b0)*x*y+(c0)*y^2  ,  (a0)*x^2]

Module Groebner basis: 
[(-b0*c1+b1*c0)*y^2, (a0*b1-a1*b0)*x^2], 
[(b1)*x*y+(c1)*y^2 , (a1)*x^2].

LPP Set of Module Groebner Basis under specialization:
[ y^2 ]
[ x*y ]

Branch 6:
constraints: b2=0,b1=0,a2=0,a1=0,a0=0,c1!=0,b0!=0,
RGB from KSW:
[(c1)*y^2  ,  (a1)*x^2+(b1)*x*y]
[(b0)*x*y+(c0)*y^2  ,  (a0)*x^2]

Module Groebner basis: 
[(c1)*y^2, (a1)*x^2+(b1)*x*y], 
[(b0)*x*y+(c0)*y^2 , (a0)*x^2].

LPP Set of Module Groebner Basis under specialization:
[ y^2 ]
[ x*y ]

Branch 7:
constraints: b2=0,b1=0,b0=0,a2=0,a1=0,a0=0,c1!=0,
RGB from KSW:
[(c1)*y^2  ,  (a1)*x^2+(b1)*x*y]
[(c0)*y^2  ,  (a0)*x^2+(b0)*x*y]

Module Groebner basis: 
[(c1)*y^2 , (a1)*x^2+(b1)*x*y].

LPP Set of Module Groebner Basis under specialization:
[ y^2 ]

Branch 8:
constraints: c1=0,b2=0,b1=0,b0=0,a2=0,a1=0,a0=0,c0!=0,
RGB from KSW:
[(c0)*y^2  ,  (a0)*x^2+(b0)*x*y]

Module Groebner basis: 
[(c0)*y^2 , (a0)*x^2+(b0)*x*y].

LPP Set of Module Groebner Basis under specialization:
[ y^2 ]

Branch 9:
constraints: c1=0,c0=0,b2=0,b1=0,b0=0,a2=0,a1=0,a0=0,
RGB from KSW:
[   ].

Module Groebner basis: 
[  ].


LPP Set of Module Groebner Basis under specialization:
[  ].

Branch 10:
constraints: c1=0,b2=0,b1=0,a2=0,a1=0,a0=0,b0!=0,b0!=0,
RGB from KSW:
[(b0)*x*y+(c0)*y^2  ,  (a0)*x^2]

Module Groebner basis: 
[(b0)*x*y+(c0)*y^2 , (a0)*x^2].

LPP Set of Module Groebner Basis under specialization:
[ x*y ]

Branch 11:
constraints: b2=0,a2=0,a1=0,a0=0,b1*c0-b0*c1=0,b1!=0,b1!=0,
RGB from KSW:
[(b1)*x*y+(c1)*y^2  ,  (a1)*x^2]
[(b0)*x*y+(c0)*y^2  ,  (a0)*x^2]

Module Groebner basis: 
[(b1)*x*y+(c1)*y^2 , (a1)*x^2].

LPP Set of Module Groebner Basis under specialization:
[ x*y ]

Branch 12:
constraints: b2=0,a2=0,a1=0,b1^2*c0-b0*b1*c1+a0*c1^2=0,a0!=0,b1!=0,a0!=0,
RGB from KSW:
[(b1)*x*y+(c1)*y^2  ,  (a1)*x^2]
[(a0*c1^2)*x*y+(b0*c1^2-b1*c0*c1)*y^2  ,  (a1*b0*c1-a1*b1*c0)*x^2+(-a0*c1^2+b0*b1*c1-b1^2*c0)*x*y]
[(a0)*x^2+(b0)*x*y+(c0)*y^2  ,  0]
[(a0*c1)*x*y^2+(b0*c1-b1*c0)*y^3  ,  (-a1*c0)*x*y^2]

Module Groebner basis: 
[(b1)*x*y+(c1)*y^2, (a1)*x^2], 
[(a0)*x^2+(b0)*x*y+(c0)*y^2 , 0].

LPP Set of Module Groebner Basis under specialization:
[ x*y ]
[ x^2 ]

Branch 13:
constraints: c1=0,b2=0,b1=0,a2=0,a1=0,a0!=0,a0!=0,
RGB from KSW:
[(a0)*x^2+(b0)*x*y+(c0)*y^2  ,  0]

Module Groebner basis: 
[(a0)*x^2+(b0)*x*y+(c0)*y^2 , 0].

LPP Set of Module Groebner Basis under specialization:
[ x^2 ]

Branch 14:
constraints: b2=0,b1=0,a2=0,a1=0,a0!=0,a0*c1^2!=0,c1!=0,a0!=0,
RGB from KSW:
[(c1)*y^2  ,  (a1)*x^2+(b1)*x*y]
[(a0)*x^2+(b0)*x*y+(c0)*y^2  ,  0]

Module Groebner basis: 
[(c1)*y^2, (a1)*x^2+(b1)*x*y], 
[(a0)*x^2+(b0)*x*y+(c0)*y^2 , 0].

LPP Set of Module Groebner Basis under specialization:
[ y^2 ]
[ x^2 ]

Branch 15:
constraints: b2=0,a2=0,a1*b0*b1*c0-a0*b1^2*c0-a1^2*c0^2-a1*b0^2*c1+a0*b0*b1*c1+2*a0*a1*c0*c1-a0^2*c1^2=0,a1!=0,a0!=0,b1*c0-b0*c1!=0,a1!=0,
RGB from KSW:
[(-a0*b1+a1*b0)*x*y+(-a0*c1+a1*c0)*y^2  ,  0]
[(a0*b0*c1^2-2*a0*b1*c0*c1+a1*b1*c0^2)*x*y+(-a0*c0*c1^2+a1*c0^2*c1+b0^2*c1^2-2*b0*b1*c0*c1+b1^2*c0^2)*y^2  ,  (a0^2*c1^2-2*a0*a1*c0*c1-a0*b0*b1*c1+a0*b1^2*c0+a1^2*c0^2+a1*b0^2*c1-a1*b0*b1*c0)*x^2]
[(a0^2*c1^2-2*a0*a1*c0*c1+a1^2*c0^2)*x*y+(a0*b0*c1^2-a0*b1*c0*c1-a1*b0*c0*c1+a1*b1*c0^2)*y^2  ,  (-a0^2*c1^2+2*a0*a1*c0*c1+a0*b0*b1*c1-a0*b1^2*c0-a1^2*c0^2-a1*b0^2*c1+a1*b0*b1*c0)*x*y]
[(a0*b0^2*c1^2-2*a0*b0*b1*c0*c1+a0*b1^2*c0^2)*x*y+(-a0*b0*c0*c1^2+a0*b1*c0^2*c1+a1*b0*c0^2*c1-a1*b1*c0^3+b0^3*c1^2-2*b0^2*b1*c0*c1+b0*b1^2*c0^2)*y^2  ,  (a0^2*b0*c1^2-2*a0*a1*b0*c0*c1-a0*b0^2*b1*c1+a0*b0*b1^2*c0+a1^2*b0*c0^2+a1*b0^3*c1-a1*b0^2*b1*c0)*x^2]
[(a1)*x^2+(b1)*x*y+(c1)*y^2  ,  0]
[(a0)*x^2+(b0)*x*y+(c0)*y^2  ,  0]
[(-a0*c1+a1*c0)*x*y^2+(-b0*c1+b1*c0)*y^3  ,  0]
[(-a0*b0*c1+a0*b1*c0)*x*y^2+(a0*c0*c1-a1*c0^2-b0^2*c1+b0*b1*c0)*y^3  ,  0]

Module Groebner basis: 
[(a0*b0^2*c1^2-2*a0*b0*b1*c0*c1+a0*b1^2*c0^2)*x*y+(-a0*b0*c0*c1^2+a0*b1*c0^2*c1+a1*b0*c0^2*c1-a1*b1*c0^3+b0^3*c1^2-2*b0^2*b1*c0*c1+b0*b1^2*c0^2)*y^2, (a0^2*b0*c1^2-2*a0*a1*b0*c0*c1-a0*b0^2*b1*c1+a0*b0*b1^2*c0+a1^2*b0*c0^2+a1*b0^3*c1-a1*b0^2*b1*c0)*x^2], 
[(a1)*x^2+(b1)*x*y+(c1)*y^2 , 0].

LPP Set of Module Groebner Basis under specialization:
[ x*y ]
[ x^2 ]

Branch 16:
constraints: b2=0,a2=0,b1*c0-b0*c1=0,a1*c0-a0*c1=0,a1*b0*c1-a0*b1*c1=0,a1!=0,a1*b0-a0*b1!=0,a1!=0,
RGB from KSW:
[(-a0*b1+a1*b0)*x*y  ,  (-a0*c1+a1*c0)*y^2]
[(a1)*x^2+(b1)*x*y+(c1)*y^2  ,  0]
[(a0)*x^2+(b0)*x*y+(c0)*y^2  ,  0]

Module Groebner basis: 
[(-a0*b1+a1*b0)*x*y, (-a0*c1+a1*c0)*y^2], 
[(a1)*x^2+(b1)*x*y+(c1)*y^2 , 0].

LPP Set of Module Groebner Basis under specialization:
[ x*y ]
[ x^2 ]

Branch 17:
constraints: b2=0,a2=0,b1*c0-b0*c1=0,a1*c0-a0*c1=0,a1*b0-a0*b1=0,a1!=0,a1!=0,
RGB from KSW:
[(a1)*x^2+(b1)*x*y+(c1)*y^2  ,  0]
[(a0)*x^2+(b0)*x*y+(c0)*y^2  ,  0]

Module Groebner basis: 
[(a1)*x^2+(b1)*x*y+(c1)*y^2 , 0].

LPP Set of Module Groebner Basis under specialization:
[ x^2 ]

Branch 18:
constraints: b2=0,a2=0,a0=0,b0*b1*c0-a1*c0^2-b0^2*c1=0,a1!=0,b1*c0-b0*c1!=0,b0!=0,a1!=0,
RGB from KSW:
[(b0)*x*y+(c0)*y^2  ,  (a0)*x^2]
[(a1*c0^2)*x*y+(-b0*c0*c1+b1*c0^2)*y^2  ,  (-a0*b0*c1+a0*b1*c0)*x^2+(-a1*c0^2-b0^2*c1+b0*b1*c0)*x*y]
[(a1)*x^2+(b1)*x*y+(c1)*y^2  ,  0]
[(a1*c0)*x*y^2+(-b0*c1+b1*c0)*y^3  ,  (-a0*c1)*x*y^2]

Module Groebner basis: 
[(b0)*x*y+(c0)*y^2, (a0)*x^2], 
[(a1)*x^2+(b1)*x*y+(c1)*y^2 , 0].

LPP Set of Module Groebner Basis under specialization:
[ x*y ]
[ x^2 ]

Branch 19:
constraints: b2=0,a2=0,a1*b0-a0*b1=0,a1!=0,a1^2*c0^2-2*a0*a1*c0*c1+a0^2*c1^2!=0,b1*c0-b0*c1!=0,a1!=0,
RGB from KSW:
[(-b0*c1+b1*c0)*y^2  ,  (a0*b1-a1*b0)*x^2]
[(-a0*c1+a1*c0)*y^2  ,  (-a0*b1+a1*b0)*x*y]
[(a1)*x^2+(b1)*x*y+(c1)*y^2  ,  0]
[(a0)*x^2+(b0)*x*y+(c0)*y^2  ,  0]

Module Groebner basis: 
[(-b0*c1+b1*c0)*y^2, (a0*b1-a1*b0)*x^2], 
[(a1)*x^2+(b1)*x*y+(c1)*y^2 , 0].

LPP Set of Module Groebner Basis under specialization:
[ y^2 ]
[ x^2 ]

Branch 20:
constraints: b2=0,b1=0,b0=0,a2=0,a1!=0,a1*c0-a0*c1!=0,a1*c0-a0*c1!=0,a1!=0,
RGB from KSW:
[(-a0*c1+a1*c0)*y^2  ,  (-a0*b1+a1*b0)*x*y]
[(a1)*x^2+(c1)*y^2  ,  (b1)*x*y]
[(a0)*x^2+(c0)*y^2  ,  (b0)*x*y]

Module Groebner basis: 
[(-a0*c1+a1*c0)*y^2, (-a0*b1+a1*b0)*x*y], 
[(a1)*x^2+(c1)*y^2 , (b1)*x*y].

LPP Set of Module Groebner Basis under specialization:
[ y^2 ]
[ x^2 ]

Branch 21:
constraints: a2=0,a1=0,b2!=0,b2!=0,a0!=0,
RGB from KSW:
[(b2)*y  ,  (a2)*x]
[(b1)*x*y+(c1)*y^2  ,  (a1)*x^2]
[(a0)*x^2+(b0)*x*y+(c0)*y^2  ,  0]
[(a0*c1^2-b0*b1*c1+b1^2*c0)*y^3  ,  (-a1*b0*c1+a1*b1*c0)*x*y^2+(-a1*c0*c1)*y^3]
[(a0*c1)*x*y^2+(b0*c1-b1*c0)*y^3  ,  (-a1*c0)*x*y^2]

Module Groebner basis: 
[(b2)*y, (a2)*x], 
[(a0)*x^2+(b0)*x*y+(c0)*y^2 , 0].

LPP Set of Module Groebner Basis under specialization:
[ y ]
[ x^2 ]

Branch 22:
constraints: a2=0,a1=0,a0=0,b2!=0,b2!=0,
RGB from KSW:
[(b2)*y  ,  (a2)*x]
[(-b0*c1+b1*c0)*y^2  ,  (a0*b1-a1*b0)*x^2]
[(b1)*x*y+(c1)*y^2  ,  (a1)*x^2]
[(b0)*x*y+(c0)*y^2  ,  (a0)*x^2]

Module Groebner basis: 
[(b2)*y , (a2)*x].

LPP Set of Module Groebner Basis under specialization:
[ y ]

Branch 23:
constraints: a2*b1*c0-a1*b2*c0-a2*b0*c1+a0*b2*c1=0,a2!=0,a2!=0,-a2*b1*b2+a1*b2^2+a2^2*c1!=0,
RGB from KSW:
[(a2)*x+(b2)*y  ,  0]
[(-a0*b2*c1+a1*b2*c0)*x+(-b0*b2*c1+b1*b2*c0)*y  ,  (a0*b2*c1-a1*b2*c0-a2*b0*c1+a2*b1*c0)*x]
[(-a1*b2^2-a2^2*c1+a2*b1*b2)*y^2  ,  0]
[(-a0*b2^2-a2^2*c0+a2*b0*b2)*y^2  ,  0]
[(a0*a2*c1-a0*b1*b2-a1*a2*c0+a1*b0*b2)*y^2  ,  0]
[(a1*b2)*x*y+(-a2*c1+b1*b2)*y^2  ,  0]
[(a0*b2)*x*y+(-a2*c0+b0*b2)*y^2  ,  0]
[(-a0*b1+a1*b0)*x*y+(-a0*c1+a1*c0)*y^2  ,  0]
[(a1)*x^2+(b1)*x*y+(c1)*y^2  ,  0]
[(a0)*x^2+(b0)*x*y+(c0)*y^2  ,  0]
[(-a0^2*c1^2+2*a0*a1*c0*c1+a0*b0*b1*c1-a0*b1^2*c0-a1^2*c0^2-a1*b0^2*c1+a1*b0*b1*c0)*y^3  ,  0]
[(-a0*c1+a1*c0)*x*y^2+(-b0*c1+b1*c0)*y^3  ,  0]
[(-a0*b0*c1+a0*b1*c0)*x*y^2+(a0*c0*c1-a1*c0^2-b0^2*c1+b0*b1*c0)*y^3  ,  0]

Module Groebner basis: 
[(a2)*x+(b2)*y, 0], 
[(-a1*b2^2-a2^2*c1+a2*b1*b2)*y^2 , 0].

LPP Set of Module Groebner Basis under specialization:
[ x ]
[ y^2 ]

Branch 24:
constraints: a2*b1*c0-a1*b2*c0-a2*b0*c1+a0*b2*c1=0,a2*b1*b2-a1*b2^2-a2^2*c1=0,a2*b0*b2*c1-a0*b2^2*c1-a2^2*c0*c1=0,a1*b0*b2*c1-a0*b1*b2*c1-a1*a2*c0*c1+a0*a2*c1^2=0,a1*b0*b1*c0*c1-a0*b1^2*c0*c1-a1^2*c0^2*c1-a1*b0^2*c1^2+a0*b0*b1*c1^2+2*a0*a1*c0*c1^2-a0^2*c1^3=0,a2!=0,a2!=0,-a2*b0*b2+a0*b2^2+a2^2*c0!=0,
RGB from KSW:
[(a2)*x+(b2)*y  ,  0]
[(-a0*b2*c1+a1*b2*c0)*x+(-b0*b2*c1+b1*b2*c0)*y  ,  (a0*b2*c1-a1*b2*c0-a2*b0*c1+a2*b1*c0)*x]
[(a1*b2^2)*x+(-a2*b2*c1+b1*b2^2)*y  ,  (-a1*b2^2-a2^2*c1+a2*b1*b2)*x]
[(a0*b2^2*c1)*x+(-a2*b2*c0*c1+b0*b2^2*c1)*y  ,  (-a0*b2^2*c1-a2^2*c0*c1+a2*b0*b2*c1)*x]
[(-a0*b0*b2*c1^2+a0*b1*b2*c0*c1)*x+(a0*b2*c0*c1^2-a1*b2*c0^2*c1-b0^2*b2*c1^2+b0*b1*b2*c0*c1)*y  ,  (a0*a2*c0*c1^2+a0*b0*b2*c1^2-a0*b1*b2*c0*c1-a1*a2*c0^2*c1-a2*b0^2*c1^2+a2*b0*b1*c0*c1)*x]
[(-a0*b2^2-a2^2*c0+a2*b0*b2)*y^2  ,  0]
[(a0*a2*c1-a0*b1*b2-a1*a2*c0+a1*b0*b2)*y^2  ,  0]
[(a1*b2)*x*y+(-a2*c1+b1*b2)*y^2  ,  0]
[(a0*b2)*x*y+(-a2*c0+b0*b2)*y^2  ,  0]
[(-a0*b1+a1*b0)*x*y+(-a0*c1+a1*c0)*y^2  ,  0]
[(a0*b0*c1^3-2*a0*b1*c0*c1^2+a1*b1*c0^2*c1)*x*y+(-a0*c0*c1^3+a1*c0^2*c1^2+b0^2*c1^3-2*b0*b1*c0*c1^2+b1^2*c0^2*c1)*y^2  ,  (a0^2*c1^3-2*a0*a1*c0*c1^2-a0*b0*b1*c1^2+a0*b1^2*c0*c1+a1^2*c0^2*c1+a1*b0^2*c1^2-a1*b0*b1*c0*c1)*x^2]
[(a0^2*c1^3-2*a0*a1*c0*c1^2+a1^2*c0^2*c1)*x*y+(a0*b0*c1^3-a0*b1*c0*c1^2-a1*b0*c0*c1^2+a1*b1*c0^2*c1)*y^2  ,  (-a0^2*c1^3+2*a0*a1*c0*c1^2+a0*b0*b1*c1^2-a0*b1^2*c0*c1-a1^2*c0^2*c1-a1*b0^2*c1^2+a1*b0*b1*c0*c1)*x*y]
[(a0*b0^2*c1^3-2*a0*b0*b1*c0*c1^2+a0*b1^2*c0^2*c1)*x*y+(-a0*b0*c0*c1^3+a0*b1*c0^2*c1^2+a1*b0*c0^2*c1^2-a1*b1*c0^3*c1+b0^3*c1^3-2*b0^2*b1*c0*c1^2+b0*b1^2*c0^2*c1)*y^2  ,  (a0^2*b0*c1^3-2*a0*a1*b0*c0*c1^2-a0*b0^2*b1*c1^2+a0*b0*b1^2*c0*c1+a1^2*b0*c0^2*c1+a1*b0^3*c1^2-a1*b0^2*b1*c0*c1)*x^2]
[(a1)*x^2+(b1)*x*y+(c1)*y^2  ,  0]
[(a0)*x^2+(b0)*x*y+(c0)*y^2  ,  0]
[(-a0^2*c1^2+2*a0*a1*c0*c1+a0*b0*b1*c1-a0*b1^2*c0-a1^2*c0^2-a1*b0^2*c1+a1*b0*b1*c0)*y^3  ,  0]
[(-a0*c1+a1*c0)*x*y^2+(-b0*c1+b1*c0)*y^3  ,  0]
[(-a0*b0*c1+a0*b1*c0)*x*y^2+(a0*c0*c1-a1*c0^2-b0^2*c1+b0*b1*c0)*y^3  ,  0]

Module Groebner basis: 
[(a2)*x+(b2)*y, 0], 
[(-a0*b2^2-a2^2*c0+a2*b0*b2)*y^2 , 0].

LPP Set of Module Groebner Basis under specialization:
[ x ]
[ y^2 ]

Branch 25:
constraints: a2*b1*c0-a1*b2*c0-a2*b0*c1+a0*b2*c1=0,a2*b1*b2-a1*b2^2-a2^2*c1=0,a2*b0*b2-a0*b2^2-a2^2*c0=0,a1*b0*b2-a0*b1*b2-a1*a2*c0+a0*a2*c1=0,a1*b0*b1*c0-a0*b1^2*c0-a1^2*c0^2-a1*b0^2*c1+a0*b0*b1*c1+2*a0*a1*c0*c1-a0^2*c1^2=0,a2!=0,a2!=0,
RGB from KSW:
[(a2)*x+(b2)*y  ,  0]
[(-a0*b2*c1+a1*b2*c0)*x+(-b0*b2*c1+b1*b2*c0)*y  ,  (a0*b2*c1-a1*b2*c0-a2*b0*c1+a2*b1*c0)*x]
[(a1*b2^2)*x+(-a2*b2*c1+b1*b2^2)*y  ,  (-a1*b2^2-a2^2*c1+a2*b1*b2)*x]
[(a0*b2^2)*x+(-a2*b2*c0+b0*b2^2)*y  ,  (-a0*b2^2-a2^2*c0+a2*b0*b2)*x]
[(-a0*b0*b2*c1+a0*b1*b2*c0)*x+(a0*b2*c0*c1-a1*b2*c0^2-b0^2*b2*c1+b0*b1*b2*c0)*y  ,  (a0*a2*c0*c1+a0*b0*b2*c1-a0*b1*b2*c0-a1*a2*c0^2-a2*b0^2*c1+a2*b0*b1*c0)*x]
[(a1*b2)*x*y+(-a2*c1+b1*b2)*y^2  ,  0]
[(a0*b2)*x*y+(-a2*c0+b0*b2)*y^2  ,  0]
[(-a0*b1+a1*b0)*x*y+(-a0*c1+a1*c0)*y^2  ,  0]
[(a0*b0*c1^2-2*a0*b1*c0*c1+a1*b1*c0^2)*x*y+(-a0*c0*c1^2+a1*c0^2*c1+b0^2*c1^2-2*b0*b1*c0*c1+b1^2*c0^2)*y^2  ,  (a0^2*c1^2-2*a0*a1*c0*c1-a0*b0*b1*c1+a0*b1^2*c0+a1^2*c0^2+a1*b0^2*c1-a1*b0*b1*c0)*x^2]
[(a0^2*c1^2-2*a0*a1*c0*c1+a1^2*c0^2)*x*y+(a0*b0*c1^2-a0*b1*c0*c1-a1*b0*c0*c1+a1*b1*c0^2)*y^2  ,  (-a0^2*c1^2+2*a0*a1*c0*c1+a0*b0*b1*c1-a0*b1^2*c0-a1^2*c0^2-a1*b0^2*c1+a1*b0*b1*c0)*x*y]
[(a0*b0^2*c1^2-2*a0*b0*b1*c0*c1+a0*b1^2*c0^2)*x*y+(-a0*b0*c0*c1^2+a0*b1*c0^2*c1+a1*b0*c0^2*c1-a1*b1*c0^3+b0^3*c1^2-2*b0^2*b1*c0*c1+b0*b1^2*c0^2)*y^2  ,  (a0^2*b0*c1^2-2*a0*a1*b0*c0*c1-a0*b0^2*b1*c1+a0*b0*b1^2*c0+a1^2*b0*c0^2+a1*b0^3*c1-a1*b0^2*b1*c0)*x^2]
[(a1)*x^2+(b1)*x*y+(c1)*y^2  ,  0]
[(a0)*x^2+(b0)*x*y+(c0)*y^2  ,  0]
[(-a0*c1+a1*c0)*x*y^2+(-b0*c1+b1*c0)*y^3  ,  0]
[(-a0*b0*c1+a0*b1*c0)*x*y^2+(a0*c0*c1-a1*c0^2-b0^2*c1+b0*b1*c0)*y^3  ,  0]

Module Groebner basis: 
[(a2)*x+(b2)*y , 0].

LPP Set of Module Groebner Basis under specialization:
[ x ]




Comprehensive Groebner Basis: 

(a2)*x+(b2)*y,
(a0*b2*c1-a1*b2*c0-a2*b0*c1+a2*b1*c0)*y^2,
(-a1*b2^2-a2^2*c1+a2*b1*b2)*y^2,
(-a0*b2^2-a2^2*c0+a2*b0*b2)*y^2,
(-a0*b1+a1*b0)*x*y+(-a0*c1+a1*c0)*y^2,
(a1)*x^2+(b1)*x*y+(c1)*y^2,
(a0)*x^2+(b0)*x*y+(c0)*y^2,
(-a0*b1+a1*b0)*x^2+(b0*c1-b1*c0)*y^2,
(-a0^2*b0*c1^2+2*a0*a1*b0*c0*c1+a0*b0^2*b1*c1-a0*b0*b1^2*c0-a1^2*b0*c0^2-a1*b0^3*c1+a1*b0^2*b1*c0)*x^2+(-a0*b0^2*c1^2+2*a0*b0*b1*c0*c1-a0*b1^2*c0^2)*x*y+(a0*b0*c0*c1^2-a0*b1*c0^2*c1-a1*b0*c0^2*c1+a1*b1*c0^3-b0^3*c1^2+2*b0^2*b1*c0*c1-b0*b1^2*c0^2)*y^2,
(-a0^2*c1^2+2*a0*a1*c0*c1+a0*b0*b1*c1-a0*b1^2*c0-a1^2*c0^2-a1*b0^2*c1+a1*b0*b1*c0)*y^3,
(-a1*b0*c1+a1*b1*c0)*x*y^2+(a0*c1^2-a1*c0*c1-b0*b1*c1+b1^2*c0)*y^3.




Size is: 11.

================ Algorithm 1 =====================

---------------------

M_1

M = [

(a2)*x+(b2)*y,
(-a1*b2^2-a2^2*c1+a2*b1*b2)*y^2,
(-a0*b2^2-a2^2*c0+a2*b0*b2)*y^2,
(-a0*b1+a1*b0)*x*y+(-a0*c1+a1*c0)*y^2,
(a1)*x^2+(b1)*x*y+(c1)*y^2,
(a0)*x^2+(b0)*x*y+(c0)*y^2,
(-a0^2*b0*c1^2+2*a0*a1*b0*c0*c1+a0*b0^2*b1*c1-a0*b0*b1^2*c0-a1^2*b0*c0^2-a1*b0^3*c1+a1*b0^2*b1*c0)*x^2+(-a0*b0^2*c1^2+2*a0*b0*b1*c0*c1-a0*b1^2*c0^2)*x*y+(a0*b0*c0*c1^2-a0*b1*c0^2*c1-a1*b0*c0^2*c1+a1*b1*c0^3-b0^3*c1^2+2*b0^2*b1*c0*c1-b0*b1^2*c0^2)*y^2,
(-a0^2*c1^2+2*a0*a1*c0*c1+a0*b0*b1*c1-a0*b1^2*c0-a1^2*c0^2-a1*b0^2*c1+a1*b0*b1*c0)*y^3.

].

Size is: 8.

It is comprehensive and minimal.
---------------------

M_2

M = [

(a2)*x+(b2)*y,
(-a1*b2^2-a2^2*c1+a2*b1*b2)*y^2,
(-a0*b2^2-a2^2*c0+a2*b0*b2)*y^2,
(-a0*b1+a1*b0)*x*y+(-a0*c1+a1*c0)*y^2,
(a1)*x^2+(b1)*x*y+(c1)*y^2,
(a0)*x^2+(b0)*x*y+(c0)*y^2,
(-a0*b1+a1*b0)*x^2+(b0*c1-b1*c0)*y^2,
(-a0^2*c1^2+2*a0*a1*c0*c1+a0*b0*b1*c1-a0*b1^2*c0-a1^2*c0^2-a1*b0^2*c1+a1*b0*b1*c0)*y^3.

].

Size is: 8.

It is comprehensive and minimal.

========================= Algorithm 3 ======================

C = [

(a2)*x+(b2)*y
(-a1*b2^2-a2^2*c1+a2*b1*b2)*y^2
(-a0*b2^2-a2^2*c0+a2*b0*b2)*y^2
(-a0*b1+a1*b0)*x*y+(-a0*c1+a1*c0)*y^2
(a1)*x^2+(b1)*x*y+(c1)*y^2
(a0)*x^2+(b0)*x*y+(c0)*y^2
(-a0*b1+a1*b0)*x^2+(b0*c1-b1*c0)*y^2
(-a0^2*c1^2+2*a0*a1*c0*c1+a0*b0*b1*c1-a0*b1^2*c0-a1^2*c0^2-a1*b0^2*c1+a1*b0*b1*c0)*y^3.

].


Size is: 8.

It is comprehensive and minimal.
=================================
Compare MCGBs with CCGB:

Consider M_1:
M_1

M = [

(a2)*x+(b2)*y,
(-a1*b2^2-a2^2*c1+a2*b1*b2)*y^2,
(-a0*b2^2-a2^2*c0+a2*b0*b2)*y^2,
(-a0*b1+a1*b0)*x*y+(-a0*c1+a1*c0)*y^2,
(a1)*x^2+(b1)*x*y+(c1)*y^2,
(a0)*x^2+(b0)*x*y+(c0)*y^2,
(-a0^2*b0*c1^2+2*a0*a1*b0*c0*c1+a0*b0^2*b1*c1-a0*b0*b1^2*c0-a1^2*b0*c0^2-a1*b0^3*c1+a1*b0^2*b1*c0)*x^2+(-a0*b0^2*c1^2+2*a0*b0*b1*c0*c1-a0*b1^2*c0^2)*x*y+(a0*b0*c0*c1^2-a0*b1*c0^2*c1-a1*b0*c0^2*c1+a1*b1*c0^3-b0^3*c1^2+2*b0^2*b1*c0*c1-b0*b1^2*c0^2)*y^2,
(-a0^2*c1^2+2*a0*a1*c0*c1+a0*b0*b1*c1-a0*b1^2*c0-a1^2*c0^2-a1*b0^2*c1+a1*b0*b1*c0)*y^3.

].

Size is: 8.

CCGB

C = [

(a2)*x+(b2)*y
(-a1*b2^2-a2^2*c1+a2*b1*b2)*y^2
(-a0*b2^2-a2^2*c0+a2*b0*b2)*y^2
(-a0*b1+a1*b0)*x*y+(-a0*c1+a1*c0)*y^2
(a1)*x^2+(b1)*x*y+(c1)*y^2
(a0)*x^2+(b0)*x*y+(c0)*y^2
(-a0*b1+a1*b0)*x^2+(b0*c1-b1*c0)*y^2
(-a0^2*c1^2+2*a0*a1*c0*c1+a0*b0*b1*c1-a0*b1^2*c0-a1^2*c0^2-a1*b0^2*c1+a1*b0*b1*c0)*y^3.

].


Size is: 8.

Polys in M_1 but not in CCGB:
(-a0^2*b0*c1^2+2*a0*a1*b0*c0*c1+a0*b0^2*b1*c1-a0*b0*b1^2*c0-a1^2*b0*c0^2-a1*b0^3*c1+a1*b0^2*b1*c0)*x^2+(-a0*b0^2*c1^2+2*a0*b0*b1*c0*c1-a0*b1^2*c0^2)*x*y+(a0*b0*c0*c1^2-a0*b1*c0^2*c1-a1*b0*c0^2*c1+a1*b1*c0^3-b0^3*c1^2+2*b0^2*b1*c0*c1-b0*b1^2*c0^2)*y^2,


Polys in CCGB but not in M_1:
(-a0*b1+a1*b0)*x^2+(b0*c1-b1*c0)*y^2,

--------------------

Consider M_2:
M_2

M = [

(a2)*x+(b2)*y,
(-a1*b2^2-a2^2*c1+a2*b1*b2)*y^2,
(-a0*b2^2-a2^2*c0+a2*b0*b2)*y^2,
(-a0*b1+a1*b0)*x*y+(-a0*c1+a1*c0)*y^2,
(a1)*x^2+(b1)*x*y+(c1)*y^2,
(a0)*x^2+(b0)*x*y+(c0)*y^2,
(-a0*b1+a1*b0)*x^2+(b0*c1-b1*c0)*y^2,
(-a0^2*c1^2+2*a0*a1*c0*c1+a0*b0*b1*c1-a0*b1^2*c0-a1^2*c0^2-a1*b0^2*c1+a1*b0*b1*c0)*y^3.

].

Size is: 8.

CCGB

C = [

(a2)*x+(b2)*y
(-a1*b2^2-a2^2*c1+a2*b1*b2)*y^2
(-a0*b2^2-a2^2*c0+a2*b0*b2)*y^2
(-a0*b1+a1*b0)*x*y+(-a0*c1+a1*c0)*y^2
(a1)*x^2+(b1)*x*y+(c1)*y^2
(a0)*x^2+(b0)*x*y+(c0)*y^2
(-a0*b1+a1*b0)*x^2+(b0*c1-b1*c0)*y^2
(-a0^2*c1^2+2*a0*a1*c0*c1+a0*b0*b1*c1-a0*b1^2*c0-a1^2*c0^2-a1*b0^2*c1+a1*b0*b1*c0)*y^3.

].


Size is: 8.

Polys in M_2 but not in CCGB:


Polys in CCGB but not in M_2:

--------------------


=================== RGB =================

RGB = [

(a2)*x+(b2)*y
(a0*b2*c1-a1*b2*c0-a2*b0*c1+a2*b1*c0)*y^2
(-a1*b2^2-a2^2*c1+a2*b1*b2)*y^2
(-a0*b2^2-a2^2*c0+a2*b0*b2)*y^2
(a0*a2*c1-a0*b1*b2-a1*a2*c0+a1*b0*b2)*y^2
(a1*b2)*x*y+(-a2*c1+b1*b2)*y^2
(a0*b2)*x*y+(-a2*c0+b0*b2)*y^2
(-a0*b1+a1*b0)*x*y+(-a0*c1+a1*c0)*y^2
(a1)*x^2+(b1)*x*y+(c1)*y^2
(a0)*x^2+(b0)*x*y+(c0)*y^2
(-a0^2*c1^2+2*a0*a1*c0*c1+a0*b0*b1*c1-a0*b1^2*c0-a1^2*c0^2-a1*b0^2*c1+a1*b0*b1*c0)*y^3
(-a0*c1+a1*c0)*x*y^2+(-b0*c1+b1*c0)*y^3
(-a0*b0*c1+a0*b1*c0)*x*y^2+(a0*c0*c1-a1*c0^2-b0^2*c1+b0*b1*c0)*y^3.

].


Size is: 13.

It is not comprehensive.
RGB is not a subset of CGB!
