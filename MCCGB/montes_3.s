// Example 3 in [Montes 2007].
LIB "simulation.lib"		;
	
link out = "montes_3.mp";

int debug_mode = 0;

int sim_times = 20		;

ring r = (0, a, b, c), (x, y), lp;

	
ideal polys = a*x^2*y + a + 3*b^2, a*b*x*y - a*c*x*y + a*b*x + 5*c;
ideal null_ideal = 0		;
list nonnull_list = list()	;
	
simulate(null_ideal, nonnull_list, polys, sim_times, out, debug_mode) ;

out = "montes_3.homog"	;
setring @RP			;
def F = imap(r, polys)		;
option(redSB)			;
def RGB = std(F)		;

setring r			;
def RGB = imap(@RP, RGB)	;
	
simulate_homog(null_ideal, nonnull_list, RGB, "t", sim_times, out, debug_mode) ;	
