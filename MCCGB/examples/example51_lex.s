// Example 5.1 in D. Kapur, Y. Sun and D. Wang, "An Efficient Method for Computing Comprehensive Groebner Bases", ISSAC 2011.
LIB "simulation.lib"		;
	
link out = "example51_lex.mp";

int debug_mode = 0;

int sim_times = 15		;
	
ring r = (0, a, b, c), (x, y), lp;

ideal polys = ax-b, by-a, cx2-y, cy2-x;
ideal null_ideal = 0		;
list nonnull_list = list()	;
	
simulate(null_ideal, nonnull_list, polys, sim_times, out, debug_mode) ;
