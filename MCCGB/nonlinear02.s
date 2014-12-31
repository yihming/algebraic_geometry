// Example from A. Montes.
LIB "simulation.lib";

// The output file name.
link out = "nonlinear02_glex.mp";

// 0 -- no intermediate debug information is printed to the output file;
// >0 -- otherwise.
int debug_mode = 0;

// Times of running Algorithm 1 to generate different MCGBs.
int sim_times = 50	;

// sim_option = [opt1, opt2, opt3, opt4], where
// opt1 -- 1 if running Algorithm 1; 0 otherwise.
// opt2 -- 1 if running Algorithm 2; 0 otherwise.
// opt3 -- 1 if running Algorithm 3; 0 otherwise.
// opt4 -- 1 if running checking the CGBness of RGB; 0 otherwise.
intvec sim_option = 1, 1, 1, 1, 0	;

// degree reversed lex order.
ring R = (0, a, b), (x, y, z), Dp;
//	ideal I = ax2y, a2x2, a;

//	ideal J = bxy2, ab2y2, b3-1 ;

	//ideal polys = (a)*x2y+(a2)*x2+(-3a),(-4ab2)*y2+(-4b3+4) ;
ideal polys = /* f_1 = */ (ab2)*y2+(b3-1),
/* f_2 = */ (a3b2+b3-1)*x2+(3ab2)*y+(-3a2b2),
/* f_7 = */ (a4b2+ab3-a)*x4+(-6a3b2)*x2+(9a2b2);
	
ideal null_ideal = 0		;
	list nonnull_list = list()	;
	simulate(null_ideal, nonnull_list, polys, sim_times, out, debug_mode, sim_option) ;

	/*
	int i				;
	
for (i = 1; i <= sim_times; i++) {
	ideal polys = insertPolyToIdeal(randomid(I, 1, 4), randomid(J, 1, 4)[1]);
	ideal null_ideal = 0		;
list nonnull_list = list()	;

}
	*/
//simulate_CGB(null_ideal, nonnull_list, polys, sim_times, out, debug_mode) ;
//simulate_LeastMCGB(null_ideal, nonnull_list, polys, sim_times, out, debug_mode) ;
//simulate_CCGB(null_ideal, nonnull_list, polys, sim_times, out, debug_mode) ;
