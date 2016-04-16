// Example from A. Montes.
LIB "simulation.lib";

// The output file name.
link out = "cgsqe_seite3.mp"			  ;

	
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


ring R = (0, c1, c2), (u, x1, x2, y1, y2, m, h2, w), Dp	;

set_global_rings_mcgb()		;
	
ideal polys = c1*(c1-1)+h2*c2,
	(m*c1-1)*c1+m*c2^2,
	((1+w*(c1-1)) - x1)^2 + (w*c2-x2)^2 - ((1+w*(c1-1))+x1-2*c1)^2 - (w*c2+x2)^2,
	((1+w*(c1-1))+x1-2*c1)^2 + (w*c2+x2)^2 - ((1+w*(c1-1))+x1-2)^2 - (w*c2+x2)^2,
	((1+w*(c1-1)) - y1)^2 + (w*c2-y2)^2 - ((1+w*(c1-1))+y1-2*m*c1)^2 - (w*c2+y2-2*m*c2)^2,
	((1+w*(c1-1))+y1-2*m*c1)^2 + (w*c2+y2-2*m*c2)^2 - ((1+w*(c1-1))+y1-2*c1)^2 - (w*c2+y2-2*c2)^2,
	((y1-c1)*(y2-x2) - (y2-h2)*(y1-x1))*u-1 ;
	
ideal null_ideal = 0		;
list nonnull_list = c2	;
	
simulate(null_ideal, nonnull_list, polys, sim_times, out, debug_mode, sim_option) ;
