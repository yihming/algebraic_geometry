LIB "random.lib";
LIB "simulation.lib"		;
	
link out = "sit23.mp";

int debug_mode = 0;

int sim_times = 20		;
	
ring r = (0, x), (z1, z2), dp;

//ideal I = ux, uy, uz, vx, vy, vz;

//ideal polys = randomid(I, 2, 4);

ideal polys = x * z1 + x^2 * z2 - 1,
	(x^2+1)*z1 + x^3 * z2	;

ideal null_ideal = 0		;
list nonnull_list = list()	;
	
simulate(null_ideal, nonnull_list, polys, sim_times, out, debug_mode) ;
