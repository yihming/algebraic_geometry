
+++++++++++++++++++++++++++++++++++++++

The given ring is:
(0,x,y,z),(w2,w3,w4,w5),(lp(4),C)

F = {
(x-y-z)*w5, 
(z)*w4+(-z)*w5, 
(x+y-1)*w4+(-z+1)*w5, 
(y-1)*w3+(y)*w4+(-2*z+1)*w5, 
(x-z)*w3+(-y)*w4, 
(z-1)*w2+(z)*w3+(2*z-1)*w5, 
(y-1)*w2+(y+2*z-1)*w5, 
(x-1)*w2+(z)*w3+(y+2*z-1)*w5
}.

E = {0}.

N = {}.


Module Comprehensive Groebner Systems: 

Branch 1:
constraints: y!=0,z!=0,y-1!=0,z-1!=0,
RGB from KSW:
[(y*z)*w5  ,  0]
[(x-y-z)*w5  ,  0]
[(z)*w4+(-z)*w5  ,  0]
[(x+y-1)*w4+(-z+1)*w5  ,  0]
[(2*y-1)*w4*w5+w5^2  ,  0]
[(y-1)*w3+(y)*w4+(-2*z+1)*w5  ,  0]
[(x-z)*w3+(-y)*w4  ,  0]
[w3*w5-w4*w5+(2*z)*w5^2  ,  0]
[(z-1)*w2+(z)*w3+(2*z-1)*w5  ,  0]
[(y-1)*w2+(y+2*z-1)*w5  ,  0]
[(x-1)*w2+(z)*w3+(y+2*z-1)*w5  ,  0]
[w2*w5+(-2*z+1)*w5^2  ,  0]
[w2*w4+w4*w5+(-2*z)*w5^2  ,  0]

Module Groebner basis: 
[(y*z)*w5, 0], 
[(z)*w4+(-z)*w5, 0], 
[(y-1)*w3+(y)*w4+(-2*z+1)*w5, 0], 
[(z-1)*w2+(z)*w3+(2*z-1)*w5 , 0].

LPP Set of Module Groebner Basis under specialization:
[ w5 ]
[ w4 ]
[ w3 ]
[ w2 ]

Branch 2:
constraints: z-1=0,y!=0,y-1!=0,
RGB from KSW:
[(y)*w5  ,  (y*z-y)*w5]
[(x-1)*w5  ,  (y*z-y-z+1)*w5]
[w4-w5  ,  (z-1)*w4+(-z+1)*w5]
[w3+w5  ,  (z-1)*w2+(z-1)*w3+(2*z-2)*w5]
[(y-1)*w2+w5  ,  (-y*z+y+2*z-2)*w5]
[(x-1)*w2  ,  (-z+1)*w2+(-y*z+y)*w5]
[w2*w5-w5^2  ,  (-2*z+2)*w5^2]

Module Groebner basis: 
[(y)*w5, (y*z-y)*w5], 
[w4-w5, (z-1)*w4+(-z+1)*w5], 
[w3+w5, (z-1)*w2+(z-1)*w3+(2*z-2)*w5], 
[(y-1)*w2+w5 , (-y*z+y+2*z-2)*w5].

LPP Set of Module Groebner Basis under specialization:
[ w5 ]
[ w4 ]
[ w3 ]
[ w2 ]

Branch 3:
constraints: z-1=0,y-1=0,x-1!=0,
RGB from KSW:
[w5  ,  (y*z-1)*w5]
[w4  ,  (z-1)*w4+(y*z-z)*w5]
[w3  ,  (z-1)*w2+(z-1)*w3+(-y*z+2*z-1)*w5]
[(x-1)*w2  ,  (-z+1)*w2+(-y*z+y)*w5]

Module Groebner basis: 
[w5, (y*z-1)*w5], 
[w4, (z-1)*w4+(y*z-z)*w5], 
[w3, (z-1)*w2+(z-1)*w3+(-y*z+2*z-1)*w5], 
[(x-1)*w2 , (-z+1)*w2+(-y*z+y)*w5].

LPP Set of Module Groebner Basis under specialization:
[ w5 ]
[ w4 ]
[ w3 ]
[ w2 ]

Branch 4:
constraints: z-1=0,y-1=0,x-1=0,
RGB from KSW:
[w5  ,  (y*z-1)*w5]
[w4  ,  (z-1)*w4+(y*z-z)*w5]
[w3  ,  (z-1)*w2+(z-1)*w3+(-y*z+2*z-1)*w5]

Module Groebner basis: 
[w5, (y*z-1)*w5], 
[w4, (z-1)*w4+(y*z-z)*w5], 
[w3 , (z-1)*w2+(z-1)*w3+(-y*z+2*z-1)*w5].

LPP Set of Module Groebner Basis under specialization:
[ w5 ]
[ w4 ]
[ w3 ]

Branch 5:
constraints: z-1=0,y=0,x-1!=0,
RGB from KSW:
[(x-1)*w5  ,  (-y-z+1)*w5]
[w4-w5  ,  (z-1)*w4+(-z+1)*w5]
[w3+w5  ,  (-y)*w3+(-y)*w4+(2*z-2)*w5]
[w2-w5  ,  (-y)*w2+(-y-2*z+2)*w5]

Module Groebner basis: 
[(x-1)*w5, (-y-z+1)*w5], 
[w4-w5, (z-1)*w4+(-z+1)*w5], 
[w3+w5, (-y)*w3+(-y)*w4+(2*z-2)*w5], 
[w2-w5 , (-y)*w2+(-y-2*z+2)*w5].

LPP Set of Module Groebner Basis under specialization:
[ w5 ]
[ w4 ]
[ w3 ]
[ w2 ]

Branch 6:
constraints: z-1=0,y=0,x-1=0,
RGB from KSW:
[w4-w5  ,  (z-1)*w4+(-z+1)*w5]
[w3+w5  ,  (-y)*w3+(-y)*w4+(2*z-2)*w5]
[w2-w5  ,  (-y)*w2+(-y-2*z+2)*w5]

Module Groebner basis: 
[w4-w5, (z-1)*w4+(-z+1)*w5], 
[w3+w5, (-y)*w3+(-y)*w4+(2*z-2)*w5], 
[w2-w5 , (-y)*w2+(-y-2*z+2)*w5].

LPP Set of Module Groebner Basis under specialization:
[ w4 ]
[ w3 ]
[ w2 ]

Branch 7:
constraints: y=0,z-1!=0,x-z!=0,z!=0,
RGB from KSW:
[(x-z)*w5  ,  (-y)*w5]
[(z)*w4+(-z)*w5  ,  0]
[(x-1)*w4+(-z+1)*w5  ,  (y)*w4]
[w4*w5-w5^2  ,  (-2*y)*w4*w5]
[w3+(2*z-1)*w5  ,  (-y)*w3+(-y)*w4]
[w2+(-2*z+1)*w5  ,  (-y)*w2+(-y)*w5]

Module Groebner basis: 
[(x-z)*w5, (-y)*w5], 
[(z)*w4+(-z)*w5, 0], 
[w3+(2*z-1)*w5, (-y)*w3+(-y)*w4], 
[w2+(-2*z+1)*w5 , (-y)*w2+(-y)*w5].

LPP Set of Module Groebner Basis under specialization:
[ w5 ]
[ w4 ]
[ w3 ]
[ w2 ]

Branch 8:
constraints: y=0,x-z=0,z-1!=0,
RGB from KSW:
[w4-w5  ,  (-x-y+z)*w4]
[w3+(2*z-1)*w5  ,  (-y)*w3+(-y)*w4]
[w2+(-2*z+1)*w5  ,  (-y)*w2+(-y)*w5]

Module Groebner basis: 
[w4-w5, (-x-y+z)*w4], 
[w3+(2*z-1)*w5, (-y)*w3+(-y)*w4], 
[w2+(-2*z+1)*w5 , (-y)*w2+(-y)*w5].

LPP Set of Module Groebner Basis under specialization:
[ w4 ]
[ w3 ]
[ w2 ]

Branch 9:
constraints: z=0,y=0,x!=0,x!=0,x-1!=0,
RGB from KSW:
[(x)*w5  ,  (-y-z)*w5]
[(x-1)*w4+w5  ,  (y)*w4+(-z)*w5]
[w4*w5-w5^2  ,  (-2*y)*w4*w5]
[w3-w5  ,  (-y)*w3+(-y)*w4+(2*z)*w5]
[w2+w5  ,  (-z)*w2+(-z)*w3+(-2*z)*w5]

Module Groebner basis: 
[(x)*w5, (-y-z)*w5], 
[(x-1)*w4+w5, (y)*w4+(-z)*w5], 
[w3-w5, (-y)*w3+(-y)*w4+(2*z)*w5], 
[w2+w5 , (-z)*w2+(-z)*w3+(-2*z)*w5].

LPP Set of Module Groebner Basis under specialization:
[ w5 ]
[ w4 ]
[ w3 ]
[ w2 ]

Branch 10:
constraints: z=0,y=0,x-1=0,
RGB from KSW:
[w5  ,  (x-y-z-1)*w5]
[w3  ,  (-y)*w3+(-y)*w4+(x-y+z-1)*w5]
[w2  ,  (-z)*w2+(-z)*w3+(-x+y-z+1)*w5]

Module Groebner basis: 
[w5, (x-y-z-1)*w5], 
[w3, (-y)*w3+(-y)*w4+(x-y+z-1)*w5], 
[w2 , (-z)*w2+(-z)*w3+(-x+y-z+1)*w5].

LPP Set of Module Groebner Basis under specialization:
[ w5 ]
[ w3 ]
[ w2 ]

Branch 11:
constraints: y-1=0,z-1!=0,z!=0,x-z!=0,z-1!=0,
RGB from KSW:
[(z)*w5  ,  (y*z-z)*w5]
[(x-1)*w5  ,  (y*z-y-z+1)*w5]
[w4+w5  ,  (y-1)*w3+(y-1)*w4+(2*y*z-2*z)*w5]
[(x-z)*w3+w5  ,  (y-1)*w3+(2*y*z-2*z)*w5]
[w3*w5+w5^2  ,  (2*y-2)*w4*w5+(-2*y*z+2*z)*w5^2]
[(z-1)*w2+(z)*w3-w5  ,  (-2*y*z+2*z)*w5]
[(x-1)*w2+(z)*w3  ,  (-2*y*z+y+2*z-1)*w5]
[w2*w5+w5^2  ,  (2*y*z-2*z)*w5^2]

Module Groebner basis: 
[(z)*w5, (y*z-z)*w5], 
[w4+w5, (y-1)*w3+(y-1)*w4+(2*y*z-2*z)*w5], 
[(x-z)*w3+w5, (y-1)*w3+(2*y*z-2*z)*w5], 
[(z-1)*w2+(z)*w3-w5 , (-2*y*z+2*z)*w5].

LPP Set of Module Groebner Basis under specialization:
[ w5 ]
[ w4 ]
[ w3 ]
[ w2 ]

Branch 12:
constraints: y-1=0,x-z=0,z-1!=0,z-1!=0,
RGB from KSW:
[w5  ,  (-x+y+z-1)*w5]
[w4  ,  (y-1)*w3+(y-1)*w4+(x+2*y*z-y-3*z+1)*w5]
[(z-1)*w2+(z)*w3  ,  (-x-2*y*z+y+3*z-1)*w5]

Module Groebner basis: 
[w5, (-x+y+z-1)*w5], 
[w4, (y-1)*w3+(y-1)*w4+(x+2*y*z-y-3*z+1)*w5], 
[(z-1)*w2+(z)*w3 , (-x-2*y*z+y+3*z-1)*w5].

LPP Set of Module Groebner Basis under specialization:
[ w5 ]
[ w4 ]
[ w2 ]

Branch 13:
constraints: z=0,y-1=0,x!=0,x-1!=0,x!=0,
RGB from KSW:
[(x-1)*w5  ,  (-y-z+1)*w5]
[w4+w5  ,  (y-1)*w3+(y-1)*w4+(-2*z)*w5]
[(x)*w3+w5  ,  (y-z-1)*w3+(-2*z)*w5]
[w3*w5+w5^2  ,  (2*y-2)*w4*w5+(2*z)*w5^2]
[w2+w5  ,  (-z)*w2+(-z)*w3+(-2*z)*w5]

Module Groebner basis: 
[(x-1)*w5, (-y-z+1)*w5], 
[w4+w5, (y-1)*w3+(y-1)*w4+(-2*z)*w5], 
[(x)*w3+w5, (y-z-1)*w3+(-2*z)*w5], 
[w2+w5 , (-z)*w2+(-z)*w3+(-2*z)*w5].

LPP Set of Module Groebner Basis under specialization:
[ w5 ]
[ w4 ]
[ w3 ]
[ w2 ]

Branch 14:
constraints: z=0,y-1=0,x-1=0,
RGB from KSW:
[w4+w5  ,  (x+y-2)*w4+(-z)*w5]
[w3+w5  ,  (x-z-1)*w3+(x-1)*w4+(-z)*w5]
[w2+w5  ,  (-z)*w2+(-z)*w3+(-2*z)*w5]

Module Groebner basis: 
[w4+w5, (x+y-2)*w4+(-z)*w5], 
[w3+w5, (x-z-1)*w3+(x-1)*w4+(-z)*w5], 
[w2+w5 , (-z)*w2+(-z)*w3+(-2*z)*w5].

LPP Set of Module Groebner Basis under specialization:
[ w4 ]
[ w3 ]
[ w2 ]

Branch 15:
constraints: z=0,y!=0,y-1!=0,x-y!=0,x+y-1!=0,y-1!=0,
RGB from KSW:
[(x-y)*w5  ,  (-z)*w5]
[(x+y-1)*w4+w5  ,  (-z)*w5]
[(2*y-1)*w4*w5+w5^2  ,  0]
[(y-1)*w3+(y)*w4+w5  ,  (-2*z)*w5]
[(x)*w3+(-y)*w4  ,  (-z)*w3]
[w3*w5-w4*w5  ,  (2*z)*w5^2]
[w2+w5  ,  (-z)*w2+(-z)*w3+(-2*z)*w5]

Module Groebner basis: 
[(x-y)*w5, (-z)*w5], 
[(x+y-1)*w4+w5, (-z)*w5], 
[(y-1)*w3+(y)*w4+w5, (-2*z)*w5], 
[w2+w5 , (-z)*w2+(-z)*w3+(-2*z)*w5].

LPP Set of Module Groebner Basis under specialization:
[ w5 ]
[ w4 ]
[ w3 ]
[ w2 ]

Branch 16:
constraints: z=0,x+y-1=0,y!=0,y-1!=0,y-1!=0,
RGB from KSW:
[w5  ,  (x+y-1)*w4+(-z)*w5]
[(y-1)*w3+(y)*w4  ,  (-x-y+1)*w4+(-z)*w5]
[w2  ,  (-z)*w2+(-z)*w3+(-x-y+1)*w4+(-z)*w5]

Module Groebner basis: 
[w5, (x+y-1)*w4+(-z)*w5], 
[(y-1)*w3+(y)*w4, (-x-y+1)*w4+(-z)*w5], 
[w2 , (-z)*w2+(-z)*w3+(-x-y+1)*w4+(-z)*w5].

LPP Set of Module Groebner Basis under specialization:
[ w5 ]
[ w3 ]
[ w2 ]

Branch 17:
constraints: z=0,x-y=0,y!=0,y-1!=0,2*y-1!=0,2*y-1!=0,
RGB from KSW:
[(2*y-1)*w4+w5  ,  (x-y)*w4+(-z)*w5]
[w3-w4  ,  (x-y-z)*w3+(x-y)*w4+(z)*w5]
[w2+w5  ,  (-z)*w2+(-z)*w3+(-2*z)*w5]

Module Groebner basis: 
[(2*y-1)*w4+w5, (x-y)*w4+(-z)*w5], 
[w3-w4, (x-y-z)*w3+(x-y)*w4+(z)*w5], 
[w2+w5 , (-z)*w2+(-z)*w3+(-2*z)*w5].

LPP Set of Module Groebner Basis under specialization:
[ w4 ]
[ w3 ]
[ w2 ]




Comprehensive Groebner Basis: 

(y*z)*w5,
(x-y-z)*w5,
(z)*w4+(-z)*w5,
(z)*w4+(y*z-z)*w5,
(x+y-1)*w4+(-z+1)*w5,
(x+y-z-1)*w4+w5,
(y-1)*w3+(y)*w4+(-2*z+1)*w5,
(y-1)*w3+(y)*w4+(2*y*z-2*z+1)*w5,
(y-1)*w3+(y)*w4+(-x+y-z+1)*w5,
(y-1)*w3+(y)*w4+(x+2*y*z-y-3*z+1)*w5,
(y-1)*w3+(-x+1)*w4+(-z)*w5,
(x-z)*w3+(x-1)*w4+(-z+1)*w5,
(x-y-z+1)*w3+(x-y-1)*w4+(z)*w5,
(x+y-z-1)*w3+(-2*z+1)*w5,
(x+y-z-1)*w3+(2*y*z-2*z+1)*w5,
(z-1)*w2+(z)*w3+(2*z-1)*w5,
(z-1)*w2+(z)*w3+(-2*y*z+2*z-1)*w5,
(z-1)*w2+(z)*w3+(-y*z+2*z-1)*w5,
(z-1)*w2+(z)*w3+(-x-2*y*z+y+3*z-1)*w5,
(z-1)*w2+(z)*w3+(x-y+z-1)*w5,
(z-1)*w2+(z)*w3+(x+y-1)*w4+(z)*w5,
(y-1)*w2+(y+2*z-1)*w5,
(y-1)*w2+(-y*z+y+2*z-1)*w5,
(x-z)*w2+(-y*z+y)*w5.




Size is: 24.

================ Algorithm 1 =====================

---------------------

M_1

M = [

(y*z)*w5,
(x-y-z)*w5,
(z)*w4+(-z)*w5,
(x+y-z-1)*w4+w5,
(y-1)*w3+(y)*w4+(-2*z+1)*w5,
(x-y-z+1)*w3+(x-y-1)*w4+(z)*w5,
(z-1)*w2+(z)*w3+(-x+y+3*z-1)*w5,
(y-1)*w2+(-y*z+y+2*z-1)*w5,
(x-z)*w2+(-y*z+y)*w5.

].

Size is: 9.

It is comprehensive and minimal.
---------------------

M_2

M = [

(y*z)*w5,
(x-y-z)*w5,
(z)*w4+(y*z-z)*w5,
(x+y-1)*w4+(-z+1)*w5,
(y-1)*w3+(y)*w4+(x+2*y*z-y-3*z+1)*w5,
(x-z)*w3+(x-1)*w4+(-z+1)*w5,
(z-1)*w2+(z)*w3+(-y*z+2*z-1)*w5,
(y-1)*w2+(-y*z+y+2*z-1)*w5,
(x-z)*w2+(-y*z+y)*w5.

].

Size is: 9.

It is comprehensive and minimal.
---------------------

M_3

M = [

(y*z)*w5,
(x-y-z)*w5,
(z)*w4+(y*z-z)*w5,
(x+y-z-1)*w4+w5,
(y-1)*w3+(y)*w4+(x-y-3*z+1)*w5,
(x-y-z+1)*w3+(x-y-1)*w4+(z)*w5,
(z-1)*w2+(z)*w3+(-2*y*z+2*z-1)*w5,
(y-1)*w2+(-y*z+y+2*z-1)*w5,
(x-z)*w2+(-y*z+y)*w5.

].

Size is: 9.

It is comprehensive and minimal.
---------------------

M_4

M = [

(y*z)*w5,
(x-y-z)*w5,
(z)*w4+(y*z-z)*w5,
(x+y-z-1)*w4+w5,
(y-1)*w3+(y)*w4+(x+2*y*z-y-3*z+1)*w5,
(x+y-z-1)*w3+(2*y*z-2*z+1)*w5,
(z-1)*w2+(z)*w3+(-2*y*z+2*z-1)*w5,
(y-1)*w2+(-y*z+y+2*z-1)*w5,
(x-z)*w2+(-y*z+y)*w5.

].

Size is: 9.

It is comprehensive and minimal.
---------------------

M_5

M = [

(y*z)*w5,
(x-y-z)*w5,
(z)*w4+(-z)*w5,
(x+y-1)*w4+(-z+1)*w5,
(x-y-z+1)*w3+(x-y-1)*w4+(z)*w5,
(x+y-z-1)*w3+(-2*z+1)*w5,
(z-1)*w2+(z)*w3+(-2*y*z+2*z-1)*w5,
(y-1)*w2+(y+2*z-1)*w5,
(x-z)*w2+(-y*z+y)*w5.

].

Size is: 9.

It is comprehensive and minimal.
---------------------

M_6

M = [

(y*z)*w5,
(x-y-z)*w5,
(z)*w4+(-z)*w5,
(x+y-z-1)*w4+w5,
(x-z)*w3+(x-1)*w4+(-z+1)*w5,
(x+y-z-1)*w3+(-2*z+1)*w5,
(z-1)*w2+(z)*w3+(-x-2*y*z+y+3*z-1)*w5,
(y-1)*w2+(-y*z+y+2*z-1)*w5,
(x-z)*w2+(-y*z+y)*w5.

].

Size is: 9.

It is comprehensive and minimal.
---------------------

M_7

M = [

(y*z)*w5,
(x-y-z)*w5,
(z)*w4+(y*z-z)*w5,
(x+y-z-1)*w4+w5,
(x-y-z+1)*w3+(x-y-1)*w4+(z)*w5,
(x+y-z-1)*w3+(-2*z+1)*w5,
(z-1)*w2+(z)*w3+(-x-2*y*z+y+3*z-1)*w5,
(y-1)*w2+(-y*z+y+2*z-1)*w5,
(x-z)*w2+(-y*z+y)*w5.

].

Size is: 9.

It is comprehensive and minimal.
---------------------

M_8

M = [

(y*z)*w5,
(x-y-z)*w5,
(x+y-1)*w4+(-z+1)*w5,
(x+y-z-1)*w4+w5,
(y-1)*w3+(y)*w4+(x-y-3*z+1)*w5,
(x+y-z-1)*w3+(-2*z+1)*w5,
(z-1)*w2+(z)*w3+(-x-2*y*z+y+3*z-1)*w5,
(y-1)*w2+(y+2*z-1)*w5,
(x-z)*w2+(-y*z+y)*w5.

].

Size is: 9.

It is comprehensive and minimal.
---------------------

M_9

M = [

(y*z)*w5,
(x-y-z)*w5,
(z)*w4+(-z)*w5,
(x+y-1)*w4+(-z+1)*w5,
(y-1)*w3+(y)*w4+(x+2*y*z-y-3*z+1)*w5,
(x+y-z-1)*w3+(2*y*z-2*z+1)*w5,
(z-1)*w2+(z)*w3+(x+y-1)*w4+(z)*w5,
(y-1)*w2+(-y*z+y+2*z-1)*w5,
(x-z)*w2+(-y*z+y)*w5.

].

Size is: 9.

It is comprehensive and minimal.
---------------------

M_10

M = [

(y*z)*w5,
(x-y-z)*w5,
(z)*w4+(-z)*w5,
(x+y-z-1)*w4+w5,
(y-1)*w3+(y)*w4+(-2*z+1)*w5,
(x-z)*w3+(x-1)*w4+(-z+1)*w5,
(z-1)*w2+(z)*w3+(-x-2*y*z+y+3*z-1)*w5,
(y-1)*w2+(-y*z+y+2*z-1)*w5,
(x-z)*w2+(-y*z+y)*w5.

].

Size is: 9.

It is comprehensive and minimal.
---------------------

M_11

M = [

(y*z)*w5,
(x-y-z)*w5,
(z)*w4+(y*z-z)*w5,
(x+y-1)*w4+(-z+1)*w5,
(y-1)*w3+(y)*w4+(-2*z+1)*w5,
(x-y-z+1)*w3+(x-y-1)*w4+(z)*w5,
(z-1)*w2+(z)*w3+(2*z-1)*w5,
(y-1)*w2+(-y*z+y+2*z-1)*w5,
(x-z)*w2+(-y*z+y)*w5.

].

Size is: 9.

It is comprehensive and minimal.
---------------------

M_12

M = [

(y*z)*w5,
(x-y-z)*w5,
(z)*w4+(y*z-z)*w5,
(x+y-1)*w4+(-z+1)*w5,
(y-1)*w3+(y)*w4+(-2*z+1)*w5,
(x+y-z-1)*w3+(2*y*z-2*z+1)*w5,
(z-1)*w2+(z)*w3+(-x-2*y*z+y+3*z-1)*w5,
(y-1)*w2+(-y*z+y+2*z-1)*w5,
(x-z)*w2+(-y*z+y)*w5.

].

Size is: 9.

It is comprehensive and minimal.
---------------------

M_13

M = [

(y*z)*w5,
(x-y-z)*w5,
(z)*w4+(y*z-z)*w5,
(x+y-z-1)*w4+w5,
(y-1)*w3+(y)*w4+(-x+y-z+1)*w5,
(x-z)*w3+(x-1)*w4+(-z+1)*w5,
(z-1)*w2+(z)*w3+(-2*y*z+2*z-1)*w5,
(y-1)*w2+(y+2*z-1)*w5,
(x-z)*w2+(-y*z+y)*w5.

].

Size is: 9.

It is comprehensive and minimal.
---------------------

M_14

M = [

(y*z)*w5,
(x-y-z)*w5,
(z)*w4+(-z)*w5,
(x+y-1)*w4+(-z+1)*w5,
(y-1)*w3+(y)*w4+(-2*z+1)*w5,
(x+y-z-1)*w3+(-2*z+1)*w5,
(z-1)*w2+(z)*w3+(-x+y+3*z-1)*w5,
(y-1)*w2+(-y*z+y+2*z-1)*w5,
(x-z)*w2+(-y*z+y)*w5.

].

Size is: 9.

It is comprehensive and minimal.
---------------------

M_15

M = [

(y*z)*w5,
(x-y-z)*w5,
(z)*w4+(-z)*w5,
(x+y-z-1)*w4+w5,
(y-1)*w3+(y)*w4+(x+2*y*z-y-3*z+1)*w5,
(x+y-z-1)*w3+(2*y*z-2*z+1)*w5,
(z-1)*w2+(z)*w3+(-y*z+2*z-1)*w5,
(y-1)*w2+(y+2*z-1)*w5,
(x-z)*w2+(-y*z+y)*w5.

].

Size is: 9.

It is comprehensive and minimal.
---------------------

M_16

M = [

(y*z)*w5,
(x-y-z)*w5,
(z)*w4+(y*z-z)*w5,
(x+y-1)*w4+(-z+1)*w5,
(y-1)*w3+(y)*w4+(2*y*z-2*z+1)*w5,
(x-z)*w3+(x-1)*w4+(-z+1)*w5,
(z-1)*w2+(z)*w3+(-y*z+2*z-1)*w5,
(y-1)*w2+(-y*z+y+2*z-1)*w5,
(x-z)*w2+(-y*z+y)*w5.

].

Size is: 9.

It is comprehensive and minimal.
---------------------

M_17

M = [

(y*z)*w5,
(x-y-z)*w5,
(z)*w4+(-z)*w5,
(x+y-z-1)*w4+w5,
(y-1)*w3+(y)*w4+(x-y-3*z+1)*w5,
(x-y-z+1)*w3+(x-y-1)*w4+(z)*w5,
(z-1)*w2+(z)*w3+(2*z-1)*w5,
(y-1)*w2+(y+2*z-1)*w5,
(x-z)*w2+(-y*z+y)*w5.

].

Size is: 9.

It is comprehensive and minimal.
---------------------

M_18

M = [

(y*z)*w5,
(x-y-z)*w5,
(x+y-1)*w4+(-z+1)*w5,
(x+y-z-1)*w4+w5,
(y-1)*w3+(y)*w4+(x-y-3*z+1)*w5,
(x+y-z-1)*w3+(-2*z+1)*w5,
(z-1)*w2+(z)*w3+(2*z-1)*w5,
(y-1)*w2+(y+2*z-1)*w5,
(x-z)*w2+(-y*z+y)*w5.

].

Size is: 9.

It is comprehensive and minimal.
---------------------

M_19

M = [

(y*z)*w5,
(x-y-z)*w5,
(x+y-1)*w4+(-z+1)*w5,
(x+y-z-1)*w4+w5,
(y-1)*w3+(-x+1)*w4+(-z)*w5,
(x-y-z+1)*w3+(x-y-1)*w4+(z)*w5,
(z-1)*w2+(z)*w3+(x+y-1)*w4+(z)*w5,
(y-1)*w2+(-y*z+y+2*z-1)*w5,
(x-z)*w2+(-y*z+y)*w5.

].

Size is: 9.

It is comprehensive and minimal.

========================= Algorithm 3 ======================

C = [

(y*z)*w5
(x-y-z)*w5
(z)*w4+(-z)*w5
(x+y-1)*w4+(-z+1)*w5
(y-1)*w3+(y)*w4+(-2*z+1)*w5
(x-z)*w3+(-y)*w4
(z-1)*w2+(z)*w3+(2*z-1)*w5
(y-1)*w2+(y+2*z-1)*w5
(x-1)*w2+(z)*w3+(y+2*z-1)*w5.

].


Size is: 9.

It is comprehensive and minimal.
=================================
Compare MCGBs with CCGB:

Consider M_1:
M_1

M = [

(y*z)*w5,
(x-y-z)*w5,
(z)*w4+(-z)*w5,
(x+y-z-1)*w4+w5,
(y-1)*w3+(y)*w4+(-2*z+1)*w5,
(x-y-z+1)*w3+(x-y-1)*w4+(z)*w5,
(z-1)*w2+(z)*w3+(-x+y+3*z-1)*w5,
(y-1)*w2+(-y*z+y+2*z-1)*w5,
(x-z)*w2+(-y*z+y)*w5.

].

Size is: 9.

CCGB

C = [

(y*z)*w5
(x-y-z)*w5
(z)*w4+(-z)*w5
(x+y-1)*w4+(-z+1)*w5
(y-1)*w3+(y)*w4+(-2*z+1)*w5
(x-z)*w3+(-y)*w4
(z-1)*w2+(z)*w3+(2*z-1)*w5
(y-1)*w2+(y+2*z-1)*w5
(x-1)*w2+(z)*w3+(y+2*z-1)*w5.

].


Size is: 9.

Polys in M_1 but not in CCGB:
(x+y-z-1)*w4+w5,
(x-y-z+1)*w3+(x-y-1)*w4+(z)*w5,
(z-1)*w2+(z)*w3+(-x+y+3*z-1)*w5,
(y-1)*w2+(-y*z+y+2*z-1)*w5,
(x-z)*w2+(-y*z+y)*w5,


Polys in CCGB but not in M_1:
(x+y-1)*w4+(-z+1)*w5,
(x-z)*w3+(-y)*w4,
(z-1)*w2+(z)*w3+(2*z-1)*w5,
(y-1)*w2+(y+2*z-1)*w5,
(x-1)*w2+(z)*w3+(y+2*z-1)*w5,

--------------------

Consider M_2:
M_2

M = [

(y*z)*w5,
(x-y-z)*w5,
(z)*w4+(y*z-z)*w5,
(x+y-1)*w4+(-z+1)*w5,
(y-1)*w3+(y)*w4+(x+2*y*z-y-3*z+1)*w5,
(x-z)*w3+(x-1)*w4+(-z+1)*w5,
(z-1)*w2+(z)*w3+(-y*z+2*z-1)*w5,
(y-1)*w2+(-y*z+y+2*z-1)*w5,
(x-z)*w2+(-y*z+y)*w5.

].

Size is: 9.

CCGB

C = [

(y*z)*w5
(x-y-z)*w5
(z)*w4+(-z)*w5
(x+y-1)*w4+(-z+1)*w5
(y-1)*w3+(y)*w4+(-2*z+1)*w5
(x-z)*w3+(-y)*w4
(z-1)*w2+(z)*w3+(2*z-1)*w5
(y-1)*w2+(y+2*z-1)*w5
(x-1)*w2+(z)*w3+(y+2*z-1)*w5.

].


Size is: 9.

Polys in M_2 but not in CCGB:
(z)*w4+(y*z-z)*w5,
(y-1)*w3+(y)*w4+(x+2*y*z-y-3*z+1)*w5,
(x-z)*w3+(x-1)*w4+(-z+1)*w5,
(z-1)*w2+(z)*w3+(-y*z+2*z-1)*w5,
(y-1)*w2+(-y*z+y+2*z-1)*w5,
(x-z)*w2+(-y*z+y)*w5,


Polys in CCGB but not in M_2:
(z)*w4+(-z)*w5,
(y-1)*w3+(y)*w4+(-2*z+1)*w5,
(x-z)*w3+(-y)*w4,
(z-1)*w2+(z)*w3+(2*z-1)*w5,
(y-1)*w2+(y+2*z-1)*w5,
(x-1)*w2+(z)*w3+(y+2*z-1)*w5,

--------------------

Consider M_3:
M_3

M = [

(y*z)*w5,
(x-y-z)*w5,
(z)*w4+(y*z-z)*w5,
(x+y-z-1)*w4+w5,
(y-1)*w3+(y)*w4+(x-y-3*z+1)*w5,
(x-y-z+1)*w3+(x-y-1)*w4+(z)*w5,
(z-1)*w2+(z)*w3+(-2*y*z+2*z-1)*w5,
(y-1)*w2+(-y*z+y+2*z-1)*w5,
(x-z)*w2+(-y*z+y)*w5.

].

Size is: 9.

CCGB

C = [

(y*z)*w5
(x-y-z)*w5
(z)*w4+(-z)*w5
(x+y-1)*w4+(-z+1)*w5
(y-1)*w3+(y)*w4+(-2*z+1)*w5
(x-z)*w3+(-y)*w4
(z-1)*w2+(z)*w3+(2*z-1)*w5
(y-1)*w2+(y+2*z-1)*w5
(x-1)*w2+(z)*w3+(y+2*z-1)*w5.

].


Size is: 9.

Polys in M_3 but not in CCGB:
(z)*w4+(y*z-z)*w5,
(x+y-z-1)*w4+w5,
(y-1)*w3+(y)*w4+(x-y-3*z+1)*w5,
(x-y-z+1)*w3+(x-y-1)*w4+(z)*w5,
(z-1)*w2+(z)*w3+(-2*y*z+2*z-1)*w5,
(y-1)*w2+(-y*z+y+2*z-1)*w5,
(x-z)*w2+(-y*z+y)*w5,


Polys in CCGB but not in M_3:
(z)*w4+(-z)*w5,
(x+y-1)*w4+(-z+1)*w5,
(y-1)*w3+(y)*w4+(-2*z+1)*w5,
(x-z)*w3+(-y)*w4,
(z-1)*w2+(z)*w3+(2*z-1)*w5,
(y-1)*w2+(y+2*z-1)*w5,
(x-1)*w2+(z)*w3+(y+2*z-1)*w5,

--------------------

Consider M_4:
M_4

M = [

(y*z)*w5,
(x-y-z)*w5,
(z)*w4+(y*z-z)*w5,
(x+y-z-1)*w4+w5,
(y-1)*w3+(y)*w4+(x+2*y*z-y-3*z+1)*w5,
(x+y-z-1)*w3+(2*y*z-2*z+1)*w5,
(z-1)*w2+(z)*w3+(-2*y*z+2*z-1)*w5,
(y-1)*w2+(-y*z+y+2*z-1)*w5,
(x-z)*w2+(-y*z+y)*w5.

].

Size is: 9.

CCGB

C = [

(y*z)*w5
(x-y-z)*w5
(z)*w4+(-z)*w5
(x+y-1)*w4+(-z+1)*w5
(y-1)*w3+(y)*w4+(-2*z+1)*w5
(x-z)*w3+(-y)*w4
(z-1)*w2+(z)*w3+(2*z-1)*w5
(y-1)*w2+(y+2*z-1)*w5
(x-1)*w2+(z)*w3+(y+2*z-1)*w5.

].


Size is: 9.

Polys in M_4 but not in CCGB:
(z)*w4+(y*z-z)*w5,
(x+y-z-1)*w4+w5,
(y-1)*w3+(y)*w4+(x+2*y*z-y-3*z+1)*w5,
(x+y-z-1)*w3+(2*y*z-2*z+1)*w5,
(z-1)*w2+(z)*w3+(-2*y*z+2*z-1)*w5,
(y-1)*w2+(-y*z+y+2*z-1)*w5,
(x-z)*w2+(-y*z+y)*w5,


Polys in CCGB but not in M_4:
(z)*w4+(-z)*w5,
(x+y-1)*w4+(-z+1)*w5,
(y-1)*w3+(y)*w4+(-2*z+1)*w5,
(x-z)*w3+(-y)*w4,
(z-1)*w2+(z)*w3+(2*z-1)*w5,
(y-1)*w2+(y+2*z-1)*w5,
(x-1)*w2+(z)*w3+(y+2*z-1)*w5,

--------------------

Consider M_5:
M_5

M = [

(y*z)*w5,
(x-y-z)*w5,
(z)*w4+(-z)*w5,
(x+y-1)*w4+(-z+1)*w5,
(x-y-z+1)*w3+(x-y-1)*w4+(z)*w5,
(x+y-z-1)*w3+(-2*z+1)*w5,
(z-1)*w2+(z)*w3+(-2*y*z+2*z-1)*w5,
(y-1)*w2+(y+2*z-1)*w5,
(x-z)*w2+(-y*z+y)*w5.

].

Size is: 9.

CCGB

C = [

(y*z)*w5
(x-y-z)*w5
(z)*w4+(-z)*w5
(x+y-1)*w4+(-z+1)*w5
(y-1)*w3+(y)*w4+(-2*z+1)*w5
(x-z)*w3+(-y)*w4
(z-1)*w2+(z)*w3+(2*z-1)*w5
(y-1)*w2+(y+2*z-1)*w5
(x-1)*w2+(z)*w3+(y+2*z-1)*w5.

].


Size is: 9.

Polys in M_5 but not in CCGB:
(x-y-z+1)*w3+(x-y-1)*w4+(z)*w5,
(x+y-z-1)*w3+(-2*z+1)*w5,
(z-1)*w2+(z)*w3+(-2*y*z+2*z-1)*w5,
(x-z)*w2+(-y*z+y)*w5,


Polys in CCGB but not in M_5:
(y-1)*w3+(y)*w4+(-2*z+1)*w5,
(x-z)*w3+(-y)*w4,
(z-1)*w2+(z)*w3+(2*z-1)*w5,
(x-1)*w2+(z)*w3+(y+2*z-1)*w5,

--------------------

Consider M_6:
M_6

M = [

(y*z)*w5,
(x-y-z)*w5,
(z)*w4+(-z)*w5,
(x+y-z-1)*w4+w5,
(x-z)*w3+(x-1)*w4+(-z+1)*w5,
(x+y-z-1)*w3+(-2*z+1)*w5,
(z-1)*w2+(z)*w3+(-x-2*y*z+y+3*z-1)*w5,
(y-1)*w2+(-y*z+y+2*z-1)*w5,
(x-z)*w2+(-y*z+y)*w5.

].

Size is: 9.

CCGB

C = [

(y*z)*w5
(x-y-z)*w5
(z)*w4+(-z)*w5
(x+y-1)*w4+(-z+1)*w5
(y-1)*w3+(y)*w4+(-2*z+1)*w5
(x-z)*w3+(-y)*w4
(z-1)*w2+(z)*w3+(2*z-1)*w5
(y-1)*w2+(y+2*z-1)*w5
(x-1)*w2+(z)*w3+(y+2*z-1)*w5.

].


Size is: 9.

Polys in M_6 but not in CCGB:
(x+y-z-1)*w4+w5,
(x-z)*w3+(x-1)*w4+(-z+1)*w5,
(x+y-z-1)*w3+(-2*z+1)*w5,
(z-1)*w2+(z)*w3+(-x-2*y*z+y+3*z-1)*w5,
(y-1)*w2+(-y*z+y+2*z-1)*w5,
(x-z)*w2+(-y*z+y)*w5,


Polys in CCGB but not in M_6:
(x+y-1)*w4+(-z+1)*w5,
(y-1)*w3+(y)*w4+(-2*z+1)*w5,
(x-z)*w3+(-y)*w4,
(z-1)*w2+(z)*w3+(2*z-1)*w5,
(y-1)*w2+(y+2*z-1)*w5,
(x-1)*w2+(z)*w3+(y+2*z-1)*w5,

--------------------

Consider M_7:
M_7

M = [

(y*z)*w5,
(x-y-z)*w5,
(z)*w4+(y*z-z)*w5,
(x+y-z-1)*w4+w5,
(x-y-z+1)*w3+(x-y-1)*w4+(z)*w5,
(x+y-z-1)*w3+(-2*z+1)*w5,
(z-1)*w2+(z)*w3+(-x-2*y*z+y+3*z-1)*w5,
(y-1)*w2+(-y*z+y+2*z-1)*w5,
(x-z)*w2+(-y*z+y)*w5.

].

Size is: 9.

CCGB

C = [

(y*z)*w5
(x-y-z)*w5
(z)*w4+(-z)*w5
(x+y-1)*w4+(-z+1)*w5
(y-1)*w3+(y)*w4+(-2*z+1)*w5
(x-z)*w3+(-y)*w4
(z-1)*w2+(z)*w3+(2*z-1)*w5
(y-1)*w2+(y+2*z-1)*w5
(x-1)*w2+(z)*w3+(y+2*z-1)*w5.

].


Size is: 9.

Polys in M_7 but not in CCGB:
(z)*w4+(y*z-z)*w5,
(x+y-z-1)*w4+w5,
(x-y-z+1)*w3+(x-y-1)*w4+(z)*w5,
(x+y-z-1)*w3+(-2*z+1)*w5,
(z-1)*w2+(z)*w3+(-x-2*y*z+y+3*z-1)*w5,
(y-1)*w2+(-y*z+y+2*z-1)*w5,
(x-z)*w2+(-y*z+y)*w5,


Polys in CCGB but not in M_7:
(z)*w4+(-z)*w5,
(x+y-1)*w4+(-z+1)*w5,
(y-1)*w3+(y)*w4+(-2*z+1)*w5,
(x-z)*w3+(-y)*w4,
(z-1)*w2+(z)*w3+(2*z-1)*w5,
(y-1)*w2+(y+2*z-1)*w5,
(x-1)*w2+(z)*w3+(y+2*z-1)*w5,

--------------------

Consider M_8:
M_8

M = [

(y*z)*w5,
(x-y-z)*w5,
(x+y-1)*w4+(-z+1)*w5,
(x+y-z-1)*w4+w5,
(y-1)*w3+(y)*w4+(x-y-3*z+1)*w5,
(x+y-z-1)*w3+(-2*z+1)*w5,
(z-1)*w2+(z)*w3+(-x-2*y*z+y+3*z-1)*w5,
(y-1)*w2+(y+2*z-1)*w5,
(x-z)*w2+(-y*z+y)*w5.

].

Size is: 9.

CCGB

C = [

(y*z)*w5
(x-y-z)*w5
(z)*w4+(-z)*w5
(x+y-1)*w4+(-z+1)*w5
(y-1)*w3+(y)*w4+(-2*z+1)*w5
(x-z)*w3+(-y)*w4
(z-1)*w2+(z)*w3+(2*z-1)*w5
(y-1)*w2+(y+2*z-1)*w5
(x-1)*w2+(z)*w3+(y+2*z-1)*w5.

].


Size is: 9.

Polys in M_8 but not in CCGB:
(x+y-z-1)*w4+w5,
(y-1)*w3+(y)*w4+(x-y-3*z+1)*w5,
(x+y-z-1)*w3+(-2*z+1)*w5,
(z-1)*w2+(z)*w3+(-x-2*y*z+y+3*z-1)*w5,
(x-z)*w2+(-y*z+y)*w5,


Polys in CCGB but not in M_8:
(z)*w4+(-z)*w5,
(y-1)*w3+(y)*w4+(-2*z+1)*w5,
(x-z)*w3+(-y)*w4,
(z-1)*w2+(z)*w3+(2*z-1)*w5,
(x-1)*w2+(z)*w3+(y+2*z-1)*w5,

--------------------

Consider M_9:
M_9

M = [

(y*z)*w5,
(x-y-z)*w5,
(z)*w4+(-z)*w5,
(x+y-1)*w4+(-z+1)*w5,
(y-1)*w3+(y)*w4+(x+2*y*z-y-3*z+1)*w5,
(x+y-z-1)*w3+(2*y*z-2*z+1)*w5,
(z-1)*w2+(z)*w3+(x+y-1)*w4+(z)*w5,
(y-1)*w2+(-y*z+y+2*z-1)*w5,
(x-z)*w2+(-y*z+y)*w5.

].

Size is: 9.

CCGB

C = [

(y*z)*w5
(x-y-z)*w5
(z)*w4+(-z)*w5
(x+y-1)*w4+(-z+1)*w5
(y-1)*w3+(y)*w4+(-2*z+1)*w5
(x-z)*w3+(-y)*w4
(z-1)*w2+(z)*w3+(2*z-1)*w5
(y-1)*w2+(y+2*z-1)*w5
(x-1)*w2+(z)*w3+(y+2*z-1)*w5.

].


Size is: 9.

Polys in M_9 but not in CCGB:
(y-1)*w3+(y)*w4+(x+2*y*z-y-3*z+1)*w5,
(x+y-z-1)*w3+(2*y*z-2*z+1)*w5,
(z-1)*w2+(z)*w3+(x+y-1)*w4+(z)*w5,
(y-1)*w2+(-y*z+y+2*z-1)*w5,
(x-z)*w2+(-y*z+y)*w5,


Polys in CCGB but not in M_9:
(y-1)*w3+(y)*w4+(-2*z+1)*w5,
(x-z)*w3+(-y)*w4,
(z-1)*w2+(z)*w3+(2*z-1)*w5,
(y-1)*w2+(y+2*z-1)*w5,
(x-1)*w2+(z)*w3+(y+2*z-1)*w5,

--------------------

Consider M_10:
M_10

M = [

(y*z)*w5,
(x-y-z)*w5,
(z)*w4+(-z)*w5,
(x+y-z-1)*w4+w5,
(y-1)*w3+(y)*w4+(-2*z+1)*w5,
(x-z)*w3+(x-1)*w4+(-z+1)*w5,
(z-1)*w2+(z)*w3+(-x-2*y*z+y+3*z-1)*w5,
(y-1)*w2+(-y*z+y+2*z-1)*w5,
(x-z)*w2+(-y*z+y)*w5.

].

Size is: 9.

CCGB

C = [

(y*z)*w5
(x-y-z)*w5
(z)*w4+(-z)*w5
(x+y-1)*w4+(-z+1)*w5
(y-1)*w3+(y)*w4+(-2*z+1)*w5
(x-z)*w3+(-y)*w4
(z-1)*w2+(z)*w3+(2*z-1)*w5
(y-1)*w2+(y+2*z-1)*w5
(x-1)*w2+(z)*w3+(y+2*z-1)*w5.

].


Size is: 9.

Polys in M_10 but not in CCGB:
(x+y-z-1)*w4+w5,
(x-z)*w3+(x-1)*w4+(-z+1)*w5,
(z-1)*w2+(z)*w3+(-x-2*y*z+y+3*z-1)*w5,
(y-1)*w2+(-y*z+y+2*z-1)*w5,
(x-z)*w2+(-y*z+y)*w5,


Polys in CCGB but not in M_10:
(x+y-1)*w4+(-z+1)*w5,
(x-z)*w3+(-y)*w4,
(z-1)*w2+(z)*w3+(2*z-1)*w5,
(y-1)*w2+(y+2*z-1)*w5,
(x-1)*w2+(z)*w3+(y+2*z-1)*w5,

--------------------

Consider M_11:
M_11

M = [

(y*z)*w5,
(x-y-z)*w5,
(z)*w4+(y*z-z)*w5,
(x+y-1)*w4+(-z+1)*w5,
(y-1)*w3+(y)*w4+(-2*z+1)*w5,
(x-y-z+1)*w3+(x-y-1)*w4+(z)*w5,
(z-1)*w2+(z)*w3+(2*z-1)*w5,
(y-1)*w2+(-y*z+y+2*z-1)*w5,
(x-z)*w2+(-y*z+y)*w5.

].

Size is: 9.

CCGB

C = [

(y*z)*w5
(x-y-z)*w5
(z)*w4+(-z)*w5
(x+y-1)*w4+(-z+1)*w5
(y-1)*w3+(y)*w4+(-2*z+1)*w5
(x-z)*w3+(-y)*w4
(z-1)*w2+(z)*w3+(2*z-1)*w5
(y-1)*w2+(y+2*z-1)*w5
(x-1)*w2+(z)*w3+(y+2*z-1)*w5.

].


Size is: 9.

Polys in M_11 but not in CCGB:
(z)*w4+(y*z-z)*w5,
(x-y-z+1)*w3+(x-y-1)*w4+(z)*w5,
(y-1)*w2+(-y*z+y+2*z-1)*w5,
(x-z)*w2+(-y*z+y)*w5,


Polys in CCGB but not in M_11:
(z)*w4+(-z)*w5,
(x-z)*w3+(-y)*w4,
(y-1)*w2+(y+2*z-1)*w5,
(x-1)*w2+(z)*w3+(y+2*z-1)*w5,

--------------------

Consider M_12:
M_12

M = [

(y*z)*w5,
(x-y-z)*w5,
(z)*w4+(y*z-z)*w5,
(x+y-1)*w4+(-z+1)*w5,
(y-1)*w3+(y)*w4+(-2*z+1)*w5,
(x+y-z-1)*w3+(2*y*z-2*z+1)*w5,
(z-1)*w2+(z)*w3+(-x-2*y*z+y+3*z-1)*w5,
(y-1)*w2+(-y*z+y+2*z-1)*w5,
(x-z)*w2+(-y*z+y)*w5.

].

Size is: 9.

CCGB

C = [

(y*z)*w5
(x-y-z)*w5
(z)*w4+(-z)*w5
(x+y-1)*w4+(-z+1)*w5
(y-1)*w3+(y)*w4+(-2*z+1)*w5
(x-z)*w3+(-y)*w4
(z-1)*w2+(z)*w3+(2*z-1)*w5
(y-1)*w2+(y+2*z-1)*w5
(x-1)*w2+(z)*w3+(y+2*z-1)*w5.

].


Size is: 9.

Polys in M_12 but not in CCGB:
(z)*w4+(y*z-z)*w5,
(x+y-z-1)*w3+(2*y*z-2*z+1)*w5,
(z-1)*w2+(z)*w3+(-x-2*y*z+y+3*z-1)*w5,
(y-1)*w2+(-y*z+y+2*z-1)*w5,
(x-z)*w2+(-y*z+y)*w5,


Polys in CCGB but not in M_12:
(z)*w4+(-z)*w5,
(x-z)*w3+(-y)*w4,
(z-1)*w2+(z)*w3+(2*z-1)*w5,
(y-1)*w2+(y+2*z-1)*w5,
(x-1)*w2+(z)*w3+(y+2*z-1)*w5,

--------------------

Consider M_13:
M_13

M = [

(y*z)*w5,
(x-y-z)*w5,
(z)*w4+(y*z-z)*w5,
(x+y-z-1)*w4+w5,
(y-1)*w3+(y)*w4+(-x+y-z+1)*w5,
(x-z)*w3+(x-1)*w4+(-z+1)*w5,
(z-1)*w2+(z)*w3+(-2*y*z+2*z-1)*w5,
(y-1)*w2+(y+2*z-1)*w5,
(x-z)*w2+(-y*z+y)*w5.

].

Size is: 9.

CCGB

C = [

(y*z)*w5
(x-y-z)*w5
(z)*w4+(-z)*w5
(x+y-1)*w4+(-z+1)*w5
(y-1)*w3+(y)*w4+(-2*z+1)*w5
(x-z)*w3+(-y)*w4
(z-1)*w2+(z)*w3+(2*z-1)*w5
(y-1)*w2+(y+2*z-1)*w5
(x-1)*w2+(z)*w3+(y+2*z-1)*w5.

].


Size is: 9.

Polys in M_13 but not in CCGB:
(z)*w4+(y*z-z)*w5,
(x+y-z-1)*w4+w5,
(y-1)*w3+(y)*w4+(-x+y-z+1)*w5,
(x-z)*w3+(x-1)*w4+(-z+1)*w5,
(z-1)*w2+(z)*w3+(-2*y*z+2*z-1)*w5,
(x-z)*w2+(-y*z+y)*w5,


Polys in CCGB but not in M_13:
(z)*w4+(-z)*w5,
(x+y-1)*w4+(-z+1)*w5,
(y-1)*w3+(y)*w4+(-2*z+1)*w5,
(x-z)*w3+(-y)*w4,
(z-1)*w2+(z)*w3+(2*z-1)*w5,
(x-1)*w2+(z)*w3+(y+2*z-1)*w5,

--------------------

Consider M_14:
M_14

M = [

(y*z)*w5,
(x-y-z)*w5,
(z)*w4+(-z)*w5,
(x+y-1)*w4+(-z+1)*w5,
(y-1)*w3+(y)*w4+(-2*z+1)*w5,
(x+y-z-1)*w3+(-2*z+1)*w5,
(z-1)*w2+(z)*w3+(-x+y+3*z-1)*w5,
(y-1)*w2+(-y*z+y+2*z-1)*w5,
(x-z)*w2+(-y*z+y)*w5.

].

Size is: 9.

CCGB

C = [

(y*z)*w5
(x-y-z)*w5
(z)*w4+(-z)*w5
(x+y-1)*w4+(-z+1)*w5
(y-1)*w3+(y)*w4+(-2*z+1)*w5
(x-z)*w3+(-y)*w4
(z-1)*w2+(z)*w3+(2*z-1)*w5
(y-1)*w2+(y+2*z-1)*w5
(x-1)*w2+(z)*w3+(y+2*z-1)*w5.

].


Size is: 9.

Polys in M_14 but not in CCGB:
(x+y-z-1)*w3+(-2*z+1)*w5,
(z-1)*w2+(z)*w3+(-x+y+3*z-1)*w5,
(y-1)*w2+(-y*z+y+2*z-1)*w5,
(x-z)*w2+(-y*z+y)*w5,


Polys in CCGB but not in M_14:
(x-z)*w3+(-y)*w4,
(z-1)*w2+(z)*w3+(2*z-1)*w5,
(y-1)*w2+(y+2*z-1)*w5,
(x-1)*w2+(z)*w3+(y+2*z-1)*w5,

--------------------

Consider M_15:
M_15

M = [

(y*z)*w5,
(x-y-z)*w5,
(z)*w4+(-z)*w5,
(x+y-z-1)*w4+w5,
(y-1)*w3+(y)*w4+(x+2*y*z-y-3*z+1)*w5,
(x+y-z-1)*w3+(2*y*z-2*z+1)*w5,
(z-1)*w2+(z)*w3+(-y*z+2*z-1)*w5,
(y-1)*w2+(y+2*z-1)*w5,
(x-z)*w2+(-y*z+y)*w5.

].

Size is: 9.

CCGB

C = [

(y*z)*w5
(x-y-z)*w5
(z)*w4+(-z)*w5
(x+y-1)*w4+(-z+1)*w5
(y-1)*w3+(y)*w4+(-2*z+1)*w5
(x-z)*w3+(-y)*w4
(z-1)*w2+(z)*w3+(2*z-1)*w5
(y-1)*w2+(y+2*z-1)*w5
(x-1)*w2+(z)*w3+(y+2*z-1)*w5.

].


Size is: 9.

Polys in M_15 but not in CCGB:
(x+y-z-1)*w4+w5,
(y-1)*w3+(y)*w4+(x+2*y*z-y-3*z+1)*w5,
(x+y-z-1)*w3+(2*y*z-2*z+1)*w5,
(z-1)*w2+(z)*w3+(-y*z+2*z-1)*w5,
(x-z)*w2+(-y*z+y)*w5,


Polys in CCGB but not in M_15:
(x+y-1)*w4+(-z+1)*w5,
(y-1)*w3+(y)*w4+(-2*z+1)*w5,
(x-z)*w3+(-y)*w4,
(z-1)*w2+(z)*w3+(2*z-1)*w5,
(x-1)*w2+(z)*w3+(y+2*z-1)*w5,

--------------------

Consider M_16:
M_16

M = [

(y*z)*w5,
(x-y-z)*w5,
(z)*w4+(y*z-z)*w5,
(x+y-1)*w4+(-z+1)*w5,
(y-1)*w3+(y)*w4+(2*y*z-2*z+1)*w5,
(x-z)*w3+(x-1)*w4+(-z+1)*w5,
(z-1)*w2+(z)*w3+(-y*z+2*z-1)*w5,
(y-1)*w2+(-y*z+y+2*z-1)*w5,
(x-z)*w2+(-y*z+y)*w5.

].

Size is: 9.

CCGB

C = [

(y*z)*w5
(x-y-z)*w5
(z)*w4+(-z)*w5
(x+y-1)*w4+(-z+1)*w5
(y-1)*w3+(y)*w4+(-2*z+1)*w5
(x-z)*w3+(-y)*w4
(z-1)*w2+(z)*w3+(2*z-1)*w5
(y-1)*w2+(y+2*z-1)*w5
(x-1)*w2+(z)*w3+(y+2*z-1)*w5.

].


Size is: 9.

Polys in M_16 but not in CCGB:
(z)*w4+(y*z-z)*w5,
(y-1)*w3+(y)*w4+(2*y*z-2*z+1)*w5,
(x-z)*w3+(x-1)*w4+(-z+1)*w5,
(z-1)*w2+(z)*w3+(-y*z+2*z-1)*w5,
(y-1)*w2+(-y*z+y+2*z-1)*w5,
(x-z)*w2+(-y*z+y)*w5,


Polys in CCGB but not in M_16:
(z)*w4+(-z)*w5,
(y-1)*w3+(y)*w4+(-2*z+1)*w5,
(x-z)*w3+(-y)*w4,
(z-1)*w2+(z)*w3+(2*z-1)*w5,
(y-1)*w2+(y+2*z-1)*w5,
(x-1)*w2+(z)*w3+(y+2*z-1)*w5,

--------------------

Consider M_17:
M_17

M = [

(y*z)*w5,
(x-y-z)*w5,
(z)*w4+(-z)*w5,
(x+y-z-1)*w4+w5,
(y-1)*w3+(y)*w4+(x-y-3*z+1)*w5,
(x-y-z+1)*w3+(x-y-1)*w4+(z)*w5,
(z-1)*w2+(z)*w3+(2*z-1)*w5,
(y-1)*w2+(y+2*z-1)*w5,
(x-z)*w2+(-y*z+y)*w5.

].

Size is: 9.

CCGB

C = [

(y*z)*w5
(x-y-z)*w5
(z)*w4+(-z)*w5
(x+y-1)*w4+(-z+1)*w5
(y-1)*w3+(y)*w4+(-2*z+1)*w5
(x-z)*w3+(-y)*w4
(z-1)*w2+(z)*w3+(2*z-1)*w5
(y-1)*w2+(y+2*z-1)*w5
(x-1)*w2+(z)*w3+(y+2*z-1)*w5.

].


Size is: 9.

Polys in M_17 but not in CCGB:
(x+y-z-1)*w4+w5,
(y-1)*w3+(y)*w4+(x-y-3*z+1)*w5,
(x-y-z+1)*w3+(x-y-1)*w4+(z)*w5,
(x-z)*w2+(-y*z+y)*w5,


Polys in CCGB but not in M_17:
(x+y-1)*w4+(-z+1)*w5,
(y-1)*w3+(y)*w4+(-2*z+1)*w5,
(x-z)*w3+(-y)*w4,
(x-1)*w2+(z)*w3+(y+2*z-1)*w5,

--------------------

Consider M_18:
M_18

M = [

(y*z)*w5,
(x-y-z)*w5,
(x+y-1)*w4+(-z+1)*w5,
(x+y-z-1)*w4+w5,
(y-1)*w3+(y)*w4+(x-y-3*z+1)*w5,
(x+y-z-1)*w3+(-2*z+1)*w5,
(z-1)*w2+(z)*w3+(2*z-1)*w5,
(y-1)*w2+(y+2*z-1)*w5,
(x-z)*w2+(-y*z+y)*w5.

].

Size is: 9.

CCGB

C = [

(y*z)*w5
(x-y-z)*w5
(z)*w4+(-z)*w5
(x+y-1)*w4+(-z+1)*w5
(y-1)*w3+(y)*w4+(-2*z+1)*w5
(x-z)*w3+(-y)*w4
(z-1)*w2+(z)*w3+(2*z-1)*w5
(y-1)*w2+(y+2*z-1)*w5
(x-1)*w2+(z)*w3+(y+2*z-1)*w5.

].


Size is: 9.

Polys in M_18 but not in CCGB:
(x+y-z-1)*w4+w5,
(y-1)*w3+(y)*w4+(x-y-3*z+1)*w5,
(x+y-z-1)*w3+(-2*z+1)*w5,
(x-z)*w2+(-y*z+y)*w5,


Polys in CCGB but not in M_18:
(z)*w4+(-z)*w5,
(y-1)*w3+(y)*w4+(-2*z+1)*w5,
(x-z)*w3+(-y)*w4,
(x-1)*w2+(z)*w3+(y+2*z-1)*w5,

--------------------

Consider M_19:
M_19

M = [

(y*z)*w5,
(x-y-z)*w5,
(x+y-1)*w4+(-z+1)*w5,
(x+y-z-1)*w4+w5,
(y-1)*w3+(-x+1)*w4+(-z)*w5,
(x-y-z+1)*w3+(x-y-1)*w4+(z)*w5,
(z-1)*w2+(z)*w3+(x+y-1)*w4+(z)*w5,
(y-1)*w2+(-y*z+y+2*z-1)*w5,
(x-z)*w2+(-y*z+y)*w5.

].

Size is: 9.

CCGB

C = [

(y*z)*w5
(x-y-z)*w5
(z)*w4+(-z)*w5
(x+y-1)*w4+(-z+1)*w5
(y-1)*w3+(y)*w4+(-2*z+1)*w5
(x-z)*w3+(-y)*w4
(z-1)*w2+(z)*w3+(2*z-1)*w5
(y-1)*w2+(y+2*z-1)*w5
(x-1)*w2+(z)*w3+(y+2*z-1)*w5.

].


Size is: 9.

Polys in M_19 but not in CCGB:
(x+y-z-1)*w4+w5,
(y-1)*w3+(-x+1)*w4+(-z)*w5,
(x-y-z+1)*w3+(x-y-1)*w4+(z)*w5,
(z-1)*w2+(z)*w3+(x+y-1)*w4+(z)*w5,
(y-1)*w2+(-y*z+y+2*z-1)*w5,
(x-z)*w2+(-y*z+y)*w5,


Polys in CCGB but not in M_19:
(z)*w4+(-z)*w5,
(y-1)*w3+(y)*w4+(-2*z+1)*w5,
(x-z)*w3+(-y)*w4,
(z-1)*w2+(z)*w3+(2*z-1)*w5,
(y-1)*w2+(y+2*z-1)*w5,
(x-1)*w2+(z)*w3+(y+2*z-1)*w5,

--------------------


=================== RGB =================

RGB = [

(y*z)*w5
(x-y-z)*w5
(z)*w4+(-z)*w5
(x+y-1)*w4+(-z+1)*w5
(2*y-1)/2*w4*w5+1/2*w5^2
(y-1)*w3+(y)*w4+(-2*z+1)*w5
(x-z)*w3+(-y)*w4
w3*w5-w4*w5+(2*z)*w5^2
(z-1)*w2+(z)*w3+(2*z-1)*w5
(y-1)*w2+(y+2*z-1)*w5
(x-1)*w2+(z)*w3+(y+2*z-1)*w5
w2*w5+(-2*z+1)*w5^2
w2*w4+w4*w5+(-2*z)*w5^2.

].


Size is: 13.

It is comprehensive, but not minimal.
RGB is not a subset of CGB!
