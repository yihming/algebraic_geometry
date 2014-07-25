LIB "simulation.lib"		;
	
// The output file name.
link out = "sato_suzuki_3.mp";

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
intvec sim_option = 0, 0, 1, 1	;

// lex order.
ring r = (0, a, b, c, d), (x(1), x(2), y(1), y(2), s), lp;
	
ideal polys = a*x(1)^2 + b * y(1), c*y(2)^2 + d * x(2), (x(1) - x(2))^2 + (y(1) - y(2))^2 - s,
	      4*a*c*x(1)*y(2) - b*d, 2*a*x(1)*y(1) - 2*a*x(1)*y(2) - b*x(1) + b*x(2);
ideal null_ideal = 0		;
list nonnull_list = list()	;

simulate(null_ideal, nonnull_list, polys, sim_times, out, debug_mode, sim_option) ;
	
	
