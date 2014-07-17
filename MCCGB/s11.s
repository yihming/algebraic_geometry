// Bug in cgb_mod.lib
LIB "simulation.lib";
	
link out = "s11.mp";

int debug_mode = 0;

int sim_times = 15		;
	
ring R = (0, r, Z, r2, d3, d4), (t), dp;

ideal polys = (r*d3*d4-r+Z-r2^2*d3*d4+r2^2-d3^3*d4+d3^2*d4^2-d3*d4^3+d3*d4)*t^4
	+ (-2*r*r2*d4+2*r2^3*d4+2*r2*d3^2*d4-4*r2*d3*d4^2+2*r2*d4^3+2*r2*d4)*t^3
	+ (-2*r+2*Z+4*r2^2*d4^2+2*r2^2-2*d3^2*d4^2+4*d4^2)*t^2
	+ (-2*r*r2*d4+2*r2^3*d4+2*r2*d3^2*d4+4*r2*d3*d4^2+2*r2*d4^3+2*r2*d4)*t
	-r*d3*d4-r+Z+(r2)^2*d3*d4+(r2)^2+(d3)^3*d4+(d3)^2*(d4)^2+d3*(d4)^3-d3*d4;
ideal null_ideal = 0		;
list nonnull_list = list()	;
	
//simulate(null_ideal, nonnull_list, polys, sim_times, out, debug_mode) ;
simulate_CGB(null_ideal, nonnull_list, polys, sim_times, out, debug_mode) ;
