LIB "simulation.lib"		;
	
link out = "s10.mp";

int debug_mode = 0;

int sim_times = 15		;
	
ring r = (0, r1, z), (s1, s2, c1, c2, l), dp;

ideal polys = s1*s2*l-c1*c2*l-c1+r1 ,
	-s1*c2*l-s1-c1*s2*l+z	    ,
	(s1)^2+(c1)^2-1		,
	(s2)^2+(c2)^2-1;
ideal null_ideal = 0		;
list nonnull_list = list()	;

simulate(null_ideal, nonnull_list, polys, sim_times, out, debug_mode) ;
