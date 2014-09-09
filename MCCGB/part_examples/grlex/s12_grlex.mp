
+++++++++++++++++++++++++++++++++++++++

The given ring is:
(0,a,b,l2,l3),(c3,s3,c1,s1),(dp(4),C)

F = {
(-l3)*c3+(-l2)*c1+(a), 
(-l3)*s3+(-l2)*s1+(b), 
c1^2+s1^2-1, 
c3^2+s3^2-1
}.

E = {0}.

N = {}.


Module Comprehensive Groebner Systems: 

Branch 1:
constraints: a!=0,l2!=0,l3!=0,a^2+b^2!=0,
RGB from KSW:
[(2*a*l2)*c1+(2*b*l2)*s1+(-a^2-b^2-l2^2+l3^2)  ,  0]
[(l3)*s3+(l2)*s1+(-b)  ,  0]
[(l3)*c3+(l2)*c1+(-a)  ,  0]
[(4*a^2*l2+4*b^2*l2)*s1^2+(2*a^3+2*a*b^2-2*a*l3^2)*c1+(-2*a^2*b-2*b^3-4*b*l2^2+2*b*l3^2)*s1+(-3*a^2*l2+b^2*l2+l2^3-l2*l3^2)  ,  0]
[(2*b*l2)*c1*s1+(-2*a*l2)*s1^2+(-a^2-b^2-l2^2+l3^2)*c1+(2*a*l2)  ,  0]
[(4*a^2*l2+4*b^2*l2)*s3*s1+(-2*a^3-2*a*b^2+2*a*l2^2)*c3+(-2*a^2*b-2*b^3-2*b*l2^2)*s3+(-4*b*l2*l3)*s1+(3*a^2*l3+3*b^2*l3+l2^2*l3-l3^3)  ,  0]
[(2*b*l2)*c3*s1+(-2*a*l2)*s3*s1+(a^2-b^2-l2^2)*c3+(2*a*b)*s3+(-l2*l3)*c1+(-a*l3)  ,  0]
[(2*a*l2)*c3*s1+(2*b*l2)*s3*s1+(-2*a*b)*c3+(a^2-b^2-l2^2)*s3+(-l2*l3)*s1+(b*l3)  ,  0]
[c1^2+s1^2-1  ,  0]
[(l2)*s3*c1+(-l2)*c3*s1+(b)*c3+(-a)*s3  ,  0]
[(a^2+b^2)*s3*c1+(a^2+b^2)*c3*s1+(-b*l2)*c3+(-a*l2)*s3+(-b*l3)*c1+(-a*l3)*s1  ,  0]
[(l2)*c3*c1+(l2)*s3*s1+(-a)*c3+(-b)*s3+(l3)  ,  0]
[(b)*c3*c1+(-a)*s3*c1+(-a)*c3*s1+(-b)*s3*s1+(l2)*s3+(l3)*s1  ,  0]
[(a)*c3*c1+(b)*s3*c1+(b)*c3*s1+(-a)*s3*s1+(-l2)*c3+(-l3)*c1  ,  0]
[c3^2+s3^2-1  ,  0]

Module Groebner basis: 
[(2*a*l2)*c1+(2*b*l2)*s1+(-a^2-b^2-l2^2+l3^2), 0], 
[(l3)*s3+(l2)*s1+(-b), 0], 
[(l3)*c3+(l2)*c1+(-a), 0], 
[(4*a^2*l2+4*b^2*l2)*s1^2+(2*a^3+2*a*b^2-2*a*l3^2)*c1+(-2*a^2*b-2*b^3-4*b*l2^2+2*b*l3^2)*s1+(-3*a^2*l2+b^2*l2+l2^3-l2*l3^2) , 0].

LPP Set of Module Groebner Basis under specialization:
[ c1 ]
[ s3 ]
[ c3 ]
[ s1^2 ]

Branch 2:
constraints: a^2+b^2=0,b!=0,-l2+l3!=0,l2+l3!=0,l2!=0,l3!=0,
RGB from KSW:
[(4*b*l2^3-4*b*l2*l3^2)*s1+(-4*b^2*l2^2-l2^4+2*l2^2*l3^2-l3^4)  ,  (-4*a^2*l2^2-4*b^2*l2^2)*s1^2+(4*a^2*b*l2+4*b^3*l2)*s1+(-a^4-2*a^2*b^2+2*a^2*l2^2+2*a^2*l3^2-b^4+2*b^2*l2^2+2*b^2*l3^2)]
[(2*a*l2)*c1+(2*b*l2)*s1+(-l2^2+l3^2)  ,  (-a^2-b^2)]
[(2*a*l3^2)*c1+(4*b*l2^2-2*b*l3^2)*s1+(-4*b^2*l2-l2^3+l2*l3^2)  ,  (-4*a^2*l2-4*b^2*l2)*s1^2+(-2*a^3-2*a*b^2)*c1+(2*a^2*b+2*b^3)*s1+(3*a^2*l2+3*b^2*l2)]
[(b*l2^2-b*l3^2)*c1+(a*l2^2-a*l3^2)*s1+(-2*a*b*l2)  ,  (-2*a^2*l2-2*b^2*l2)*c1*s1+(a^2*b+b^3)*c1+(a^3+a*b^2)*s1]
[(2*b^2*l2)*c1+(-2*a*b*l2)*s1+(a*l2^2-a*l3^2)  ,  (-2*a^2*l2-2*b^2*l2)*c1+(a^3+a*b^2)]
[(2*b^2*l3^2)*c1+(-4*a*b*l2^2+2*a*b*l3^2)*s1+(4*a*b^2*l2+a*l2^3-a*l2*l3^2)  ,  (4*a^3*l2+4*a*b^2*l2)*s1^2+(2*a^4+2*a^2*b^2-2*a^2*l3^2-2*b^2*l3^2)*c1+(-2*a^3*b-2*a*b^3)*s1+(-3*a^3*l2-3*a*b^2*l2)]
[(l3)*s3+(l2)*s1+(-b)  ,  0]
[(l3)*c3+(l2)*c1+(-a)  ,  0]
[(b*l2)*c3+(a*l2)*s3+(b*l3)*c1+(a*l3)*s1  ,  (-a^2-b^2)*s3*c1+(-a^2-b^2)*c3*s1]
[(a*l2)*c3+(-b*l2)*s3+(a*l3)*c1+(-b*l3)*s1  ,  (-a^2-b^2)*c3*c1+(a^2+b^2)*s3*s1]
[(4*a*l2^3-4*a*l2*l3^2)*s1^2+(l2^4-2*l2^2*l3^2+l3^4)*c1+(-4*a*b*l2^2)*s1+(-2*a*l2^3+2*a*l2*l3^2)  ,  (-4*a^2*l2^2-4*b^2*l2^2)*c1*s1^2+(4*a^3*l2+4*a*b^2*l2)*s1^2+(a^4+2*a^2*b^2+2*a^2*l2^2-2*a^2*l3^2+b^4+2*b^2*l2^2-2*b^2*l3^2)*c1+(-2*a^3*l2-2*a*b^2*l2)]
[(2*b*l2)*c1*s1+(-2*a*l2)*s1^2+(-l2^2+l3^2)*c1+(2*a*l2)  ,  (-a^2-b^2)*c1]
[(2*b*l3^2)*c1*s1+(-4*a*l2^2+2*a*l3^2)*s1^2+(-l2^3+l2*l3^2)*c1+(4*a*b*l2)*s1+(2*a*l2^2)  ,  (4*a^2*l2+4*b^2*l2)*c1*s1^2+(-2*a^2*b-2*b^3)*c1*s1+(-2*a^3-2*a*b^2)*s1^2+(-a^2*l2-b^2*l2)*c1]
[(4*b*l2)*s3*s1+(-2*a*l3)*c1*s1+(2*b*l3)*s1^2+(-2*a*b)*c3+(-2*b^2-l2^2)*s3+(-l2*l3)*s1+(b*l3)  ,  (2*a^2+2*b^2)*c3*c1*s1+(-2*a^2-2*b^2)*s3*s1^2+(a^2+b^2)*s3]
[(4*a*l2)*s3*s1+(2*b*l3)*c1*s1+(2*a*l3)*s1^2+(2*b^2+l2^2)*c3+(-2*a*b)*s3+(l2*l3)*c1+(a*l3)  ,  (-2*a^2-2*b^2)*s3*c1*s1+(-2*a^2-2*b^2)*c3*s1^2+(-a^2-b^2)*c3]
[c1^2+s1^2-1  ,  0]
[(l2)*s3*c1+(-l2)*c3*s1+(b)*c3+(-a)*s3  ,  0]
[(l2)*c3*c1+(l2)*s3*s1+(-a)*c3+(-b)*s3+(l3)  ,  0]
[(b)*c3*c1+(-a)*s3*c1+(-a)*c3*s1+(-b)*s3*s1+(l2)*s3+(l3)*s1  ,  0]
[(a)*c3*c1+(b)*s3*c1+(b)*c3*s1+(-a)*s3*s1+(-l2)*c3+(-l3)*c1  ,  0]
[c3^2+s3^2-1  ,  0]

Module Groebner basis: 
[(4*b*l2^3-4*b*l2*l3^2)*s1+(-4*b^2*l2^2-l2^4+2*l2^2*l3^2-l3^4), (-4*a^2*l2^2-4*b^2*l2^2)*s1^2+(4*a^2*b*l2+4*b^3*l2)*s1+(-a^4-2*a^2*b^2+2*a^2*l2^2+2*a^2*l3^2-b^4+2*b^2*l2^2+2*b^2*l3^2)], 
[(2*b^2*l2)*c1+(-2*a*b*l2)*s1+(a*l2^2-a*l3^2), (-2*a^2*l2-2*b^2*l2)*c1+(a^3+a*b^2)], 
[(l3)*s3+(l2)*s1+(-b), 0], 
[(l3)*c3+(l2)*c1+(-a) , 0].

LPP Set of Module Groebner Basis under specialization:
[ s1 ]
[ c1 ]
[ s3 ]
[ c3 ]

Branch 3:
constraints: l2=0,a^2+b^2=0,l3^2!=0,
RGB from KSW:
[(l3^2)  ,  (2*a*l2)*c1+(2*b*l2)*s1+(-a^2-b^2-l2^2)]
[(b*l3)  ,  (2*a*l2)*s3*c1+(2*b*l2)*s3*s1+(-a^2-b^2-l2^2)*s3+(-l2*l3)*s1]
[(a*l3)  ,  (-2*b*l2)*s3*c1+(2*a*l2)*s3*s1+(-a^2-b^2+l2^2)*c3+(l2*l3)*c1]
[(b^2)  ,  (2*a*l2)*s3^2*c1+(2*b*l2)*s3^2*s1+(-a^2-b^2-l2^2)*s3^2+(l2^2)*s1^2+(-2*b*l2)*s1]
[(a*b)  ,  (-2*b*l2)*s3^2*c1+(2*a*l2)*s3^2*s1+(-a^2-b^2+l2^2)*c3*s3+(-l2^2)*c1*s1+(b*l2)*c1+(-a*l2)*s1]
[(a^2)  ,  (-2*a*l2)*s3^2*c1+(-2*b*l2)*s3^2*s1+(a^2+b^2+l2^2)*s3^2+(-l2^2)*s1^2+(2*b*l2)*s1+(-a^2-b^2)]
[(l3)*s3+(-b)  ,  (l2)*s1]
[(l3)*c3+(-a)  ,  (l2)*c1]
[(b)*c3+(-a)*s3  ,  (l2)*s3*c1+(-l2)*c3*s1]
[(a)*c3+(b)*s3+(-l3)  ,  (-l2)*c3*c1+(-l2)*s3*s1]
[c1^2+s1^2-1  ,  0]
[c3^2+s3^2-1  ,  0]

Module Groebner basis: 
[(l3^2) , (2*a*l2)*c1+(2*b*l2)*s1+(-a^2-b^2-l2^2)].

LPP Set of Module Groebner Basis under specialization:
[ 1 ]

Branch 4:
constraints: l2=0,l3^2=0,b*l3=0,a*l3=0,a^2+b^2=0,b^2!=0,
RGB from KSW:
[(b^2)  ,  (2*a*l2)*s3^2*c1+(2*b*l2)*s3^2*s1+(-a^2-b^2-l2^2)*s3^2+(l2^2)*s1^2+(-2*b*l2)*s1]
[(a*b)  ,  (-2*b*l2)*s3^2*c1+(2*a*l2)*s3^2*s1+(-a^2-b^2+l2^2)*c3*s3+(-l2^2)*c1*s1+(b*l2)*c1+(-a*l2)*s1]
[(a^2)  ,  (-2*a*l2)*s3^2*c1+(-2*b*l2)*s3^2*s1+(a^2+b^2+l2^2)*s3^2+(-l2^2)*s1^2+(2*b*l2)*s1+(-a^2-b^2)]
[(l3)*s3+(-b)  ,  (l2)*s1]
[(l3)*c3+(-a)  ,  (l2)*c1]
[(b)*c3+(-a)*s3  ,  (l2)*s3*c1+(-l2)*c3*s1]
[(a)*c3+(b)*s3+(-l3)  ,  (-l2)*c3*c1+(-l2)*s3*s1]
[c1^2+s1^2-1  ,  0]
[c3^2+s3^2-1  ,  0]

Module Groebner basis: 
[(b^2) , (2*a*l2)*s3^2*c1+(2*b*l2)*s3^2*s1+(-a^2-b^2-l2^2)*s3^2+(l2^2)*s1^2+(-2*b*l2)*s1].

LPP Set of Module Groebner Basis under specialization:
[ 1 ]

Branch 5:
constraints: l3=0,l2=0,b=0,a=0,
RGB from KSW:
[c1^2+s1^2-1  ,  0]
[c3^2+s3^2-1  ,  0]

Module Groebner basis: 
[c1^2+s1^2-1, 0], 
[c3^2+s3^2-1 , 0].

LPP Set of Module Groebner Basis under specialization:
[ c1^2 ]
[ c3^2 ]

Branch 6:
constraints: l3=0,a^2+b^2=0,l2!=0,l2^2!=0,
RGB from KSW:
[(l2^2)  ,  (2*a*l3)*c3+(2*b*l3)*s3+(-a^2-b^2-l3^2)]
[(b*l2)  ,  (2*a*l3)*c3*s1+(2*b*l3)*s3*s1+(-l2*l3)*s3+(-a^2-b^2-l3^2)*s1]
[(a*l2)  ,  (-2*b*l3)*c3*s1+(2*a*l3)*s3*s1+(l2*l3)*c3+(-a^2-b^2+l3^2)*c1]
[(b^2)  ,  (2*a*l3)*c3*s1^2+(2*b*l3)*s3*s1^2+(-l2*l3)*s3*s1+(-a^2-b^2-l3^2)*s1^2+(-b*l3)*s3]
[(a*b)  ,  (-2*b*l3)*c3*s1^2+(2*a*l3)*s3*s1^2+(l2*l3)*c3*s1+(-a^2-b^2+l3^2)*c1*s1+(-a*l3)*s3]
[(a^2)  ,  (-2*a*l3)*c3*s1^2+(-2*b*l3)*s3*s1^2+(l2*l3)*s3*s1+(a^2+b^2+l3^2)*s1^2+(b*l3)*s3+(-a^2-b^2)]
[(l2)*s1+(-b)  ,  (l3)*s3]
[(l2)*c1+(-a)  ,  (l3)*c3]
[(b)*c1+(-a)*s1  ,  (-l3)*s3*c1+(l3)*c3*s1]
[(a)*c1+(b)*s1+(-l2)  ,  (-l3)*c3*c1+(-l3)*s3*s1]
[c1^2+s1^2-1  ,  0]
[c3^2+s3^2-1  ,  0]

Module Groebner basis: 
[(l2^2) , (2*a*l3)*c3+(2*b*l3)*s3+(-a^2-b^2-l3^2)].

LPP Set of Module Groebner Basis under specialization:
[ 1 ]

Branch 7:
constraints: l2+l3=0,a^2+b^2=0,-l3!=0,l3!=0,2*b^2!=0,
RGB from KSW:
[(2*b^2)  ,  (-a^2-b^2)*c3*c1+(a^2+b^2)*s3*s1+(a*l2+a*l3)*c3+(-b*l2-b*l3)*s3+(a*l2+a*l3)*c1+(-b*l2-b*l3)*s1+(-a^2-b^2)]
[(2*a*b)  ,  (a^2+b^2)*s3*c1+(a^2+b^2)*c3*s1+(-b*l2-b*l3)*c3+(-a*l2-a*l3)*s3+(-b*l2-b*l3)*c1+(-a*l2-a*l3)*s1]
[(2*a^2)  ,  (a^2+b^2)*c3*c1+(-a^2-b^2)*s3*s1+(-a*l2-a*l3)*c3+(b*l2+b*l3)*s3+(-a*l2-a*l3)*c1+(b*l2+b*l3)*s1+(-a^2-b^2)]
[(2*a*l3)*c1+(2*b*l3)*s1  ,  (-2*a*l2-2*a*l3)*c1+(-2*b*l2-2*b*l3)*s1+(a^2+b^2+l2^2-l3^2)]
[(l3)*s3+(-l3)*s1+(-b)  ,  (l2+l3)*s1]
[(l3)*c3+(-l3)*c1+(-a)  ,  (l2+l3)*c1]
[(b)*c3+(-a)*s3+(-b)*c1+(a)*s1  ,  (l2+l3)*s3*c1+(-l2-l3)*c3*s1]
[(a)*c3+(b)*s3+(a)*c1+(b)*s1  ,  (-l2-l3)*c3*c1+(-l2-l3)*s3*s1+(-l2-l3)]
[(2*b*l3)*c1*s1+(-2*a*l3)*s1^2+(2*a*l3)  ,  (-2*b*l2-2*b*l3)*c1*s1+(2*a*l2+2*a*l3)*s1^2+(a^2+b^2+l2^2-l3^2)*c1+(-2*a*l2-2*a*l3)]
[c1^2+s1^2-1  ,  0]
[c3^2+s3^2-1  ,  0]

Module Groebner basis: 
[(2*b^2) , (-a^2-b^2)*c3*c1+(a^2+b^2)*s3*s1+(a*l2+a*l3)*c3+(-b*l2-b*l3)*s3+(a*l2+a*l3)*c1+(-b*l2-b*l3)*s1+(-a^2-b^2)].

LPP Set of Module Groebner Basis under specialization:
[ 1 ]

Branch 8:
constraints: l2+l3=0,b=0,a=0,l3!=0,l3!=0,
RGB from KSW:
[(l3)*s3+(-l3)*s1  ,  (l2+l3)*s1+(-b)]
[(l3)*c3+(-l3)*c1  ,  (l2+l3)*c1+(-a)]
[c1^2+s1^2-1  ,  0]
[c3^2+s3^2-1  ,  0]

Module Groebner basis: 
[(l3)*s3+(-l3)*s1, (l2+l3)*s1+(-b)], 
[(l3)*c3+(-l3)*c1, (l2+l3)*c1+(-a)], 
[c1^2+s1^2-1 , 0].

LPP Set of Module Groebner Basis under specialization:
[ s3 ]
[ c3 ]
[ c1^2 ]

Branch 9:
constraints: b=0,a=0,l2!=0,l3!=0,l2+l3!=0,l2^2-l3^2!=0,
RGB from KSW:
[(l2^2-l3^2)  ,  (-2*a*l2)*c1+(-2*b*l2)*s1+(a^2+b^2)]
[(l3)*s3+(l2)*s1  ,  (-b)]
[(l2)*s3+(l3)*s1  ,  (b)*c3*c1+(-a)*s3*c1+(-a)*c3*s1+(-b)*s3*s1]
[(l3)*c3+(l2)*c1  ,  (-a)]
[(l2)*c3+(l3)*c1  ,  (-a)*c3*c1+(-b)*s3*c1+(-b)*c3*s1+(a)*s3*s1]
[c1^2+s1^2-1  ,  0]
[c3^2+s3^2-1  ,  0]

Module Groebner basis: 
[(l2^2-l3^2) , (-2*a*l2)*c1+(-2*b*l2)*s1+(a^2+b^2)].

LPP Set of Module Groebner Basis under specialization:
[ 1 ]

Branch 10:
constraints: b=0,a=0,l2^2-l3^2=0,l2!=0,l3!=0,l2+l3!=0,l3!=0,
RGB from KSW:
[(l3)*s3+(l2)*s1  ,  (-b)]
[(l2)*s3+(l3)*s1  ,  (b)*c3*c1+(-a)*s3*c1+(-a)*c3*s1+(-b)*s3*s1]
[(l3)*c3+(l2)*c1  ,  (-a)]
[(l2)*c3+(l3)*c1  ,  (-a)*c3*c1+(-b)*s3*c1+(-b)*c3*s1+(a)*s3*s1]
[c1^2+s1^2-1  ,  0]
[c3^2+s3^2-1  ,  0]

Module Groebner basis: 
[(l3)*s3+(l2)*s1, (-b)], 
[(l3)*c3+(l2)*c1, (-a)], 
[c1^2+s1^2-1 , 0].

LPP Set of Module Groebner Basis under specialization:
[ s3 ]
[ c3 ]
[ c1^2 ]

Branch 11:
constraints: l2-l3=0,a^2+b^2=0,l3!=0,2*l3!=0,b!=0,2*b^2!=0,
RGB from KSW:
[(2*b^2)  ,  (a^2+b^2)*c3*c1+(-a^2-b^2)*s3*s1+(-a*l2+a*l3)*c3+(b*l2-b*l3)*s3+(a*l2-a*l3)*c1+(-b*l2+b*l3)*s1+(-a^2-b^2)]
[(2*a*b)  ,  (-a^2-b^2)*s3*c1+(-a^2-b^2)*c3*s1+(b*l2-b*l3)*c3+(a*l2-a*l3)*s3+(-b*l2+b*l3)*c1+(-a*l2+a*l3)*s1]
[(2*a^2)  ,  (-a^2-b^2)*c3*c1+(a^2+b^2)*s3*s1+(a*l2-a*l3)*c3+(-b*l2+b*l3)*s3+(-a*l2+a*l3)*c1+(b*l2-b*l3)*s1+(-a^2-b^2)]
[(2*a*l3)*c1+(2*b*l3)*s1  ,  (2*a*l2-2*a*l3)*c1+(2*b*l2-2*b*l3)*s1+(-a^2-b^2-l2^2+l3^2)]
[(l3)*s3+(l3)*s1+(-b)  ,  (l2-l3)*s1]
[(l3)*c3+(l3)*c1+(-a)  ,  (l2-l3)*c1]
[(b)*c3+(-a)*s3+(b)*c1+(-a)*s1  ,  (l2-l3)*s3*c1+(-l2+l3)*c3*s1]
[(a)*c3+(b)*s3+(-a)*c1+(-b)*s1  ,  (-l2+l3)*c3*c1+(-l2+l3)*s3*s1+(l2-l3)]
[(2*b*l3)*c1*s1+(-2*a*l3)*s1^2+(2*a*l3)  ,  (2*b*l2-2*b*l3)*c1*s1+(-2*a*l2+2*a*l3)*s1^2+(-a^2-b^2-l2^2+l3^2)*c1+(2*a*l2-2*a*l3)]
[c1^2+s1^2-1  ,  0]
[c3^2+s3^2-1  ,  0]

Module Groebner basis: 
[(2*b^2) , (a^2+b^2)*c3*c1+(-a^2-b^2)*s3*s1+(-a*l2+a*l3)*c3+(b*l2-b*l3)*s3+(a*l2-a*l3)*c1+(-b*l2+b*l3)*s1+(-a^2-b^2)].

LPP Set of Module Groebner Basis under specialization:
[ 1 ]

Branch 12:
constraints: a=0,b^2!=0,b!=0,l2!=0,l3!=0,
RGB from KSW:
[(2*b*l2)*s1+(-b^2-l2^2+l3^2)  ,  (2*a*l2)*c1+(-a^2)]
[(l3)*s3+(l2)*s1+(-b)  ,  0]
[(l3)*c3+(l2)*c1  ,  (-a)]
[c1^2+s1^2-1  ,  0]
[(l2)*s3*c1+(-l2)*c3*s1+(b)*c3  ,  (-a)*s3]
[(b)*s3*c1+(b)*c3*s1+(-l2)*c3+(-l3)*c1  ,  (a)*c3*c1+(-a)*s3*s1]
[(l2)*c3*c1+(l2)*s3*s1+(-b)*s3+(l3)  ,  (-a)*c3]
[(b)*c3*c1+(-b)*s3*s1+(l2)*s3+(l3)*s1  ,  (-a)*s3*c1+(-a)*c3*s1]
[c3^2+s3^2-1  ,  0]

Module Groebner basis: 
[(2*b*l2)*s1+(-b^2-l2^2+l3^2), (2*a*l2)*c1+(-a^2)], 
[(l3)*s3+(l2)*s1+(-b), 0], 
[(l3)*c3+(l2)*c1, (-a)], 
[c1^2+s1^2-1 , 0].

LPP Set of Module Groebner Basis under specialization:
[ s1 ]
[ s3 ]
[ c3 ]
[ c1^2 ]

Branch 13:
constraints: l2=0,a=0,b!=0,b^2-l3^2!=0,
RGB from KSW:
[(b^2-l3^2)  ,  (-2*a*l2)*c1+(-2*b*l2)*s1+(a^2+l2^2)]
[(l3)*s3+(-b)  ,  (l2)*s1]
[(b)*s3+(-l3)  ,  (-l2)*c3*c1+(-l2)*s3*s1+(a)*c3]
[(l3)*c3  ,  (l2)*c1+(-a)]
[(b)*c3  ,  (l2)*s3*c1+(-l2)*c3*s1+(-a)*s3]
[c1^2+s1^2-1  ,  0]
[c3^2+s3^2-1  ,  0]

Module Groebner basis: 
[(b^2-l3^2) , (-2*a*l2)*c1+(-2*b*l2)*s1+(a^2+l2^2)].

LPP Set of Module Groebner Basis under specialization:
[ 1 ]

Branch 14:
constraints: l2=0,a=0,b^2-l3^2=0,b!=0,l3!=0,
RGB from KSW:
[(l3)*s3+(-b)  ,  (l2)*s1]
[(b)*s3+(-l3)  ,  (-l2)*c3*c1+(-l2)*s3*s1+(a)*c3]
[(l3)*c3  ,  (l2)*c1+(-a)]
[(b)*c3  ,  (l2)*s3*c1+(-l2)*c3*s1+(-a)*s3]
[c1^2+s1^2-1  ,  0]
[c3^2+s3^2-1  ,  0]

Module Groebner basis: 
[(l3)*s3+(-b), (l2)*s1], 
[(l3)*c3, (l2)*c1+(-a)], 
[c1^2+s1^2-1 , 0].

LPP Set of Module Groebner Basis under specialization:
[ s3 ]
[ c3 ]
[ c1^2 ]

Branch 15:
constraints: l3=0,a=0,b!=0,l2!=0,b^2-l2^2!=0,
RGB from KSW:
[(b^2-l2^2)  ,  (-2*b*l3)*s3+(2*a*l2)*c1+(-a^2+l3^2)]
[(l2)*s1+(-b)  ,  (l3)*s3]
[(b)*s1+(-l2)  ,  (-l3)*c3*c1+(-l3)*s3*s1+(a)*c1]
[(l2)*c1  ,  (l3)*c3+(-a)]
[(b)*c1  ,  (-l3)*s3*c1+(l3)*c3*s1+(-a)*s1]
[c1^2+s1^2-1  ,  0]
[c3^2+s3^2-1  ,  0]

Module Groebner basis: 
[(b^2-l2^2) , (-2*b*l3)*s3+(2*a*l2)*c1+(-a^2+l3^2)].

LPP Set of Module Groebner Basis under specialization:
[ 1 ]

Branch 16:
constraints: l3=0,a=0,b^2-l2^2=0,b!=0,l2!=0,l2!=0,
RGB from KSW:
[(l2)*s1+(-b)  ,  (l3)*s3]
[(b)*s1+(-l2)  ,  (-l3)*c3*c1+(-l3)*s3*s1+(a)*c1]
[(l2)*c1  ,  (l3)*c3+(-a)]
[(b)*c1  ,  (-l3)*s3*c1+(l3)*c3*s1+(-a)*s1]
[c1^2+s1^2-1  ,  0]
[c3^2+s3^2-1  ,  0]

Module Groebner basis: 
[(l2)*s1+(-b), (l3)*s3], 
[(l2)*c1, (l3)*c3+(-a)], 
[c3^2+s3^2-1 , 0].

LPP Set of Module Groebner Basis under specialization:
[ s1 ]
[ c1 ]
[ c3^2 ]

Branch 17:
constraints: l3=0,a^2+b^2!=0,a!=0,a^2+b^2-l2^2!=0,
RGB from KSW:
[(a^2+b^2-l2^2)  ,  (-2*a*l3)*c3+(-2*b*l3)*s3+(l3^2)]
[(l2)*s1+(-b)  ,  (l3)*s3]
[(l2)*c1+(-a)  ,  (l3)*c3]
[(b)*c1+(-a)*s1  ,  (-l3)*s3*c1+(l3)*c3*s1]
[(a)*c1+(b)*s1+(-l2)  ,  (-l3)*c3*c1+(-l3)*s3*s1]
[c1^2+s1^2-1  ,  0]
[c3^2+s3^2-1  ,  0]

Module Groebner basis: 
[(a^2+b^2-l2^2) , (-2*a*l3)*c3+(-2*b*l3)*s3+(l3^2)].

LPP Set of Module Groebner Basis under specialization:
[ 1 ]

Branch 18:
constraints: l3=0,a^2+b^2-l2^2=0,a^2+b^2!=0,a!=0,l2!=0,
RGB from KSW:
[(l2)*s1+(-b)  ,  (l3)*s3]
[(l2)*c1+(-a)  ,  (l3)*c3]
[(b)*c1+(-a)*s1  ,  (-l3)*s3*c1+(l3)*c3*s1]
[(a)*c1+(b)*s1+(-l2)  ,  (-l3)*c3*c1+(-l3)*s3*s1]
[c1^2+s1^2-1  ,  0]
[c3^2+s3^2-1  ,  0]

Module Groebner basis: 
[(l2)*s1+(-b), (l3)*s3], 
[(l2)*c1+(-a), (l3)*c3], 
[c3^2+s3^2-1 , 0].

LPP Set of Module Groebner Basis under specialization:
[ s1 ]
[ c1 ]
[ c3^2 ]

Branch 19:
constraints: l2=0,a^2+b^2!=0,a!=0,l3!=0,a^2+b^2-l3^2!=0,
RGB from KSW:
[(a^2+b^2-l3^2)  ,  (-2*a*l2)*c1+(-2*b*l2)*s1+(l2^2)]
[(l3)*s3+(-b)  ,  (l2)*s1]
[(l3)*c3+(-a)  ,  (l2)*c1]
[(b)*c3+(-a)*s3  ,  (l2)*s3*c1+(-l2)*c3*s1]
[(a)*c3+(b)*s3+(-l3)  ,  (-l2)*c3*c1+(-l2)*s3*s1]
[c1^2+s1^2-1  ,  0]
[c3^2+s3^2-1  ,  0]

Module Groebner basis: 
[(a^2+b^2-l3^2) , (-2*a*l2)*c1+(-2*b*l2)*s1+(l2^2)].

LPP Set of Module Groebner Basis under specialization:
[ 1 ]

Branch 20:
constraints: l2=0,a^2+b^2-l3^2=0,a^2+b^2!=0,a!=0,l3!=0,l3!=0,
RGB from KSW:
[(l3)*s3+(-b)  ,  (l2)*s1]
[(l3)*c3+(-a)  ,  (l2)*c1]
[(b)*c3+(-a)*s3  ,  (l2)*s3*c1+(-l2)*c3*s1]
[(a)*c3+(b)*s3+(-l3)  ,  (-l2)*c3*c1+(-l2)*s3*s1]
[c1^2+s1^2-1  ,  0]
[c3^2+s3^2-1  ,  0]

Module Groebner basis: 
[(l3)*s3+(-b), (l2)*s1], 
[(l3)*c3+(-a), (l2)*c1], 
[c1^2+s1^2-1 , 0].

LPP Set of Module Groebner Basis under specialization:
[ s3 ]
[ c3 ]
[ c1^2 ]




Comprehensive Groebner Basis: 

(a*l2)*c1+(b*l2)*s1+(-a^2-b^2-l2^2+l3^2)/2,
(a^2*l2)*c1+(a*b*l2)*s1+(-a^3-a*b^2-a*l2^2+a*l3^2)/2,
(l3)*s3+(l2)*s1+(-b),
(b*l3)*s3+(-a*l2)*c1+(a^2-b^2+l2^2-l3^2)/2,
(l3)*c3+(l2)*c1+(-a),
(a*l3)*c3+(b*l3)*s3+(-a^2-b^2+l2^2-l3^2)/2,
(a^2*l2+b^2*l2)*s1^2+(a^3+a*b^2-a*l3^2)/2*c1+(-a^2*b-b^3-2*b*l2^2+b*l3^2)/2*s1+(-3*a^2*l2+b^2*l2+l2^3-l2*l3^2)/4,
(a^2*l2^2+b^2*l2^2)*s1^2+(-a^2*b*l2-b^3*l2-b*l2^3+b*l2*l3^2)*s1+(a^4+2*a^2*b^2-2*a^2*l2^2-2*a^2*l3^2+b^4+2*b^2*l2^2-2*b^2*l3^2+l2^4-2*l2^2*l3^2+l3^4)/4,
c1^2+s1^2-1,
(a^2+b^2)*c3*c1+(-a^2-b^2)*s3*s1+(-a*l2-a*l3)*c3+(b*l2+b*l3)*s3+(-a*l2-a*l3)*c1+(b*l2+b*l3)*s1+(a^2-b^2),
(a^2+b^2)*c3*c1+(-a^2-b^2)*s3*s1+(-a*l2+a*l3)*c3+(b*l2-b*l3)*s3+(a*l2-a*l3)*c1+(-b*l2+b*l3)*s1+(-a^2+b^2),
c3^2+s3^2-1,
(a*l2)*s3^2*c1+(b*l2)*s3^2*s1+(-a^2-b^2-l2^2)/2*s3^2+(l2^2)/2*s1^2+(-b*l2)*s1+(b^2)/2.




Size is: 13.

================ Algorithm 1 =====================

---------------------

M_1

M = [

(a*l2)*c1+(b*l2)*s1+(-a^2-b^2-l2^2+l3^2)/2,
(l3)*s3+(l2)*s1+(-b),
(l3)*c3+(l2)*c1+(-a),
(a*l3)*c3+(b*l3)*s3+(-a^2-b^2+l2^2-l3^2)/2,
(a^2*l2^2+b^2*l2^2)*s1^2+(-a^2*b*l2-b^3*l2-b*l2^3+b*l2*l3^2)*s1+(a^4+2*a^2*b^2-2*a^2*l2^2-2*a^2*l3^2+b^4+2*b^2*l2^2-2*b^2*l3^2+l2^4-2*l2^2*l3^2+l3^4)/4,
c1^2+s1^2-1,
c3^2+s3^2-1.

].

Size is: 7.

It is comprehensive and minimal.

========================= Algorithm 3 ======================

C = [

(a*l2)*c1+(b*l2)*s1+(-a^2-b^2-l2^2+l3^2)/2
(l3)*s3+(l2)*s1+(-b)
(l3)*c3+(l2)*c1+(-a)
(a*l3)*c3+(b*l3)*s3+(-a^2-b^2+l2^2-l3^2)/2
(a^2*l2^2+b^2*l2^2)*s1^2+(-a^2*b*l2-b^3*l2-b*l2^3+b*l2*l3^2)*s1+(a^4+2*a^2*b^2-2*a^2*l2^2-2*a^2*l3^2+b^4+2*b^2*l2^2-2*b^2*l3^2+l2^4-2*l2^2*l3^2+l3^4)/4
c1^2+s1^2-1
c3^2+s3^2-1.

].


Size is: 7.

It is comprehensive and minimal.
=================================
Compare MCGBs with CCGB:

Consider M_1:
M_1

M = [

(a*l2)*c1+(b*l2)*s1+(-a^2-b^2-l2^2+l3^2)/2,
(l3)*s3+(l2)*s1+(-b),
(l3)*c3+(l2)*c1+(-a),
(a*l3)*c3+(b*l3)*s3+(-a^2-b^2+l2^2-l3^2)/2,
(a^2*l2^2+b^2*l2^2)*s1^2+(-a^2*b*l2-b^3*l2-b*l2^3+b*l2*l3^2)*s1+(a^4+2*a^2*b^2-2*a^2*l2^2-2*a^2*l3^2+b^4+2*b^2*l2^2-2*b^2*l3^2+l2^4-2*l2^2*l3^2+l3^4)/4,
c1^2+s1^2-1,
c3^2+s3^2-1.

].

Size is: 7.

CCGB

C = [

(a*l2)*c1+(b*l2)*s1+(-a^2-b^2-l2^2+l3^2)/2
(l3)*s3+(l2)*s1+(-b)
(l3)*c3+(l2)*c1+(-a)
(a*l3)*c3+(b*l3)*s3+(-a^2-b^2+l2^2-l3^2)/2
(a^2*l2^2+b^2*l2^2)*s1^2+(-a^2*b*l2-b^3*l2-b*l2^3+b*l2*l3^2)*s1+(a^4+2*a^2*b^2-2*a^2*l2^2-2*a^2*l3^2+b^4+2*b^2*l2^2-2*b^2*l3^2+l2^4-2*l2^2*l3^2+l3^4)/4
c1^2+s1^2-1
c3^2+s3^2-1.

].


Size is: 7.

Polys in M_1 but not in CCGB:


Polys in CCGB but not in M_1:

--------------------


=================== RGB =================

RGB = [

(a*l2)*c1+(b*l2)*s1+(-a^2-b^2-l2^2+l3^2)/2
(l3)*s3+(l2)*s1+(-b)
(l3)*c3+(l2)*c1+(-a)
(a^2*l2+b^2*l2)*s1^2+(a^3+a*b^2-a*l3^2)/2*c1+(-a^2*b-b^3-2*b*l2^2+b*l3^2)/2*s1+(-3*a^2*l2+b^2*l2+l2^3-l2*l3^2)/4
(b*l2)*c1*s1+(-a*l2)*s1^2+(-a^2-b^2-l2^2+l3^2)/2*c1+(a*l2)
(a^2*l2+b^2*l2)*s3*s1+(-a^3-a*b^2+a*l2^2)/2*c3+(-a^2*b-b^3-b*l2^2)/2*s3+(-b*l2*l3)*s1+(3*a^2*l3+3*b^2*l3+l2^2*l3-l3^3)/4
(b*l2)*c3*s1+(-a*l2)*s3*s1+(a^2-b^2-l2^2)/2*c3+(a*b)*s3+(-l2*l3)/2*c1+(-a*l3)/2
(a*l2)*c3*s1+(b*l2)*s3*s1+(-a*b)*c3+(a^2-b^2-l2^2)/2*s3+(-l2*l3)/2*s1+(b*l3)/2
c1^2+s1^2-1
(l2)*s3*c1+(-l2)*c3*s1+(b)*c3+(-a)*s3
(a^2+b^2)*s3*c1+(a^2+b^2)*c3*s1+(-b*l2)*c3+(-a*l2)*s3+(-b*l3)*c1+(-a*l3)*s1
(l2)*c3*c1+(l2)*s3*s1+(-a)*c3+(-b)*s3+(l3)
(b)*c3*c1+(-a)*s3*c1+(-a)*c3*s1+(-b)*s3*s1+(l2)*s3+(l3)*s1
(a)*c3*c1+(b)*s3*c1+(b)*c3*s1+(-a)*s3*s1+(-l2)*c3+(-l3)*c1
c3^2+s3^2-1.

].


Size is: 15.

It is not comprehensive.
RGB is not a subset of CGB!
