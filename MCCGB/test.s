LIB "random.lib";
LIB "simulation.lib"		;
	
link out = "test.mp";

int debug_mode = 0;

int sim_times = 20		;
	
ring r = (0, u, v), (x, y, z), lp;
//ideal I = ux, uy, uz, vx, vy, vz;

//ideal polys = randomid(I, 2, 4);

ideal polys = vx + y + (u+v)*z,
	(v-u)*x -y + (-v)*z;

ideal null_ideal = 0		;
list nonnull_list = list()		;

simulate(null_ideal, nonnull_list, polys, sim_times, out, debug_mode) ;
