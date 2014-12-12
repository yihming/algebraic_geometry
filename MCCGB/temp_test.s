// Example from A. Montes.
LIB "simulation.lib";

// The output file name.
link out = "temp_test.mp"			  ;

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


ring R = (0, u, v), (x, y), lp	;

set_global_rings_mcgb()		;
	
ideal I = u2xy, u-v			;
ideal J = v2x2, u3v-v2			;
	
ideal polys = 	insertPolyToIdeal(randomid(I, 1, 4), randomid(J, 1, 4)[1]) ;

print(polys)			;
	
ideal null_ideal = 0		;
list nonnull_list = list()	;
	
simulate(null_ideal, nonnull_list, polys, sim_times, out, debug_mode, sim_option) ;
