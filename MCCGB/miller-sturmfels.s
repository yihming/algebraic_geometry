// Example from the book of Ezra Miller and Bernd Sturmfels, "Combinatorial Commutative Algebra".
LIB "simulation.lib"		;

// The output file name.
link out = "miller-sturmfels_lex.mp";

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

// lex order.
ring R = (0, g11, g12, g21, g22), (x1, x2), lp ;
	
ideal polys = g11^2*x1^2 + 2*g11*g12*x1*x2 + g12^2*x2^2,
	g21^2*x1^2 + 2 * g21*g22*x1*x2 + g22^2*x2^2 ;
	
ideal null_ideal = 0		;
list nonnull_list = list()	;

simulate(null_ideal, nonnull_list, polys, sim_times, out, debug_mode, sim_option) ;
