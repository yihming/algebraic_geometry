// Example 1 from C. Chen et al's paper on Comprehensive Triangular Decomposition.
LIB "simulation.lib"		;

// The output file name.
link out = "ctd_gradelex.mp";

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
ring r = (0, u, v), (x, y), Dp;
//ideal I = ux, uy, uz, vx, vy, vz;

//ideal polys = randomid(I, 2, 4);

ideal polys = vxy + ux2 + x,
	uy2 + x2;

ideal null_ideal = 0		;
list nonnull_list = list()		;

simulate(null_ideal, nonnull_list, polys, sim_times, out, debug_mode, sim_option) ;
