LIB "random.lib";
LIB "simulation.lib"		;

// The output file name.
link out = "higher.mp";
link dbg_out = "higher.debug"	;
	
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
	
ring r = (0, u, v), (x, y, z), Dp;

ideal I1 = uvx, ux2y, ux2, yz;
ideal I2 = ux, vx, u2z, yz;

ideal polys = randomid(I1, 2, 3) + randomid(I2, 1, 3);

	
ideal null_ideal = 0		;
list nonnull_list = list()	;

simulate(null_ideal, nonnull_list, polys, sim_times, out, dbg_out, debug_mode, sim_option) ;
