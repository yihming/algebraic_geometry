// Example from A. Montes.
LIB "simulation.lib"		;

// The output file name.
link out = "s20.mp";
link dbg_out = "s20.debug"	;
	
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

// degree reversed lex order.
ring R=(0,P1,Q1,P2,Q2),(e2,f2,e3,f3),dp;

ideal polys=14-12*e2-110*f2-2*e3-10*f3-P1, 2397-2200*e2+240*f2-200*e3+40*f3-20*Q1, 16*e2^2-4*e2*e3-20*e2*f3+20*e3*f2+16*f2^2-4*f2*f3-12*e2+110*f2-P2, 2599*e2^2-400*e2*e3+80*e2*f3-80*e3*f2+2599*f2^2-400*f2*f3-2200*e2-240*f2-20*Q2;
	
ideal null_ideal = 0		;
list nonnull_list = list()	;

simulate(null_ideal, nonnull_list, polys, sim_times, out, dbg_out, debug_mode, sim_option) ;
