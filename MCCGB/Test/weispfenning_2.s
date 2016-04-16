// Example 8.2 in Weispfenning's CCGB paper, 2003.
LIB "simulation.lib"		;

// The output file name.
link dbg_out = "weispfenning_2.debug" ;
link out = "weispfenning_2.mp";
link time_out = "weispfenning_2.time" ;
	
// 0 -- no intermediate debug information is printed to the output file;
// >0 -- otherwise.
int debug_mode = 2;

// Times of running Algorithm 1 to generate different MCGBs.
int sim_times = 15		;

// sim_option = [opt1, opt2, opt3, opt4], where
// opt1 -- 1 if running Algorithm 1; 0 otherwise.
// opt2 -- 1 if running Algorithm 2; 0 otherwise.
// opt3 -- 1 if running Algorithm 3; 0 otherwise.
// opt4 -- 1 if running checking the CGBness of RGB; 0 otherwise.
intvec sim_option = 1,1,1,1,0	;
	
// lex order.
ring r = (0, v, u), (z, y, x), lp;
	
ideal polys = uy+x, vz+x+1;
ideal null_ideal = 0  ;
list nonnull_list = list()	;
//simulate(null_ideal, nonnull_list, polys, sim_times, out, dbg_out, time_out, debug_mode, sim_option) ;
simulate_all_MCGBs(null_ideal, nonnull_list, polys, sim_times, debug_mode, out) ;

