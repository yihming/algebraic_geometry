LIB "simulation.lib"		;
	
link out = "weispfenning_4.mp";

int debug_mode = 0;

int sim_times = 15		;
	
ring r = (0, v, u), (y, x), lp;

	
ideal polys = y + u*x + v, u*y + x + v;

ideal null_ideal = 0  ;
list nonnull_list = list()	;

simulate(null_ideal, nonnull_list, polys, sim_times, out, debug_mode) ;

