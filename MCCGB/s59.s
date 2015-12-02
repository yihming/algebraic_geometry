// Example from A. Montes.
LIB "simulation.lib"		;

// The output file name.
link out = "s59.mp";
link dbg_out = "s59.debug"	;
	
// 0 -- no intermediate debug information is printed to the output file;
// >0 -- otherwise.
int debug_mode = 0;

// Times of running Algorithm 1 to generate different MCGBs.
int sim_times = 15		;

// sim_option = [opt1, opt2, opt3, opt4], where
// opt1 -- 1 if running Algorithm 1; 0 otherwise.
// opt2 -- 1 if running Algorithm 2; 0 otherwise.
// opt3 -- 1 if running Algorithm 3; 0 otherwise.
// opt4 -- 1 if running checking the CGBness of RGB; 0 otherwise.
intvec sim_option = 1, 1, 1, 1, 0	;

// degree reversed lex order.
ring r = (0, a0, a1, a2, b0, b1, b2, c0, c1), (x, y), dp;

ideal polys = a0*x^2+b0*x*y+c0*y^2,
	a1*x^2+b1*x*y+c1*y^2,
	a2*x+b2*y;
ideal null_ideal = 0		;
list nonnull_list = list()	;
	
//simulate(null_ideal, nonnull_list, polys, sim_times, out, dbg_out, debug_mode, sim_option) ;
simulate_all_MCGBs(null_ideal, nonnull_list, polys, sim_times, debug_mode, out) ;
