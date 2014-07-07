// Bug in cgb_mod.lib
LIB "simulation.lib"		;
	
link out = "s11.mp";

int debug_mode = 0;

int sim_times = 15		;
	
ring r = (0, r1, d3, d4, r2, z), (t), lp;

ideal polys = (r1*d3*d4-r1+z-r2^2*d3*d4+r2^2-d3^3*d4+d3^2*d4^2-d3*d4^3+d3*d4)*t^4
	+ (-2*r1*r2*d4+2*r2^3*d4+2*r2*d3^2*d4-4*r2*d3*d4^2+2*r2*d4^3+2*r2*d4)*t^3
	+ (-2*r1+2*z+4*r2^2*d4^2+2*r2^2-2*d3^2*d4^2+4*d4^2)*t^2
	+ (-2*r1*r2*d4+2*r2^3*d4+2*r2*d3^2*d4+4*r2*d3*d4^2+2*r2*d4^3+2*r2*d4)*t
	-r1*d3*d4-r1+z+(r2)^2*d3*d4+(r2)^2+(d3)^2*d4+(d3)^2*(d4)^2+d3*(d4)^3-d3*d4;
ideal null_ideal = 0		;
list nonnull_list = list()	;
	
simulate(null_ideal, nonnull_list, polys, sim_times, out, debug_mode) ;
