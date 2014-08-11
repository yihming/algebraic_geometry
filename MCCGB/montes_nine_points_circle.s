// Application in MCCGS paper by A. Montes.
// Nine points circle Theorem.
LIB "simulation.lib"		;

// The output file name.
link out = "montes_nine_points_circle_grlex.mp";

// 0 -- no intermediate debug information is printed to the output file;
// >0 -- otherwise.
int debug_mode = 0		;

// Times of running Algorithm 1 to generate different MCGBs.
int sim_times = 15		;

// sim_option = [opt1, opt2, opt3, opt4], where
// opt1 -- 1 if running Algorithm 1; 0 otherwise.
// opt2 -- 1 if running Algorithm 2; 0 otherwise.
// opt3 -- 1 if running Algorithm 3; 0 otherwise.
// opt4 -- 1 if running checking the CGBness of RGB; 0 otherwise.
intvec sim_option = 1, 1, 1, 1, 0	;

// degree reversed lex order.
ring r = (0, a, b, c, d), (x, y, x(0), y(0), r(2)), dp;

ideal polys = (b-d)*x + (c-a)*y + 2ad - 2bc,
	(c-a)*x + (b-d)*y,
	(a-x(0))^2 + (b-y(0))^2-r(2)^2,
	(c-x(0))^2 + (d-y(0))^2 - r(2)^2,
	(a+c-x(0))^2 + (b+d-y(0))^2 - r(2)^2,
	(x-x(0))^2 + (y-y(0))^2 - r(2)^2;
ideal null_ideal = 0		;
list nonnull_list = list()	;
	
simulate(null_ideal, nonnull_list, polys, sim_times, out, debug_mode, sim_option) ;
