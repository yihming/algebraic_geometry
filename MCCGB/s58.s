// Example from A. Montes.
LIB "simulation.lib"		;

// The output file name.
link out = "s58.mp";

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
intvec sim_option = 0, 1, 1, 1	;

// degree reversed lex order.
ring r = (0, a0, a1, b0, b1, c0, c1), (x, y), dp;

ideal polys = a0*x^2 + b0*y +c0,
	a1*x^2+b1*y+c1;
ideal null_ideal = 0		;
list nonnull_list = list()	;
	
simulate(null_ideal, nonnull_list, polys, sim_times, out, debug_mode, sim_option) ;
