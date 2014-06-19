// Example in Section 5 of [Montes and Wibmer 2010].
LIB "simulation.lib"		;
	
link out = "montes_wibmer_5.mp";

int debug_mode = 0;

int sim_times = 1		;

ring r = (0, a, b), (x(2), x(3), y(2), y(3)), dp;

ideal polys = (a-1)*y(2) - b*(x(2)-1), (a-1)*(x(2)+1)+b*y(2),
	      (a+1)*y(3) - b*(x(3)+1), (a+1)*(x(3)-1)+b*y(3),
	      (x(3)-a)^2 + y(3)^2 - (x(2) - a)^2 - y(2)^2;
ideal null_ideal = 0		;
list nonnull_list = list()	;

simulate(null_ideal, nonnull_list, polys, sim_times, out, debug_mode) ;

