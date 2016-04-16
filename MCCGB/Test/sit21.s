LIB "simulation.lib"		;

// The output file name.
link out = "sit21_lex.mp";
link dbg_out = "sit21.debug"	;
	
// 0 -- no intermediate debug information is printed to the output file;
// >0 -- otherwise.
int debug_mode = 0;

// Times of running Algorithm 1 to generate different MCGBs.
int sim_times = 20		;

// sim_option = [opt1, opt2, opt3, opt4], where
// opt1 -- 1 if running Algorithm 1; 0 otherwise.
// opt2 -- 1 if running Algorithm 2; 0 otherwise.
// opt3 -- 1 if running Algorithm 3; 0 otherwise.
// opt4 -- 1 if running checking the CGBness of RGB; 0 otherwise.
intvec sim_option = 1, 1, 1, 1,0	;

// lex order.
ring r = (0, a, b), (z1, z2, z3), lp;

ideal polys = (-a+b)*z1 + a *z2 + (a^2-1)*z3,
	b * z1 + (a^2+1)*z2 + a^3 * z3 ;

ideal null_ideal = 0  ;
list nonnull_list = list()	;
	
simulate(null_ideal, nonnull_list, polys, sim_times, out, dbg_out, debug_mode, sim_option) ;

