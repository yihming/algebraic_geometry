
//used by timer
system("--ticks-per-sec",1000);

//the address of the file "cgb_mod.s"
LIB "cgb_mod.s";

// File link for output.
link out = "example51.mp" ;
open(out)			   ;

//the rings, where "x, y" are variables, "a, b, c" are parameters, and "u,v" are 
//auxillary variables. By using "u,v", the algorithm can perform module operators in polynomial rings.
ring RingVar=(0, a, b, c),(u, v, x, y), lp;
ring RingAll = 0, (u, v, x, y, a, b, c), lp;
	
//ideal
ideal polys = a*x-b, b*y-a, c*x^2-y, c*y^2-x;
	
//variables
list aux=u, v;
list vars=x, y;
list paras=a, b, c;

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
fprintf(out, "time: %s", string(rtimer-aaa)) ;

//outputs
/*
StringCGB(G);
StringModCGS_mod(Modcgs);
print("Branch: "+string(size(Modcgs)));
print("Total number of polynomials in the CGB: "+string(size(G)));
*/
fprintf(out, "%s", StringCGB(G)) ;
fprintf(out, "%s", StringModCGS_mod(Modcgs)) ;
fprintf(out, "Branch: %s", string(size(Modcgs))) ;
fprintf(out, "Total number of polynomials in the CGB: %s", string(size(G))) ;

close(out)			;
