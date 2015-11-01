LIB "simulation.lib"		;

// The output file name.
link out = "bad_test.mp";
link dbg_out = "bad_test.debug"	;
link time_out = "bad_test.time"	;
	
// 0 -- no intermediate debug information is printed to the output file;
// >0 -- otherwise.
int debug_mode = 0		;

// Times of running Algorithm 1 to generate different MCGBs.
	int sim_times = 20		;

// sim_option = [opt1, opt2, opt3, opt4], where
// opt1 -- 1 if running Algorithm 1; 0 otherwise.
// opt2 -- 1 if running Algorithm 2; 0 otherwise.
// opt3 -- 1 if running Algorithm 3; 0 otherwise.
// opt4 -- 1 if running checking the CGBness of RGB; 0 otherwise.
intvec sim_option = 1,0,1,1,1	;
	
ring r = (0, a, b), (x, y, u, v), lp;

ideal polys = (a-1)*u - b*(x-1), (a-1)*(x+1)+bu,
		(a+1)*v - b*(y+1), (a+1)*(y-1) + bv ;
/*	ideal polys = (a2+2a+b2+1)*v+(-2ab-2b),
	(a2-2a+b2+1)*u+(2ab-2b),
	(a2-2a+b2+1)*x+(a2-2a-b2+1),
	(a2+2a+b2+1)*y+(-a2-2a+b2-1) ;
*/	

/*ideal polys = (a2+2a+b2+1)*v+(-2ab-2b),
(a2-2a+b2+1)*u+(2ab-2b),
 (b)*y+(-a-1)*v+(b),
 (a+1)*y+(b)*v+(-a-1),
	(b)*x+(-a+1)*u+(-b),
	 (a-1)*x+(b)*u+(a-1);
*/	
/*ideal polys  =(a-1)*u2 - b*(x2-1), (a-1)*(x2+1)+bu2,
	(a+1)*v2 - b*(y2+y), (a+1)*(y2-1) + bv2 ;
*/	
ideal null_ideal = 0		;
list nonnull_list = list()	;

//simulate(null_ideal, nonnull_list, polys, sim_times, out, dbg_out, time_out, debug_mode, sim_option) ;
simulate_all_MCGBs(null_ideal, nonnull_list, polys, sim_times, debug_mode, out) ;

