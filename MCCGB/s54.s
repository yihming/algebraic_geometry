// Bug in cgb_mod
LIB "simulation.lib"		;
	
link out = "s54.mp";

int debug_mode = 0;

int sim_times = 15		;
	
ring r = (0, a, b, cv, cw, sv, sw), (x1, x2, y1, y2), lp;

ideal polys = x1^2+y1^2-2*a*x1-2*y1,
	x2^2+y2^2+2*b*x2-2*y2,
	a*x1+y1+(a^2*cv-a^2+cv-1),
	-b*x2+y2+(b^2*cw-b^2+cw-1),
	-x1+a*y1+(a^2*sv+sv),
	-x2-b*y2+(b^2*sw+sw),
	-y1*x2+x1*y2-2*x1+2*x2;
ideal null_ideal = 0		;
list nonnull_list = a2+1, b2+1, a+b	;
	
simulate(null_ideal, nonnull_list, polys, sim_times, out, debug_mode) ;
