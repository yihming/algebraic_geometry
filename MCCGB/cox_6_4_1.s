// Example 1 in Section 6.4 of David Cox et al book.
LIB "simulation.lib"		;

// The output file name.
link out = "cox_6_4_1.mp";
link dbg_out = "cox_6_4_1.debug" ;
	
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

// degree lex order.
ring r = (0, u(1), u(2), u(3)), (x(1), x(2), x(3), x(4)), Dp;

ideal polys = x(2) - u(3), (x(1) - u(1))*u(3) - x(2)*u(2),
	      x(4)*x(1) - x(3)*u(3), x(4)*(u(2)-u(1)) - (x(3)-u(1))*u(3);
ideal null_ideal = 0		;
list nonnull_list = list()	;
	
simulate(null_ideal, nonnull_list, polys, sim_times, out, dbg_out, debug_mode, sim_option) ;
