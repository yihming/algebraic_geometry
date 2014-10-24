The given ring is:
(0,a,b,c),(x,y),(dp(2),C)

F = {
(a)*x2y+(a+3b2), 
(ab-ac)*xy+(ab)*x+(5c)
}.

E = {0}.

N = {}.

=============================


RGB is not the CCGB.

--------------------------------

RGB = [

/* f_1 = */ (abc)*x+(a2b2-2a2bc+a2c2+3ab4-6ab3c+3ab2c2)/5*y+(a2b2-a2bc+3ab4-3ab3c+25c2)/5,
/* f_2 = */ (a2b2-2a2bc+a2c2+3ab4-6ab3c+3ab2c2)/3*y2+(2a2b2-2a2bc+6ab4-6ab3c+25c2)/3*y+(a2b2+3ab4)/3,
/* f_3 = */ (c)*xy+(-ab+ac-3b3+3b2c)/5*y+(-ab-3b3)/5,
/* f_4 = */ (ab)*xy+(ab)*x+(-a2b+a2c-3ab3+3ab2c)/5*y+(-a2b-3ab3+25c)/5,
/* f_6 = */ (ab)*x2+(5c)*x+(-ab+ac-3b3+3b2c),
/* f_8 = */ (a)*x2y+(a+3b2);

].


Size is : 6.

It is comprehensive, but not minimal.

------------------------------

C = [

/* f_1 = */ (abc)*x+(a2b2-2a2bc+a2c2+3ab4-6ab3c+3ab2c2)/5*y+(a2b2-a2bc+3ab4-3ab3c+25c2)/5,
/* f_2 = */ (a2b2-2a2bc+a2c2+3ab4-6ab3c+3ab2c2)/3*y2+(2a2b2-2a2bc+6ab4-6ab3c+25c2)/3*y+(a2b2+3ab4)/3,
/* f_4 = */ (ab)*xy+(ab)*x+(-a2b+a2c-3ab3+3ab2c)/5*y+(-a2b-3ab3+25c)/5,
/* f_6 = */ (ab)*x2+(5c)*x+(-ab+ac-3b3+3b2c),
/* f_8 = */ (a)*x2y+(a+3b2);

].


Size is: 5.

It is comprehensive and minimal.
--------------------------

M_1

M = [

/* f_1 = */ (abc)*x+(a2b2-2a2bc+a2c2+3ab4-6ab3c+3ab2c2)/5*y+(a2b2-a2bc+3ab4-3ab3c+25c2)/5,
/* f_2 = */ (a2b2-2a2bc+a2c2+3ab4-6ab3c+3ab2c2)/3*y2+(2a2b2-2a2bc+6ab4-6ab3c+25c2)/3*y+(a2b2+3ab4)/3,
/* f_4 = */ (ab)*xy+(ab)*x+(-a2b+a2c-3ab3+3ab2c)/5*y+(-a2b-3ab3+25c)/5,
/* f_6 = */ (ab)*x2+(5c)*x+(-ab+ac-3b3+3b2c),
/* f_8 = */ (a)*x2y+(a+3b2);

].

Size is: 5.

It is comprehensive and minimal.

Normal form of Split form of M_1 :
M = [

/* f_1 = */ (abc)*x+(a2b2-2a2bc+a2c2+3ab4-6ab3c+3ab2c2)/5*y+(a2b2-a2bc+3ab4-3ab3c+25c2)/5,
/* f_2 = */ (a2b2-2a2bc+a2c2+3ab4-6ab3c+3ab2c2)/3*y2+(2a2b2-2a2bc+6ab4-6ab3c+25c2)/3*y+(a2b2+3ab4)/3,
/* f_4 = */ (ab)*xy+(ab)*x+(-a2b+a2c-3ab3+3ab2c)/5*y+(-a2b-3ab3+25c)/5,
/* f_6 = */ (ab)*x2+(5c)*x+(-ab+ac-3b3+3b2c),
/* f_8 = */ (a)*x2y+(a+3b2);

].

Size is : 5.

It is comprehensive and minimal.
==================================


Comprehensive Groebner Basis: 

/* f_1 = */ (abc)*x+(a2b2-2a2bc+a2c2+3ab4-6ab3c+3ab2c2)/5*y+(a2b2-a2bc+3ab4-3ab3c+25c2)/5,
/* f_2 = */ (a2b2-2a2bc+a2c2+3ab4-6ab3c+3ab2c2)/3*y2+(2a2b2-2a2bc+6ab4-6ab3c+25c2)/3*y+(a2b2+3ab4)/3,
/* f_3 = */ (c)*xy+(-ab+ac-3b3+3b2c)/5*y+(-ab-3b3)/5,
/* f_4 = */ (ab)*xy+(ab)*x+(-a2b+a2c-3ab3+3ab2c)/5*y+(-a2b-3ab3+25c)/5,
/* f_5 = */ (ab-ac)*xy+(ab)*x+(5c),
/* f_6 = */ (ab)*x2+(5c)*x+(-ab+ac-3b3+3b2c),
/* f_7 = */ (ab-ac)*xy2+(ab-ac)*xy+(a2b-a2c+3ab3-3ab2c+25c)/5*y+(a2b+3ab3)/5,
/* f_8 = */ (a)*x2y+(a+3b2);




Size is: 8.

--------------------------------------


Module Comprehensive Groebner Systems: 

Branch 1:
constraints: a!=0,b!=0,c!=0,3*b^2+a!=0,-b+c!=0,
RGB from KSW:
[(5*a*b*c)*x+(a^2*b^2-2*a^2*b*c+a^2*c^2+3*a*b^4-6*a*b^3*c+3*a*b^2*c^2)*y+(a^2*b^2-a^2*b*c+3*a*b^4-3*a*b^3*c+25*c^2)  ,  0]
[(a^2*b^2-2*a^2*b*c+a^2*c^2+3*a*b^4-6*a*b^3*c+3*a*b^2*c^2)*y^2+(2*a^2*b^2-2*a^2*b*c+6*a*b^4-6*a*b^3*c+25*c^2)*y+(a^2*b^2+3*a*b^4)  ,  0]
[(5*c)*x*y+(-a*b+a*c-3*b^3+3*b^2*c)*y+(-a*b-3*b^3)  ,  0]
[(5*a*b)*x*y+(5*a*b)*x+(-a^2*b+a^2*c-3*a*b^3+3*a*b^2*c)*y+(-a^2*b-3*a*b^3+25*c)  ,  0]
[(a*b)*x^2+(5*c)*x+(-a*b+a*c-3*b^3+3*b^2*c)  ,  0]
[(a)*x^2*y+(a+3*b^2)  ,  0]

Module Groebner basis: 
[(5*a*b*c)*x+(a^2*b^2-2*a^2*b*c+a^2*c^2+3*a*b^4-6*a*b^3*c+3*a*b^2*c^2)*y+(a^2*b^2-a^2*b*c+3*a*b^4-3*a*b^3*c+25*c^2), 0], 
[(a^2*b^2-2*a^2*b*c+a^2*c^2+3*a*b^4-6*a*b^3*c+3*a*b^2*c^2)*y^2+(2*a^2*b^2-2*a^2*b*c+6*a*b^4-6*a*b^3*c+25*c^2)*y+(a^2*b^2+3*a*b^4) , 0].

LPP Set of Module Groebner Basis under specialization:
[ x ]
[ y^2 ]

Branch 2:
constraints: c=0,b!=0,3*b^2+a!=0,a!=0,
RGB from KSW:
[(a*b+3*b^3)*y+(a*b+3*b^3)  ,  (-5*c)*x*y+(-a*c-3*b^2*c)*y]
[(a*b)*x*y+(a*b)*x  ,  (-a*c)*x*y+(5*c)]
[(a*b)*x^2+(-a*b-3*b^3)  ,  (5*c)*x+(a*c+3*b^2*c)]
[(a)*x^2*y+(a+3*b^2)  ,  0]

Module Groebner basis: 
[(a*b+3*b^3)*y+(a*b+3*b^3), (-5*c)*x*y+(-a*c-3*b^2*c)*y], 
[(a*b)*x^2+(-a*b-3*b^3) , (5*c)*x+(a*c+3*b^2*c)].

LPP Set of Module Groebner Basis under specialization:
[ y ]
[ x^2 ]

Branch 3:
constraints: c=0,a=0,3*b^2!=0,
RGB from KSW:
[(3*b^2)  ,  (a)*x^2*y+(a)]

Module Groebner basis: 
[(3*b^2) , (a)*x^2*y+(a)].

LPP Set of Module Groebner Basis under specialization:
[ 1 ]

Branch 4:
constraints: c=0,a=0,b^2=0,
RGB from KSW:
[   ].

Module Groebner basis: 
[  ].


LPP Set of Module Groebner Basis under specialization:
[  ].

Branch 5:
constraints: c=0,b=0,a!=0,a!=0,
RGB from KSW:
[(a)*x^2*y+(a)  ,  (3*b^2)]

Module Groebner basis: 
[(a)*x^2*y+(a) , (3*b^2)].

LPP Set of Module Groebner Basis under specialization:
[ x^2*y ]

Branch 6:
constraints: c=0,3*b^2+a=0,a!=0,b!=0,a!=0,
RGB from KSW:
[(5*a*b)*x*y+(5*a*b)*x  ,  (-a^2*b+a^2*c-3*a*b^3+3*a*b^2*c)*y+(-a^2*b-3*a*b^3+25*c)]
[(5*a^2)*x*y+(5*a^2)*x  ,  (-5*a^2-15*a*b^2)*x*y+(-5*a^2-15*a*b^2)*x+(3*a^2*b^2-3*a^2*b*c+9*a*b^4-9*a*b^3*c)*y+(3*a^2*b^2+9*a*b^4-75*b*c)]
[(a*b)*x^2  ,  (5*c)*x+(-a*b+a*c-3*b^3+3*b^2*c)]
[(a^2)*x^2  ,  (-a^2-3*a*b^2)*x^2+(-15*b*c)*x+(3*a*b^2-3*a*b*c+9*b^4-9*b^3*c)]
[(a)*x^2*y  ,  (a+3*b^2)]

Module Groebner basis: 
[(5*a^2)*x*y+(5*a^2)*x, (-5*a^2-15*a*b^2)*x*y+(-5*a^2-15*a*b^2)*x+(3*a^2*b^2-3*a^2*b*c+9*a*b^4-9*a*b^3*c)*y+(3*a^2*b^2+9*a*b^4-75*b*c)], 
[(a^2)*x^2 , (-a^2-3*a*b^2)*x^2+(-15*b*c)*x+(3*a*b^2-3*a*b*c+9*b^4-9*b^3*c)].

LPP Set of Module Groebner Basis under specialization:
[ x*y ]
[ x^2 ]

Branch 7:
constraints: b-c=0,c!=0,c!=0,a!=0,
RGB from KSW:
[(25*c)*y+(a^2*c+3*a*c^3)  ,  (5*a*b-5*a*c)*x*y^2+(5*a*b-5*a*c)*x*y+(a^2*b-a^2*c+3*a*b^3-3*a*b^2*c)*y+(a^2*b-a^2*c+3*a*b^3-3*a*c^3)]
[(a*c)*x+(5*c)  ,  (a*b-a*c)*x*y+(a*b-a*c)*x]
[(a)*x^2*y+(a+3*c^2)  ,  (3*b^2-3*c^2)]

Module Groebner basis: 
[(25*c)*y+(a^2*c+3*a*c^3), (5*a*b-5*a*c)*x*y^2+(5*a*b-5*a*c)*x*y+(a^2*b-a^2*c+3*a*b^3-3*a*b^2*c)*y+(a^2*b-a^2*c+3*a*b^3-3*a*c^3)], 
[(a*c)*x+(5*c) , (a*b-a*c)*x*y+(a*b-a*c)*x].

LPP Set of Module Groebner Basis under specialization:
[ y ]
[ x ]

Branch 8:
constraints: b-c=0,a=0,c!=0,25*c!=0,
RGB from KSW:
[(25*c)  ,  (5*a*b)*x*y+(5*a*b)*x+(-a^2*b+a^2*c-3*a*b^3+3*a*b^2*c)*y+(-a^2*b-3*a*b^3)]
[(25*b)  ,  (5*a*b)*x*y+(5*a*b)*x+(-a^2*b+a^2*c-3*a*b^3+3*a*b^2*c)*y+(-a^2*b-3*a*b^3-25*b+25*c)]

Module Groebner basis: 
[(25*c) , (5*a*b)*x*y+(5*a*b)*x+(-a^2*b+a^2*c-3*a*b^3+3*a*b^2*c)*y+(-a^2*b-3*a*b^3)].

LPP Set of Module Groebner Basis under specialization:
[ 1 ]

Branch 9:
constraints: b=0,c!=0,-c!=0,a!=0,c!=0,
RGB from KSW:
[(a^2*c)*y+(25*c)  ,  (5*a*b)*x*y+(5*a*b)*x+(-a^2*b-3*a*b^3+3*a*b^2*c)*y+(-a^2*b-3*a*b^3)]
[(5*c)*x+(a*c)  ,  (a*b)*x^2+(-a*b-3*b^3+3*b^2*c)]
[(a)*x^2*y+(a)  ,  (3*b^2)]

Module Groebner basis: 
[(a^2*c)*y+(25*c), (5*a*b)*x*y+(5*a*b)*x+(-a^2*b-3*a*b^3+3*a*b^2*c)*y+(-a^2*b-3*a*b^3)], 
[(5*c)*x+(a*c) , (a*b)*x^2+(-a*b-3*b^3+3*b^2*c)].

LPP Set of Module Groebner Basis under specialization:
[ y ]
[ x ]

Branch 10:
constraints: b=0,a=0,c!=0,25*c!=0,
RGB from KSW:
[(25*c)  ,  (5*a*b)*x*y+(5*a*b)*x+(-a^2*b+a^2*c-3*a*b^3+3*a*b^2*c)*y+(-a^2*b-3*a*b^3)]

Module Groebner basis: 
[(25*c) , (5*a*b)*x*y+(5*a*b)*x+(-a^2*b+a^2*c-3*a*b^3+3*a*b^2*c)*y+(-a^2*b-3*a*b^3)].

LPP Set of Module Groebner Basis under specialization:
[ 1 ]

Branch 11:
constraints: 3*b^2+a=0,c!=0,b-c!=0,b!=0,c!=0,a!=0,
RGB from KSW:
[(25*c^2)*y  ,  (a^2*b^2-2*a^2*b*c+a^2*c^2+3*a*b^4-6*a*b^3*c+3*a*b^2*c^2)*y^2+(2*a^2*b^2-2*a^2*b*c+6*a*b^4-6*a*b^3*c)*y+(a^2*b^2+3*a*b^4)]
[(5*a*b*c)*x+(25*c^2)  ,  (a^2*b^2-2*a^2*b*c+a^2*c^2+3*a*b^4-6*a*b^3*c+3*a*b^2*c^2)*y+(a^2*b^2-a^2*b*c+3*a*b^4-3*a*b^3*c)]
[(5*a^2*c)*x+(-75*b*c^2)  ,  (-5*a^2*c-15*a*b^2*c)*x+(-3*a^2*b^3+6*a^2*b^2*c-3*a^2*b*c^2-9*a*b^5+18*a*b^4*c-9*a*b^3*c^2)*y+(-3*a^2*b^3+3*a^2*b^2*c-9*a*b^5+9*a*b^4*c)]
[(5*c)*x*y  ,  (-a*b+a*c-3*b^3+3*b^2*c)*y+(-a*b-3*b^3)]
[(5*a*b)*x*y+(5*a*b)*x+(25*c)  ,  (-a^2*b+a^2*c-3*a*b^3+3*a*b^2*c)*y+(-a^2*b-3*a*b^3)]
[(5*a^2)*x*y+(5*a^2)*x+(-75*b*c)  ,  (-5*a^2-15*a*b^2)*x*y+(-5*a^2-15*a*b^2)*x+(3*a^2*b^2-3*a^2*b*c+9*a*b^4-9*a*b^3*c)*y+(3*a^2*b^2+9*a*b^4)]
[(a*b)*x^2+(5*c)*x  ,  (-a*b+a*c-3*b^3+3*b^2*c)]
[(a^2)*x^2+(-15*b*c)*x  ,  (-a^2-3*a*b^2)*x^2+(3*a*b^2-3*a*b*c+9*b^4-9*b^3*c)]
[(a)*x^2*y  ,  (a+3*b^2)]

Module Groebner basis: 
[(25*c^2)*y, (a^2*b^2-2*a^2*b*c+a^2*c^2+3*a*b^4-6*a*b^3*c+3*a*b^2*c^2)*y^2+(2*a^2*b^2-2*a^2*b*c+6*a*b^4-6*a*b^3*c)*y+(a^2*b^2+3*a*b^4)], 
[(5*a^2*c)*x+(-75*b*c^2) , (-5*a^2*c-15*a*b^2*c)*x+(-3*a^2*b^3+6*a^2*b^2*c-3*a^2*b*c^2-9*a*b^5+18*a*b^4*c-9*a*b^3*c^2)*y+(-3*a^2*b^3+3*a^2*b^2*c-9*a*b^5+9*a*b^4*c)].

LPP Set of Module Groebner Basis under specialization:
[ y ]
[ x ]

Branch 12:
constraints: a=0,c!=0,b-c!=0,b!=0,3*b^2!=0,25*c!=0,
RGB from KSW:
[(25*c)  ,  (5*a*b)*x*y+(5*a*b)*x+(-a^2*b+a^2*c-3*a*b^3+3*a*b^2*c)*y+(-a^2*b-3*a*b^3)]
[(3*b^2)  ,  (a)*x^2*y+(a)]

Module Groebner basis: 
[(25*c) , (5*a*b)*x*y+(5*a*b)*x+(-a^2*b+a^2*c-3*a*b^3+3*a*b^2*c)*y+(-a^2*b-3*a*b^3)].

LPP Set of Module Groebner Basis under specialization:
[ 1 ]



