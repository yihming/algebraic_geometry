//LIB "random.lib";
LIB "simulation.lib"		;

link out = "linear.mp";

int debug_mode = 0;

int sim_times = 15		;
	
ring r = (0, u, v), (x, y, z), lp;

//ideal I = ux, uy, uz, vx, vy, vz;

//ideal polys = randomid(I, 2, 4);

ideal polys = vx + (u-v)*y + (u+v)*z,
	(v-u)*x + (u+v)*y + (-v)*z;
ideal null_ideal = 0		;
list nonnull_list = list()	;

simulate(null_ideal, nonnull_list, polys, sim_times, out, debug_mode) ;

out = "linear.homog"		;
setring @RP			;
def F = imap(r, polys)		;
option(redSB)			;
def RGB = std(F)		;

setring r			;
def RGB = imap(@RP, RGB)	;

simulate_homog(null_ideal, nonnull_list, RGB, "t", sim_times, out, debug_mode) ;
