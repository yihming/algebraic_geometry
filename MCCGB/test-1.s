//LIB "random.lib";
LIB "simulation.lib"		;
	
// The output file name.
link out = "test-1_grlex.mp";

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
intvec sim_option = 1, 1, 1, 1, 0	;

// lex order.
ring r = (0, u, v), (y, x, z), dp;

ideal polys = (u-v)*y + vx + (u+v)*z,
	(u+v)*y + (-u+v)*x + (-v)*z;

ideal null_ideal = 0  ;
list nonnull_list = list()	;

simulate(null_ideal, nonnull_list, polys, sim_times, out, debug_mode, sim_option) ;

