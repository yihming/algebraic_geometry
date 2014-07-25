LIB "simulation.lib"		;
	
link out = "s59.mp";

int debug_mode = 0;

int sim_times = 15		;
	
ring r = (0, a0, a1, a2, b0, b1, b2, c0, c1), (x, y), dp;

ideal polys = a0*x^2+b0*x*y+c0*y^2,
	a1*x^2+b1*x*y+c1*y^2,
	a2*x+b2*y;
ideal null_ideal = 0		;
list nonnull_list = list()	;
	
simulate(null_ideal, nonnull_list, polys, sim_times, out, debug_mode) ;
