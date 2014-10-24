The given ring is:
(0,v,u),(z,y,x),(lp(3),C)

F = {
(u)*y+x, 
(v)*z+x+1
}.

E = {0}.

N = {}.

=============================


RGB is not the CCGB.

--------------------------------

RGB = [

/* f_1 = */ (u)*y+x,
/* f_2 = */ (v)*z+x+1;

].


Size is : 2.

It is not comprehensive.

------------------------------

C = [

/* f_1 = */ (u)*y+x,
/* f_2 = */ (v)*z+x+1,
/* f_3 = */ (v)*z+(-u)*y+1;

].


Size is: 3.

It is comprehensive and minimal.
--------------------------

M_1

M = [

/* f_1 = */ (u)*y+x,
/* f_2 = */ (v)*z+x+1,
/* f_3 = */ (v)*z+(-u)*y+1;

].

Size is: 3.

It is comprehensive and minimal.

Normal form of Split form of M_1 :
M = [

/* f_1 = */ (u)*y+x,
/* f_2 = */ (v)*z+x+1,
/* f_3 = */ (v)*z+(-u)*y+1;

].

Size is : 3.

It is comprehensive and minimal.
==================================


Comprehensive Groebner Basis: 

/* f_1 = */ (u)*y+x,
/* f_2 = */ (v)*z+x+1,
/* f_3 = */ (v)*z+(-u)*y+1;




Size is: 3.

--------------------------------------


Module Comprehensive Groebner Systems: 

Branch 1:
constraints: u!=0,v!=0,
RGB from KSW:
[(u)*y+x  ,  0]
[(v)*z+x+1  ,  0]

Module Groebner basis: 
[(u)*y+x, 0], 
[(v)*z+x+1 , 0].

LPP Set of Module Groebner Basis under specialization:
[ y ]
[ z ]

Branch 2:
constraints: v=0,u!=0,
RGB from KSW:
[x+1  ,  (v)*z]
[(u)*y-1  ,  (-v)*z]

Module Groebner basis: 
[x+1, (v)*z], 
[(u)*y-1 , (-v)*z].

LPP Set of Module Groebner Basis under specialization:
[ x ]
[ y ]

Branch 3:
constraints: u=0,v=0,
RGB from KSW:
[1  ,  (v)*z+(-u)*y]

Module Groebner basis: 
[1 , (v)*z+(-u)*y].

LPP Set of Module Groebner Basis under specialization:
[ 1 ]

Branch 4:
constraints: u=0,v!=0,v!=0,
RGB from KSW:
[x  ,  (u)*y]
[(v)*z+1  ,  (-u)*y]

Module Groebner basis: 
[x, (u)*y], 
[(v)*z+1 , (-u)*y].

LPP Set of Module Groebner Basis under specialization:
[ x ]
[ z ]



