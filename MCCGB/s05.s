// Example from A. Montes.
LIB "simulation.lib"		;

// The output file name.
link out = "s05.mp";

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
ring R = (0, a1, a2, a3, a4), (x1, x2, x3, x4), dp ;
	
ideal polys=x4-a4+a2, x1+x2+x3+x4-a1-a3-a4, x1*x3*x4-a1*a3*a4, x1*x3+x1*x4+x2*x3+x3*x4-a1*a4-a1*a3-a3*a4;
	
ideal null_ideal = 0		;
list nonnull_list = list()	;

simulate(null_ideal, nonnull_list, polys, sim_times, out, debug_mode, sim_option) ;
