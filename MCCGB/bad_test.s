LIB "simulation.lib"		;

link out = "bad_test.mp";

int debug_mode = 0		;

int sim_times = 100		;
	
ring r = (0, a, b), (x, y, u, v), lp;

ideal polys = (a-1)*u - b*(x-1), (a-1)*(x+1)+bu,
	(a+1)*v - b*(y+1), (a+1)*(y-1) + bv ;
ideal null_ideal = 0		;
list nonnull_list = list()	;

simulate(null_ideal, nonnull_list, polys, sim_times, out, debug_mode) ;

