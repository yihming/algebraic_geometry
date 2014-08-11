LIB "simulation.lib"		;

// The output file name.
link out = "bad_test_gradelex.mp";

// 0 -- no intermediate debug information is printed to the output file;
// >0 -- otherwise.
int debug_mode = 0		;

// Times of running Algorithm 1 to generate different MCGBs.
int sim_times = 20		;

// sim_option = [opt1, opt2, opt3, opt4], where
// opt1 -- 1 if running Algorithm 1; 0 otherwise.
// opt2 -- 1 if running Algorithm 2; 0 otherwise.
// opt3 -- 1 if running Algorithm 3; 0 otherwise.
// opt4 -- 1 if running checking the CGBness of RGB; 0 otherwise.
intvec sim_option = 1,1,1,1,0	;
	
ring r = (0, a, b), (x, y, u, v), Dp;

ideal polys = (a-1)*u - b*(x-1), (a-1)*(x+1)+bu,
	(a+1)*v - b*(y+1), (a+1)*(y-1) + bv ;
ideal null_ideal = 0		;
list nonnull_list = list()	;

simulate(null_ideal, nonnull_list, polys, sim_times, out, debug_mode, sim_option) ;

