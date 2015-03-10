// Example from A. Montes.
LIB "simulation.lib";

// The output file name.
link out = "nonlinear01_lex.mp";
link dbg_out = "nonlinear01_lex.debug" ;

// 0 -- no intermediate debug information is printed to the output file;
// >0 -- otherwise.
int debug_mode = 0;

// Times of running Algorithm 1 to generate different MCGBs.
int sim_times = 20	;

// sim_option = [opt1, opt2, opt3, opt4], where
// opt1 -- 1 if running Algorithm 1; 0 otherwise.
// opt2 -- 1 if running Algorithm 2; 0 otherwise.
// opt3 -- 1 if running Algorithm 3; 0 otherwise.
// opt4 -- 1 if running checking the CGBness of RGB; 0 otherwise.
intvec sim_option = 1, 1, 1, 1, 0	;

// degree reversed lex order.
ring R = (0, a, b), (x, y, z), lp;

ideal I = ax2y, b2x2y, a2x2, by3;

	
//ideal polys = (-4a-2b2)*x2y+(2b)*y3,
//(-3a-4b2)*x2y+(2a2)*x2+(2b)*y3	;

	ideal polys = (a-2b)*x+y2+(a+b)*z,
	a2x+y+bz		;
	
//ideal polys = (a3+a2b+ab2+b3)*x2 + (a2+b2+1)*x + (a-b)*(b+2) ;
//ideal polys = randomid(I, 2, 4);

	
ideal null_ideal = 0		;
list nonnull_list = list()	;
	
simulate(null_ideal, nonnull_list, polys, sim_times, out, dbg_out, debug_mode, sim_option) ;
//simulate_CGB(null_ideal, nonnull_list, polys, sim_times, out, debug_mode) ;
//simulate_LeastMCGB(null_ideal, nonnull_list, polys, sim_times, out, debug_mode) ;
//simulate_CCGB(null_ideal, nonnull_list, polys, sim_times, out, debug_mode) ;
