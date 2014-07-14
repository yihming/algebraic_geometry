LIB "simulation.lib"		;
	
link out = "sato_suzuki_1.mp";

int debug_mode = 0;

int sim_times = 15		;
	
ring r = (0, a, b), (x, y, z), lp;

ideal polys = x^3 - a, y^4 - b, x + y - z;
ideal null_ideal = 0		;
list nonnull_list = list()	;

simulate(null_ideal, nonnull_list, polys, sim_times, out, debug_mode) ;
