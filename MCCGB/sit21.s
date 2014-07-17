LIB "simulation.lib"		;
	
link out = "sit21.mp";

int debug_mode = 0;

int sim_times = 20		;
	
ring r = (0, a, b), (z1, z2, z3), lp;

ideal polys = (-a+b)*z1 + a *z2 + (a^2-1)*z3,
	b * z1 + (a^2+1)*z2 + a^3 * z3 ;

ideal null_ideal = 0  ;
list nonnull_list = list()	;
	
//simulate(null_ideal, nonnull_list, polys, sim_times, out, debug_mode) ;
simulate_CGB(null_ideal, nonnull_list, polys, sim_times, out, debug_mode) ;

/*
out = "sit21.homog"	;
debug_mode = 0		;
sim_times = 2		;
setring @RP			;
def F = imap(r, polys)		;
option(redSB)			;
def RGB = std(F)		;

setring r			;
def RGB = imap(@RP, RGB)	;
	
simulate_homog(null_ideal, nonnull_list, RGB, "t", sim_times, out, debug_mode) ;	
*/
