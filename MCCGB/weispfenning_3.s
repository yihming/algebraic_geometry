LIB "simulation.lib"		;
	
link out = "weispfenning_3.mp";

int debug_mode = 0;

int sim_times = 15		;
	
ring r = (0, v, u), (z, y, x), lp;
	
ideal polys = (u^2 + 1)*y + x^3 - 1, (u^2 + 1)*z + x^2 - 1;
ideal null_ideal = 0  ;
list nonnull_list = list()	;

simulate(null_ideal, nonnull_list, polys, sim_times, out, debug_mode) ;

	
