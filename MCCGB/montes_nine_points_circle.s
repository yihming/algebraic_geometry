// Application in MCCGS paper by A. Montes.
// Nine points circle Theorem.
LIB "simulation.lib"		;
	
link out = "montes_nine_points_circle.mp";

int debug_mode = 0		;

int sim_times = 1		;
	
ring r = (0, a, b, c, d), (x, y, x(0), y(0), r(2)), dp;

ideal polys = (b-d)*x + (c-a)*y + 2ad - 2bc,
	(c-a)*x + (b-d)*y,
	(a-x(0))^2 + (b-y(0))^2-r(2)^2,
	(c-x(0))^2 + (d-y(0))^2 - r(2)^2,
	(a+c-x(0))^2 + (b+d-y(0))^2 - r(2)^2,
	(x-x(0))^2 + (y-y(0))^2 - r(2)^2;
ideal null_ideal = 0		;
list nonnull_list = list()	;
	
simulate(null_ideal, nonnull_list, polys, sim_times, out, debug_mode) ;
