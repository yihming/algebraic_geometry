// Example from A. Montes.
LIB "simulation.lib"		;

// The output file name.
link out = "s16.mp";

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
intvec sim_option = 0, 1, 1, 1	;

// lex order.
ring R = (0, x, y, z), (w2, w3, w4, w5), lp;

ideal polys = (x-y-z)*w5, z*w4-z*w5, (x+y-1)*w4+(-z+1)*w5,
	(y-1)*w3+y*w4+(-2*z+1)*w5, (x-z)*w3-y*w4,
	(z-1)*w2+z*w3+(2z-1)*w5, (y-1)*w2+(y+2*z-1)*w5,
	(x-1)*w2+z*w3+(y+2*z-1)*w5;

ideal null_ideal = 0		;
list nonnull_list = list()	;

simulate(null_ideal, nonnull_list, polys, sim_times, out, debug_mode, sim_option) ;
