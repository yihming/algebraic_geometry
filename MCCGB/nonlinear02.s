// Example from A. Montes.
LIB "simulation.lib";

// The output file name.
link out = "nonlinear02_glex.mp";
link dbg_out = "nonlinear02.debug"	;

// 0 -- no intermediate debug information is printed to the output file;
// >0 -- otherwise.
int debug_mode = 2;

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
	ideal polys = (a)*x2y+(a2)*x2+(-3a),(-4ab2)*y2+(-4b3+4) ;

//	ideal polys = ab2y2+b3-1, ax2y+a2x2-3a ;
//	ideal polys = ab2y2+b3-1, (a3b2+b3-1)*x2+3ab2y-3a2b2 ;
	
//ideal polys = /* f_5 = */ (ab2)*y2+(b3-1),
/* f_4 = */ //(a3b2+b3-1)*x2+(3ab2)*y+(-3a2b2),
/* f_3 = */ //(a)*x2y+(a2)*x2+(-3a),
/* f_2 = */ //(a2b2)*x2y+(-b3+1)*x2+(-3ab2)*y,
/* f_1 = */ //(a3b2+b3-1)*x4+(-6a2b2)*x2+(9ab2);
	
ideal null_ideal = 0		;
	list nonnull_list = list()	;
	simulate(null_ideal, nonnull_list, polys, sim_times, out, dbg_out, debug_mode, sim_option) ;

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
