// Example from T.Y. Li, T. Sauer, and J.A. Yorke.
//  The cheater's homotopy: An efficient procedure for solving systems
//  of polynomial equations. SIAM J. Numer, Anal. 5: 1241-1251, 1989.
LIB "simulation.lib"		;

// The output file name.
link out = "resultant.mp";
link dbg_out = "resultant.debug" ;
	
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
intvec sim_option = 0, 1, 1, 1, 1	;

// degree reversed lex order.
ring R = (0, c1, c2, c3, c4, c5, u1, u2, u0), (x, y), Dp ;
	
ideal polys = x^3*y^2 + c1*x^3*y + y^2 + c2 * x + c3,
	c4 * x^4*y^2 - x^2*y + y + c5,
	u0 + u1 * x + u2 * y	;
	
ideal null_ideal = 0		;
list nonnull_list = list()	;

simulate(null_ideal, nonnull_list, polys, sim_times, out, dbg_out, debug_mode, sim_option) ;
