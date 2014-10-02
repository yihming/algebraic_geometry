The given ring is:
(0,u,v),(x,y,z),(lp(3),C)

F = {
-x2y+(-3u)*x+z3+(-4v)*z, 
x2y+(4u)*x-2*z3+(-4v)*z, 
2*xy+(3u)*xz+(2v2)*z, 
-2*xy+(-2u)*xz+(-4v2)*z
}.

E = {0}.

N = {}.

=============================


RGB is not the CCGB.

--------------------------------

RGB = [

f_1 = (u3v3+126u3v2-204u2v5+104uv8-16v11)*z
f_2 = (v8)*z2+(-3/4u2v3-189/2u2v2-1/2uv6+90uv5-18v8)*z
f_3 = (uv-2/3v4)*z2+(1/3uv2)*z
f_4 = (v4)*z3+(-1/3v5)*z2+(1/6uv3+21uv2-6v5)*z
f_5 = (u)*z3+(14uv-4v4)*z
f_6 = z4+(8v)*z2+(-2v2)*z
f_7 = (v)*yz+(4/3v4)*z2+(-2/3uv2)*z
f_8 = yz3+(-32/3v4)*z2+(28/3uv2)*z
f_9 = (u)*x-z3+(-8v)*z
f_11 = (v2)*xz-1/2*z3+(-7v)*z
f_13 = xy+(4v2)*z.

].


Size is : 11.

It is comprehensive, but not minimal.

------------------------------

C = [

f_1 = (u3v3+126u3v2-204u2v5+104uv8-16v11)*z
f_2 = (v8)*z2+(-3/4u2v3-189/2u2v2-1/2uv6+90uv5-18v8)*z
f_7 = (v)*yz+(4/3v4)*z2+(-2/3uv2)*z
f_9 = (u)*x-z3+(-8v)*z
f_11 = (v2)*xz-1/2*z3+(-7v)*z
f_13 = xy+(4v2)*z.

].


Size is: 6.

It is comprehensive and minimal.
--------------------------

M_1

M = [

f_1 = (u3v3+126u3v2-204u2v5+104uv8-16v11)*z,
f_2 = (v8)*z2+(-3/4u2v3-189/2u2v2-1/2uv6+90uv5-18v8)*z,
f_7 = (v)*yz+(4/3v4)*z2+(-2/3uv2)*z,
f_9 = (u)*x-z3+(-8v)*z,
f_11 = (v2)*xz-1/2*z3+(-7v)*z,
f_13 = xy+(4v2)*z.

].

Size is: 6.

It is comprehensive and minimal.
--------------------------

M_2

M = [

f_1 = (u3v3+126u3v2-204u2v5+104uv8-16v11)*z,
f_2 = (v8)*z2+(-3/4u2v3-189/2u2v2-1/2uv6+90uv5-18v8)*z,
f_7 = (v)*yz+(4/3v4)*z2+(-2/3uv2)*z,
f_9 = (u)*x-z3+(-8v)*z,
f_11 = (v2)*xz-1/2*z3+(-7v)*z,
f_14 = xy+(2u)*xz.

].

Size is: 6.

It is comprehensive and minimal.
==================================


Comprehensive Groebner Basis: 

f_1 = (u3v3+126u3v2-204u2v5+104uv8-16v11)*z,
f_2 = (v8)*z2+(-3/4u2v3-189/2u2v2-1/2uv6+90uv5-18v8)*z,
f_7 = (v)*yz+(4/3v4)*z2+(-2/3uv2)*z,
f_9 = (u)*x-z3+(-8v)*z,
f_10 = (u3v+126u3-204u2v3+104uv6)*x+(-104/3v7)*z2+(6u2v2+756u2v+40/3uv5+456uv4-640v7)*z,
f_11 = (v2)*xz-1/2*z3+(-7v)*z,
f_12 = (v2)*xz+(-1/2u)*x+(-3v)*z,
f_13 = xy+(4v2)*z,
f_14 = xy+(2u)*xz,
f_15 = (u)*x2z+(-u)*x+(-6v)*z.




Size is: 10.

--------------------------------------


Module Comprehensive Groebner Systems: 

Branch 1:
constraints: v!=0,-u^3*v-126*u^3+204*u^2*v^3-104*u*v^6+16*v^9!=0,u!=0,
RGB from KSW:
[(u^3*v^3+126*u^3*v^2-204*u^2*v^5+104*u*v^8-16*v^11)*z  ,  0]
[(4*v^8)*z^2+(-3*u^2*v^3-378*u^2*v^2-2*u*v^6+360*u*v^5-72*v^8)*z  ,  0]
[(3*u*v-2*v^4)*z^2+(u*v^2)*z  ,  0]
[(6*v^4)*z^3+(-2*v^5)*z^2+(u*v^3+126*u*v^2-36*v^5)*z  ,  0]
[(u)*z^3+(14*u*v-4*v^4)*z  ,  0]
[z^4+(8*v)*z^2+(-2*v^2)*z  ,  0]
[(3*v)*y*z+(4*v^4)*z^2+(-2*u*v^2)*z  ,  0]
[3*y*z^3+(-32*v^4)*z^2+(28*u*v^2)*z  ,  0]
[(u)*x-z^3+(-8*v)*z  ,  0]
[(2*v^2)*x*z-z^3+(-14*v)*z  ,  0]
[x*y+(4*v^2)*z  ,  0]

Module Groebner basis: 
[(u^3*v^3+126*u^3*v^2-204*u^2*v^5+104*u*v^8-16*v^11)*z, 0], 
[(u)*x-z^3+(-8*v)*z , 0].

LPP Set of Module Groebner Basis under specialization:
[ z ]
[ x ]

Branch 2:
constraints: v=0,u!=0,
RGB from KSW:
[z^3  ,  (-2*v^2)*x*z+(14*v)*z]
[(u)*x  ,  (-2*v^2)*x*z+(6*v)*z]
[x*y  ,  (4*v^2)*z]

Module Groebner basis: 
[z^3, (-2*v^2)*x*z+(14*v)*z], 
[(u)*x , (-2*v^2)*x*z+(6*v)*z].

LPP Set of Module Groebner Basis under specialization:
[ z^3 ]
[ x ]

Branch 3:
constraints: v=0,u=0,
RGB from KSW:
[z^3  ,  (-u)*x+(8*v)*z]
[x*y  ,  (4*v^2)*z]

Module Groebner basis: 
[z^3, (-u)*x+(8*v)*z], 
[x*y , (4*v^2)*z].

LPP Set of Module Groebner Basis under specialization:
[ z^3 ]
[ x*y ]

Branch 4:
constraints: u=0,v!=0,v!=0,
RGB from KSW:
[(6*v)*z  ,  (-u)*x^2*z+(u)*x]
[3*z^3  ,  (4*u)*x^2*z+(-7*u)*x]
[x*y  ,  (2*u)*x*z]

Module Groebner basis: 
[(6*v)*z, (-u)*x^2*z+(u)*x], 
[x*y , (2*u)*x*z].

LPP Set of Module Groebner Basis under specialization:
[ z ]
[ x*y ]

Branch 5:
constraints: u^3*v+126*u^3-204*u^2*v^3+104*u*v^6-16*v^9=0,v!=0,u!=0,v!=0,
RGB from KSW:
[(4*v^8)*z^2+(-3*u^2*v^3-378*u^2*v^2-2*u*v^6+360*u*v^5-72*v^8)*z  ,  0]
[(3*u*v-2*v^4)*z^2+(u*v^2)*z  ,  0]
[(378*u^3)*z^2+(-15876*u^3+15120*u^2*v^3-3024*u*v^6)*z  ,  (-3*u^3*v-378*u^3+612*u^2*v^3-312*u*v^6+48*v^9)*z^2+(-u^3*v^2+15876*u^3+204*u^2*v^4-25704*u^2*v^3-104*u*v^7+13104*u*v^6+16*v^10-2016*v^9)*z]
[(6*v^4)*z^3+(-2*v^5)*z^2+(u*v^3+126*u*v^2-36*v^5)*z  ,  0]
[(u)*z^3+(14*u*v-4*v^4)*z  ,  0]
[z^4+(8*v)*z^2+(-2*v^2)*z  ,  0]
[(3*v)*y*z+(4*v^4)*z^2+(-2*u*v^2)*z  ,  0]
[(378*u^3)*y*z+(31752*u^4+60491370240*u^3+6048*u^2*v^6-6168960*u^2*v^5+777288960*u^2*v^4-97938408960*u^2*v^3+3144960*u*v^8-396264960*u*v^7+49929384960*u*v^6-483840*v^11+60963840*v^10-7681443840*v^9)*z  ,  (-3*u^3*v-378*u^3+612*u^2*v^3-312*u*v^6+48*v^9)*y*z+(2*u^4*v^2-31752*u^4-9144576*u^3*v^2-60491370240*u^3+208*u^2*v^7-109440*u^2*v^6+20974464*u^2*v^5-777288960*u^2*v^4+97938408960*u^2*v^3-32*u*v^10+46464*u*v^9-10692864*u*v^8+396264960*u*v^7-49929384960*u*v^6-6528*v^12+1645056*v^11-60963840*v^10+7681443840*v^9)*z]
[3*y*z^3+(-32*v^4)*z^2+(28*u*v^2)*z  ,  0]
[(48*v^9)*x+(-104*v^7)*z^2+(18*u^2*v^2+2268*u^2*v+40*u*v^5+1368*u*v^4-1920*v^7)*z  ,  (3*u^3*v+378*u^3-612*u^2*v^3+312*u*v^6-48*v^9)*x]
[(u)*x-z^3+(-8*v)*z  ,  0]
[(2*v^2)*x*z-z^3+(-14*v)*z  ,  0]
[x*y+(4*v^2)*z  ,  0]

Module Groebner basis: 
[(4*v^8)*z^2+(-3*u^2*v^3-378*u^2*v^2-2*u*v^6+360*u*v^5-72*v^8)*z, 0], 
[(3*v)*y*z+(4*v^4)*z^2+(-2*u*v^2)*z, 0], 
[(48*v^9)*x+(-104*v^7)*z^2+(18*u^2*v^2+2268*u^2*v+40*u*v^5+1368*u*v^4-1920*v^7)*z , (3*u^3*v+378*u^3-612*u^2*v^3+312*u*v^6-48*v^9)*x].

LPP Set of Module Groebner Basis under specialization:
[ z^2 ]
[ y*z ]
[ x ]



