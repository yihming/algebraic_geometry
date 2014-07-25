LIB "simulation.lib"		;
	
link out = "s53.mp";

int debug_mode = 0;

int sim_times = 15		;
	
ring r = (0, a, b), (x2, y2, x3, y3), dp;

ideal polys = -b*x2+(a-1)*y2+b,
	(a-1)*x2+b*y2+a-1,
	b*x3+(-a-1)*y3+b,
	(a+1)*x3+b*y3+(-a-1),
	-x2^2+x3^2-y2^2+y3^2+2*a*x2-2*a*x3;
ideal null_ideal = 0		;
list nonnull_list = list()	;
	
simulate(null_ideal, nonnull_list, polys, sim_times, out, debug_mode) ;
