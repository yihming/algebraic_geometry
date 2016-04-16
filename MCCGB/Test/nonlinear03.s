// Example from A. Montes.
LIB "simulation.lib";

// The output file name.
link out = "nonlinear03_lex.mp";
link dbg_out = "nonlinear03.debug" ;
	
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
//ring R = (0, u, v), (x, y, z), lp;
ring R = (0, u, v), (x, y, z), lp	;

ideal I = ux2, y, u;
ideal J = vy2, ux, u-v		;
//ideal I = ux2y, vy, u	;
//ideal J = vxy2, uy, v	;
//ideal K = u		;

	//ideal polys = (u2+1)*x, (u+5)*x, (v-1)*x ;
//ideal polys = randomid(I, 1, 4) + randomid(J, 1, 4);
//ideal polys = uz+x, (u+1)*y-x	;
ideal polys = ux2-2y+(4u+4v)*z, (-2u+2v)*x2-2y+4vz ;
	
ideal null_ideal = 0		;
list nonnull_list = list()	;
	
simulate(null_ideal, nonnull_list, polys, sim_times, out, dbg_out, debug_mode, sim_option) ;
//simulate_CGB(null_ideal, nonnull_list, polys, sim_times, out, debug_mode) ;
//simulate_LeastMCGB(null_ideal, nonnull_list, polys, sim_times, out, debug_mode) ;
//simulate_CCGB(null_ideal, nonnull_list, polys, sim_times, out, debug_mode) ;
