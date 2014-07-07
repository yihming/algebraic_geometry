LIB "simulation.lib"		;
	
link out = "s15.mp";

int debug_mode = 0;

int sim_times = 15		;
	
ring r = (0, a, b, c, d, l2, l3), (s1, s2, s3, c1, c2, c3), lp;

ideal polys = d*s1+a, -d*c1+b, l3*c3+l2*c2-d,
	l3*s3+l2*s2-c, c1^2+s1^2-1, c2^2+s2^2-1, c3^2+s3^2-1;
ideal null_ideal = 0		;
list nonnull_list = list()	;
	
simulate(null_ideal, nonnull_list, polys, sim_times, out, debug_mode) ;
