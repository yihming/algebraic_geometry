// Example from A. Montes.
LIB "simulation.lib"		;

// The output file name.
link out = "s54.mp";
link dbg_out = "s54.debug"	;
link time_out = "s54.time"	;
	
// 0 -- no intermediate debug information is printed to the output file;
// >0 -- otherwise.
int debug_mode = 0;

// Times of running Algorithm 1 to generate different MCGBs.
int sim_times = 1		;

// sim_option = [opt1, opt2, opt3, opt4], where
// opt1 -- 1 if running Algorithm 1; 0 otherwise.
// opt2 -- 1 if running Algorithm 2; 0 otherwise.
// opt3 -- 1 if running Algorithm 3; 0 otherwise.
// opt4 -- 1 if running checking the CGBness of RGB; 0 otherwise.
intvec sim_option = 1, 1, 1, 1, 0	;

// lex order.
ring r = (0, a, b, cv, cw, sv, sw), (x1, x2, y1, y2), lp;

ideal polys = x1^2+y1^2-2*a*x1-2*y1,
	x2^2+y2^2+2*b*x2-2*y2,
	a*x1+y1+(a^2*cv-a^2+cv-1),
	-b*x2+y2+(b^2*cw-b^2+cw-1),
	-x1+a*y1+(a^2*sv+sv),
	-x2-b*y2+(b^2*sw+sw),
	-y1*x2+x1*y2-2*x1+2*x2;
ideal null_ideal = 0		;
list nonnull_list = a2+1, b2+1, a+b	;
	
//simulate(null_ideal, nonnull_list, polys, sim_times, out, dbg_out, time_out, debug_mode, sim_option) ;
simulate_all_MCGBs(null_ideal, nonnull_list, polys, sim_times, debug_mode, out) ;
