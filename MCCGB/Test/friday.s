// Example 5.1 in D. Kapur, Y. Sun and D. Wang, "An Efficient Method for Computing Comprehensive Groebner Bases", ISSAC 2011.
LIB "simulation.lib"		;

// The output file name.
link out = "friday.mp";

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
intvec sim_option = 1, 1, 1, 1	;

// lex order.
ring r = (0, h2, h4, h3, h5, h1), (y, x), dp ;

ideal polys = h1*x^2 + h2 * x, h3*x*y+h4*y+h5 ;
ideal null_ideal = 0		;
list nonnull_list = list()	;
	
//simulate(null_ideal, nonnull_list, polys, sim_times, out, debug_mode, sim_option) ;
simulate_CGB(null_ideal, nonnull_list, polys, sim_times, out, debug_mode) ;
