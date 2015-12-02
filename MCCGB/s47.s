// Example from A. Montes.
LIB "simulation.lib"		;

// The output file name.
link out = "s47.mp";
link dbg_out = "s47.debug"	;
	
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

// lex order.
ring r = (0, a, b), (x0, x1, x2, x3, y0, y1, y2, y3, r2), lp;

ideal polys = x0^2+y0^2-r2, x0^2+y0^2+(-2*a-2)*x0-2*b*y0-r2+(a^2+2*a+b^2+1),
	x0^2+y0^2+(-2*a+2)*x0+(-2*b)*y0-r2+(a^2-2*a+b^2+1),
	x0^2+y0^2-4*a*x0-r2+4*a^2,
	x1^2+y1^2-2*x1*x0+x0^2-2*y1*y0+y0^2+2*a*x1+2*b*y1-2*a*x0-2*b*y0-r2+(a^2+b^2),
	x1-a, (a+1)*x1+b*y1-a-1,
	x1^2+y1^2-2*x1*x0+x0^2-2*y1*y0+y0^2+2*x1-2*x0-r2+1,
	x1^2+y1^2-2*x1*x0+x0^2-2*y1*y0+y0^2-2*x1+2*x0-r2+1,
	b*x2+(-a-1)*y2+2*b,
	(a+1)*x2+b*y2+(-2*a-2),
	x2^2+y2^2-2*x2*x0+x0^2-2*y2*y0+y0^2-r2,
	b*x3+(-a+1)*y3-2*b,
	(a-1)*x3+b*y3+(2*a-2),
	x3^2+y3^2-2*x3*x0+x0^2-2*y3*y0+y0^2-r2;

ideal null_ideal = 0		;
list nonnull_list = list()	;
	
//simulate(null_ideal, nonnull_list, polys, sim_times, out, dbg_out, debug_mode, sim_option) ;
simulate_all_MCGBs(null_ideal, nonnull_list, polys, sim_times, debug_mode, out) ;
