// Example from A. Montes.
LIB "simulation.lib";

// The output file name.
link out = "nonlinear04_glex.mp";
link dbg_out = "nonlinear04.debug" ;
	
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
ring R = (0, a, b, c), (x, y), Dp;
	
ideal I = (a-b)*x2, by2, ay;
	

ideal J = a2xy, ay2, by;

ideal polys = randomid(I, 1, 4) + randomid(J, 1, 4) ;

// Experiment Example in Completion draft.
//ideal polys = (a-b)*x2+(-b)*y2+(a)*y, 
//	 axy+(-a)*y2+(-b)*y	;
//	ideal polys = (a-b)*x2 - by2 + ay ,
//	a2y2-ay2-by		;
	
	
// M_compl not CGB.
/*ideal polys = (3a-3b)*x2+(b)*y2+(-3a)*y, 
(-a+b)*x2+(-4b)*y2+(2a)*y, 
(4a2)*xy+(2a+2b)*y2+(-2b)*y, 
(4a+4b)*y2+(2b)*y		;
*/	
// M_simpl not minimal.
//ideal polys = (2a-2b)*x2+(-b)*y2+(4a)*y, 
//(4a2)*xy+(-4a-4b)*y2+(4b)*y	;
	
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
