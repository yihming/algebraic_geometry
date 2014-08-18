// Example from A. Montes.
LIB "simulation.lib"		;

// The output file name.
link out = "s53.mp";

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
ring r = (0, a, b), (x2, y2, x3, y3), dp;

ideal polys = -b*x2+(a-1)*y2+b,
	(a-1)*x2+b*y2+a-1,
	b*x3+(-a-1)*y3+b,
	(a+1)*x3+b*y3+(-a-1),
	-x2^2+x3^2-y2^2+y3^2+2*a*x2-2*a*x3;

ideal null_ideal = 0		;
list nonnull_list = list()	;
	
simulate(null_ideal, nonnull_list, polys, sim_times, out, debug_mode, sim_option) ;
