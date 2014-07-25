LIB "simulation.lib"		;
	
link out = "s16.mp";

int debug_mode = 0;

int sim_times = 15		;
	
ring r = (0, x, y, z), (w2, w3, w4, w5), lp;

ideal polys = (x-y-z)*w5, z*w4-z*w5, (x+y-1)*w4+(-z+1)*w5,
	(y-1)*w3+y*w4+(-2*z+1)*w5, (x-z)*w3-y*w4,
	(z-1)*w2+z*w3+(2z-1)*w5, (y-1)*w2+(y+2*z-1)*w5,
	(x-1)*w2+z*w3+(y+2*z-1)*w5;
ideal null_ideal = 0		;
list nonnull_list = list()	;

simulate(null_ideal, nonnull_list, polys, sim_times, out, debug_mode) ;
