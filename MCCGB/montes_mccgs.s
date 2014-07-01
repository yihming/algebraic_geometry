// Example 9 in [Manubens and Montes 2009].
LIB "simulation.lib"		;
	
link out = "montes_mccgs.mp";

int debug_mode = 0;

int sim_times = 15		;

ring r = (0, b, c, d), (x, y), lp ;
	
ideal polys = x2 + by2 + 2cxy + dx, 2x + 2cy + d, 2by + 2cx;
ideal null_ideal = 0		;
list nonnull_list = list()	;
	
simulate(null_ideal, nonnull_list, polys, sim_times, out, debug_mode) ;

out = "montes_mccgs.homog"	;
setring @RP			;
def F = imap(r, polys)		;
option(redSB)			;
def RGB = std(F)		;

setring r			;
def RGB = imap(@RP, RGB)	;
	
simulate_homog(null_ideal, nonnull_list, RGB, "t", sim_times, out, debug_mode) ;	
