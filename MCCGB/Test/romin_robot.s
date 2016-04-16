// Example 12 in MCCGS paper by A. Montes.
// The system of the Romin robot (Gonzalez-Lopez and Recio, 1993).
LIB "simulation.lib"		;

// The output file name.
link out = "romin_robot.mp";

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
ring r = (0, l2, l3, a, b, c, d), (c3, s3, c2, s2, c1, s1), lp;

ideal polys = a + d * s1,
	b - d * c1,
	l2*c2 + l3*c3 - d,
	l2*s2 + l3*s3 - c,
	s1^2 + c1^2 - 1,
	s2^2 + c2^2 - 1,
	s3^2 + c3^2 - 1;

ideal null_ideal = 0		;
list nonnull_list = list()	;
	
simulate(null_ideal, nonnull_list, polys, sim_times, out, debug_mode, sim_option) ;
