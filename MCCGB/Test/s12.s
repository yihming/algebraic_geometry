// Example from A. Montes.
LIB "simulation.lib"		;

// The output file name.
link out = "s12.mp";
link dbg_out = "s12.debug"	;
	
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
ring R=(0,a,b,l2,l3),(c3,s3,c1,s1), dp;

ideal polys=a-l3*c3-l2*c1,b-l3*s3-l2*s1,c1^2+s1^2-1,c3^2+s3^2-1;;
	
ideal null_ideal = 0		;
list nonnull_list = list()	;

//simulate(null_ideal, nonnull_list, polys, sim_times, out, dbg_out, debug_mode, sim_option) ;
simulate_all_MCGBs(null_ideal, nonnull_list, polys, sim_times, debug_mode, out) ;
