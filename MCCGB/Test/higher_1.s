LIB "simulation.lib"		;

// The output file name.
link out = "higher_1_lex.mp";
link dbg_out = "higher_1.debug"	;
	
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
	
ring r = (0, u, v), (x, y, z), lp;

ideal polys = -x2y+(-3u)*x+z3+(-4v)*z, 
x2y+(4u)*x-2*z3+(-4v)*z		,
2*xy+(3u)*xz+(2v2)*z		;
	//-2*xy+(-2u)*xz+(-4v2)*z;
	
ideal null_ideal = 0		;
list nonnull_list = list()	;

simulate(null_ideal, nonnull_list, polys, sim_times, out, dbg_out, debug_mode, sim_option) ;
