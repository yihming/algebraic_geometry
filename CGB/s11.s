//used by timer
system("--ticks-per-sec",1000);

//the address of the file "cgb_mod.s"
LIB "cgb_mod.s"; 

// Set the file link for output.
link out = "s11.mp";
open(out);
	
//the rings, where "x, y" are variables, "a, b, c" are parameters, and "u,v" are 
//auxillary variables. By using "u,v", the algorithm can perform module operators in polynomial rings.
ring RingVar=(0, r1, d3, d4, r2, z),(u, v, t), lp;
ring RingAll=0,(u, v, t, r1, d3, d4, r2, z), lp;
//ideal
ideal polys = (r1*d3*d4-r1+z-r2^2*d3*d4+r2^2-d3^3*d4+d3^2*d4^2-d3*d4^3+d3*d4)*t^4
	+ (-2*r1*r2*d4+2*r2^3*d4+2*r2*d3^2*d4-4*r2*d3*d4^2+2*r2*d4^3+2*r2*d4)*t^3
	+ (-2*r1+2*z+4*r2^2*d4^2+2*r2^2-2*d3^2*d4^2+4*d4^2)*t^2
	+ (-2*r1*r2*d4+2*r2^3*d4+2*r2*d3^2*d4+4*r2*d3*d4^2+2*r2*d4^3+2*r2*d4)*t
	-r1*d3*d4-r1+z+(r2)^2*d3*d4+(r2)^2+(d3)^2*d4+(d3)^2*(d4)^2+d3*(d4)^3-d3*d4;

	
//variables
list aux=u,v;
list vars=t;
list paras=r1, d3, d4, r2, z;

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
G, Modcgs = cgb_mod(polys, ideal(), list(), vars, paras, aux, RingAll, RingVar, out);

	
//time
//print("time: "+string(rtimer-aaa));
fprintf(out, "time: %s", string(rtimer-aaa));

//outputs
//StringCGB(G);
fprintf(out, "%s", StringCGB(G));
//StringModCGS_mod(Modcgs);
fprintf(out, "%s", StringModCGS_mod(Modcgs));
//print("Branch: "+string(size(Modcgs)));
fprintf(out, "Branch: %s", string(size(Modcgs)));
//print("Total number of polynomials in the CGB: "+string(size(G)));
fprintf(out, "Total number of polynomials in the CGB: %s", string(size(G)));

close(out);
