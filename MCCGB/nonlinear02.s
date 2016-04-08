// Example from A. Montes.
LIB "simulation.lib";

// The output file name.
link out = "nonlinear02.mp";
link dbg_out = "nonlinear02.debug"	;
link time_out = "nonlinear.time"	;

// 0 -- no intermediate debug information is printed to the output file;
// >0 -- otherwise.
int debug_mode = 0;

// Times of running Algorithm 1 to generate different MCGBs.
int sim_times = 50	;

// sim_option = [opt1, opt2, opt3, opt4], where
// opt1 -- 1 if running Algorithm 1; 0 otherwise.
// opt2 -- 1 if running Algorithm 2; 0 otherwise.
// opt3 -- 1 if running Algorithm 3; 0 otherwise.
// opt4 -- 1 if running checking the CGBness of RGB; 0 otherwise.
intvec sim_option = 1, 1, 1, 1, 0	;

// degree reversed lex order.
ring R = (0, a, b), (x, y), Dp;

ideal polys = (a-b)*x2-by2+ay, axy-ay2-by ;
	
ideal null_ideal = 0		;
list nonnull_list = list()	;
//simulate(null_ideal, nonnull_list, polys, sim_times, out, dbg_out, time_out, debug_mode, sim_option) ;
simulate_all_MCGBs(null_ideal, nonnull_list, polys, sim_times, debug_mode, out);
