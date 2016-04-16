LIB "simulation.lib"		;

// The output file name.
link out = "cbb.mp";
link dbg_out = "cbb.debug"	;
	
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

// degree lex order.
ring r = (0, z), (y, x), Dp;

ideal polys = x^2-z^2-6*x+4*z+5,
	3*y^2+z^2-12*y-4*z+12,
	z^3-8*z^2+19*z-12,
	x^2*z^3-8*x^2*z^2+19*x^2*z+x*z^2-12*x^2-4*x*z-z^2+3*x+4*z-3,
	x^2*z^3-8*x^2*z^2+19*x^2*z+y*z^2-12*x^2-4*y*z-2*z^2+3*y+8*z-6 ;
ideal null_ideal = 0		;
list nonnull_list = list()	;
	
simulate(null_ideal, nonnull_list, polys, sim_times, out, dbg_out, debug_mode, sim_option) ;
