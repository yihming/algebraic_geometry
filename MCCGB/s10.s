// Example from A. Montes.
LIB "simulation.lib"		;

// The output file name.
link out = "s10.mp";
link dbg_out = "s10.debug"	;
	
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
ring R = (0, r, z), (s1, c1, s2, c2, l), lp;

ideal polys = s1*s2*l-c1*c2*l-c1+r1 ,
	-s1*c2*l-s1-c1*s2*l+z	    ,
	(s1)^2+(c1)^2-1		,
	(s2)^2+(c2)^2-1;

ideal null_ideal = 0		;
list nonnull_list = list()	;

simulate(null_ideal, nonnull_list, polys, sim_times, out, dbg_out, debug_mode, sim_option) ;
