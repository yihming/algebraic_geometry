
//used by timer
system("--ticks-per-sec",1000);

//the address of the file "cgb_mod.s"
LIB "cgb_mod.s"; 

//the rings, where "x, y" are variables, "a, b, c" are parameters, and "u,v" are 
//auxillary variables. By using "u,v", the algorithm can perform module operators in polynomial rings.
ring RingVar = (0,u12,u13,u22,u23,u32,u33,v11,v12,v13,v21,v22,v23,v31,v32,v33,b,l),(u, v, y1,z1,y2,z2,y3,z3),(lp(2), dp);
ring RingAll = 0, (u, v, y1,z1,y2,z2,y3,z3, u12,u13,u22,u23,u32,u33,v11,v12,v13,v21,v22,v23,v31,v32,v33,b,l), (lp(2), dp(6), dp) ;

//ideal
ideal polys=(u12*y1+u13*z1-v11)^2+(y1-v12)^2+(z1-v13)^2-b,
(u22*y2+u23*z2-v21)^2+(y2-v22)^2+(z2-v23)^2-b,
(u32*y3+u33*z3-v31)^2+(y3-v32)^2+(z3-v33)^2-b,
(u12*y1+u13*z1-u22*y2-u23*z2)^2+(y1-y2)^2+(z1-z2)^2-l,
(u12*y1+u13*z1-u32*y3-u33*z3)^2+(y1-y3)^2+(z1-z3)^2-l,
(u32*y3+u33*z3-u22*y2-u23*z2)^2+(y3-y2)^2+(z3-z2)^2-l;
	
//variables
list aux=u,v;
list vars=y1,z1,y2,z2,y3,z3;
list paras=u12,u13,u22,u23,u32,u33,v11,v12,v13,v21,v22,v23,v31,v32,v33,b,l;

//timer
rtimer=0; 
int aaa=rtimer; 

//G is the CGB; Modcgs is the module form of CGS
ideal G;
list Modcgs;

//main function
//"ideal()" in the following input: the initial equality constraints, 
//if you need "a=0" at the beginning, then use "ideal(a)" instead of "ideal()".
//"list()" in the following input: the initial disequality constraints,
//if you need "b<>0" at the beginning, then use "list(b)" instead of "list()".
G, Modcgs = cgb_mod(polys, ideal(), list(), vars, paras, aux, RingAll, RingVar);

//time
print("time: "+string(rtimer-aaa));

//outputs
StringCGB(G);
StringModCGS_mod(Modcgs);
print("Branch: "+string(size(Modcgs)));
print("Total number of polynomials in the CGB: "+string(size(G)));
