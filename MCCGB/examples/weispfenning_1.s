LIB "simulation.lib"		;
	
link out = "weispfenning_1.mp";

int debug_mode = 0;

int sim_times = 15		;
	
ring r = (0, v, u), x, lp;

	
ideal polys = u*x, v*x;
ideal null_ideal = 0  ;
list nonnull_list = list()	;

simulate(null_ideal, nonnull_list, polys, sim_times, out, debug_mode) ;

/*
out = "weispfenning_1.homog"	;
setring @RP			;
def F = imap(r, polys)		;
option(redSB)			;
def RGB = std(F)		;

setring r			;
def RGB = imap(@RP, RGB)	;
	
simulate_homog(null_ideal, nonnull_list, RGB, "t", sim_times, out, debug_mode) ;
*/
