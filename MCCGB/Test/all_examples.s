// Batch all examples together.
LIB "simulation.lib";

// The output file name.
link out;

int debug_mode = 0;
int sim_times = 20;
link dbg_out = "temptemp.debug"		;
	
intvec sim_option = 1, 0, 1, 1, 0;

// bad_test.s:
/*
print("=========== bad_test starts ==============") ;
	// lex order.
print("------ lex ---------")	;
if (defined(R)) {
	kill R, @R, @RP, @P, @RUA, @U, @AXU;
}
ring R = (0, a, b), (x, y, u, v), lp ;
out = "bad_test_lex.mp"		     ;
ideal polys = (a-1)*u - b*(x-1), (a-1)*(x+1)+bu,
	(a+1)*v - b*(y+1), (a+1)*(y-1) + bv ;
ideal null_ideal = 0		;
list nonnull_list = list()	;
simulate(null_ideal, nonnull_list, polys, sim_times, out, dbg_out, debug_mode, sim_option) ;
	// grlex order.
print("------ grlex ---------")	;
kill R, @R, @RP, @P, @RUA, @U, @AXU;
ring R = (0, a, b), (x, y, u, v), dp ;
out = "bad_test_grlex.mp"		     ;
ideal polys = (a-1)*u - b*(x-1), (a-1)*(x+1)+bu,
	(a+1)*v - b*(y+1), (a+1)*(y-1) + bv ;
ideal null_ideal = 0		;
list nonnull_list = list()	;
simulate(null_ideal, nonnull_list, polys, sim_times, out, dbg_out, debug_mode, sim_option) ;
//	simulate(null_ideal, nonnull_list, polys, sim_times, out, debug_mode, sim_option) ;
	// glex order.
print("------ glex ---------")	;
kill R, @R, @RP, @P, @RUA, @U, @AXU;
ring R = (0, a, b), (x, y, u, v), Dp ;
out = "bad_test_gradelex.mp"		     ;
ideal polys = (a-1)*u - b*(x-1), (a-1)*(x+1)+bu,
	(a+1)*v - b*(y+1), (a+1)*(y-1) + bv ;
ideal null_ideal = 0		;
list nonnull_list = list()	;
simulate(null_ideal, nonnull_list, polys, sim_times, out, dbg_out, debug_mode, sim_option) ;
//	simulate(null_ideal, nonnull_list, polys, sim_times, out, debug_mode, sim_option) ;

print("=========== bad_test finished ==============" + newline) ;
	
// example51.s:
print("=========== example51 starts ==============") ;
	// lex order.
print("------ lex ---------")	;
kill R, @R, @RP, @P, @RUA, @U, @AXU;
ring R = (0, a, b, c), (x, y), lp;
out = "example51_lex.mp"		     ;
ideal polys = ax-b, by-a, cx2-y, cy2-x;
ideal null_ideal = 0		;
list nonnull_list = list()	;
simulate(null_ideal, nonnull_list, polys, sim_times, out, dbg_out, debug_mode, sim_option) ;
//	simulate(null_ideal, nonnull_list, polys, sim_times, out, debug_mode, sim_option) ;
	// grlex order.
print("------ grlex ---------")	;
kill R, @R, @RP, @P, @RUA, @U, @AXU;
ring R = (0, a, b, c), (x, y), dp;
out = "example51_grlex.mp"		     ;
ideal polys = ax-b, by-a, cx2-y, cy2-x;
ideal null_ideal = 0		;
list nonnull_list = list()	;
simulate(null_ideal, nonnull_list, polys, sim_times, out, dbg_out, debug_mode, sim_option) ;
//simulate(null_ideal, nonnull_list, polys, sim_times, out, debug_mode, sim_option) ;
	// glex order.
print("------ glex ---------")	;
kill R, @R, @RP, @P, @RUA, @U, @AXU;
ring R = (0, a, b, c), (x, y), Dp;
out = "example51_gradelex.mp"		     ;
ideal polys = ax-b, by-a, cx2-y, cy2-x;
ideal null_ideal = 0		;
list nonnull_list = list()	;
simulate(null_ideal, nonnull_list, polys, sim_times, out, dbg_out, debug_mode, sim_option) ;
//	simulate(null_ideal, nonnull_list, polys, sim_times, out, debug_mode, sim_option) ;

print("=========== example51 finished ==============" + newline) ;
	
// higher_1.s:
print("=========== higher_1 starts ==============") ;
	// lex order.
print("------ lex ---------")	;
kill R, @R, @RP, @P, @RUA, @U, @AXU;
ring R = (0, u, v), (x, y, z), lp;
out = "higher_1_lex.mp"		     ;
ideal polys = -x2y+(-3u)*x+z3+(-4v)*z, 
	x2y+(4u)*x-2*z3+(-4v)*z, 
	2*xy+(3u)*xz+(2v2)*z, 
	-2*xy+(-2u)*xz+(-4v2)*z		;
ideal null_ideal = 0		;
list nonnull_list = list()	;
simulate(null_ideal, nonnull_list, polys, sim_times, out, dbg_out, debug_mode, sim_option) ;
//	simulate(null_ideal, nonnull_list, polys, sim_times, out, debug_mode, sim_option) ;
	// grlex order.
print("------ grlex ---------")	;
kill R, @R, @RP, @P, @RUA, @U, @AXU;
ring R = (0, u, v), (x, y, z), dp;
out = "higher_1_grlex.mp"		     ;
ideal polys = -x2y+(-3u)*x+z3+(-4v)*z, 
	x2y+(4u)*x-2*z3+(-4v)*z, 
	2*xy+(3u)*xz+(2v2)*z, 
	-2*xy+(-2u)*xz+(-4v2)*z		;
ideal null_ideal = 0		;
list nonnull_list = list()	;
simulate(null_ideal, nonnull_list, polys, sim_times, out, dbg_out, debug_mode, sim_option) ;
//	simulate(null_ideal, nonnull_list, polys, sim_times, out, debug_mode, sim_option) ;
	// glex order.
print("------ glex ---------")	;
kill R, @R, @RP, @P, @RUA, @U, @AXU;
ring R = (0, u, v), (x, y, z), Dp;
out = "higher_1_gradelex.mp"		     ;
ideal polys = -x2y+(-3u)*x+z3+(-4v)*z, 
	x2y+(4u)*x-2*z3+(-4v)*z, 
	2*xy+(3u)*xz+(2v2)*z, 
	-2*xy+(-2u)*xz+(-4v2)*z		;
ideal null_ideal = 0		;
list nonnull_list = list()	;
simulate(null_ideal, nonnull_list, polys, sim_times, out, dbg_out, debug_mode, sim_option) ;
//	simulate(null_ideal, nonnull_list, polys, sim_times, out, debug_mode, sim_option) ;

print("=========== higher_1 finished ==============" + newline) ;
	
// higher_2.s:
print("=========== higher_2 starts ==============") ;
	// lex order.
print("------ lex ---------")	;
kill R, @R, @RP, @P, @RUA, @U, @AXU;
ring R = (0, u, v), (x, y, z), lp  ;
out = "higher_2_lex.mp"		     ;
ideal polys = -4*x2y-4*z3+(v)*z, 
	(2v)*x+(-3v2)*z, 
	(3u)*xz+(4v)*x+(-4v2)*z		;
ideal null_ideal = 0		;
list nonnull_list = list()	;
simulate(null_ideal, nonnull_list, polys, sim_times, out, dbg_out, debug_mode, sim_option) ;
//	simulate(null_ideal, nonnull_list, polys, sim_times, out, debug_mode, sim_option) ;
	// grlex order.
print("------ grlex ---------")	;
kill R, @R, @RP, @P, @RUA, @U, @AXU;
ring R = (0, u, v), (x, y, z), dp  ;
out = "higher_2_grlex.mp"		     ;
ideal polys = -4*x2y-4*z3+(v)*z, 
	(2v)*x+(-3v2)*z, 
	(3u)*xz+(4v)*x+(-4v2)*z		;
ideal null_ideal = 0		;
list nonnull_list = list()	;
simulate(null_ideal, nonnull_list, polys, sim_times, out, dbg_out, debug_mode, sim_option) ;
//	simulate(null_ideal, nonnull_list, polys, sim_times, out, debug_mode, sim_option) ;
	// glex order.
print("------ glex ---------")	;
kill R, @R, @RP, @P, @RUA, @U, @AXU;
ring R = (0, u, v), (x, y, z), Dp  ;
out = "higher_2_gradelex.mp"		     ;
ideal polys = -4*x2y-4*z3+(v)*z, 
	(2v)*x+(-3v2)*z, 
	(3u)*xz+(4v)*x+(-4v2)*z		;
ideal null_ideal = 0		;
list nonnull_list = list()	;
simulate(null_ideal, nonnull_list, polys, sim_times, out, dbg_out, debug_mode, sim_option) ;
//	simulate(null_ideal, nonnull_list, polys, sim_times, out, debug_mode, sim_option) ;

print("=========== higher_2 finished ==============" + newline) ;
	
// higher_3.s:
print("=========== higher_3 starts ==============") ;
	// lex order.
print("------ lex ---------")	;
kill R, @R, @RP, @P, @RUA, @U, @AXU;
ring R = (0, u, v), (x, y, z), lp;
out = "higher_3_lex.mp"		     ;
ideal polys = (u)*x2y+(2u)*x2+3*yz+(-2uv)*x, 
	(3u)*x2+3*yz+(-3uv)*x, 
	-yz+(-v)*x			;
ideal null_ideal = 0		;
list nonnull_list = list()	;
simulate(null_ideal, nonnull_list, polys, sim_times, out, dbg_out, debug_mode, sim_option) ;
//	simulate(null_ideal, nonnull_list, polys, sim_times, out, debug_mode, sim_option) ;
	// grlex order.
print("------ grlex ---------")	;
kill R, @R, @RP, @P, @RUA, @U, @AXU;
ring R = (0, u, v), (x, y, z), dp;
out = "higher_3_grlex.mp"		     ;
ideal polys = (u)*x2y+(2u)*x2+3*yz+(-2uv)*x, 
	(3u)*x2+3*yz+(-3uv)*x, 
	-yz+(-v)*x			;
ideal null_ideal = 0		;
list nonnull_list = list()	;
simulate(null_ideal, nonnull_list, polys, sim_times, out, dbg_out, debug_mode, sim_option) ;
//	simulate(null_ideal, nonnull_list, polys, sim_times, out, debug_mode, sim_option) ;
	// glex order.
print("------ glex ---------")	;
kill R, @R, @RP, @P, @RUA, @U, @AXU;
ring R = (0, u, v), (x, y, z), Dp;
out = "higher_3_gradelex.mp"		     ;
ideal polys = (u)*x2y+(2u)*x2+3*yz+(-2uv)*x, 
	(3u)*x2+3*yz+(-3uv)*x, 
	-yz+(-v)*x			;
ideal null_ideal = 0		;
list nonnull_list = list()	;
simulate(null_ideal, nonnull_list, polys, sim_times, out, dbg_out, debug_mode, sim_option) ;
//	simulate(null_ideal, nonnull_list, polys, sim_times, out, debug_mode, sim_option) ;

print("=========== higher_3 finished ==============" + newline) ;
	
// linear.s:
print("=========== linear starts ==============") ;
	// lex order.
print("------ lex ---------")	;
kill R, @R, @RP, @P, @RUA, @U, @AXU;
ring R = (0, u, v), (x, y, z), lp  ;
out = "linear_lex.mp"		     ;
ideal polys = vx + (u-v)*y + (u+v)*z,
	(v-u)*x + (u+v)*y + (-v)*z;
ideal null_ideal = 0		;
list nonnull_list = list()	;
simulate(null_ideal, nonnull_list, polys, sim_times, out, dbg_out, debug_mode, sim_option) ;
//	simulate(null_ideal, nonnull_list, polys, sim_times, out, debug_mode, sim_option) ;
	// grlex order.
print("------ grlex ---------")	;
kill R, @R, @RP, @P, @RUA, @U, @AXU;
ring R = (0, u, v), (x, y, z), dp  ;
out = "linear_grlex.mp"		     ;
ideal polys = vx + (u-v)*y + (u+v)*z,
	(v-u)*x + (u+v)*y + (-v)*z;
ideal null_ideal = 0		;
list nonnull_list = list()	;
simulate(null_ideal, nonnull_list, polys, sim_times, out, dbg_out, debug_mode, sim_option) ;
//	simulate(null_ideal, nonnull_list, polys, sim_times, out, debug_mode, sim_option) ;
	// glex order.
print("------ glex ---------")	;
kill R, @R, @RP, @P, @RUA, @U, @AXU;
ring R = (0, u, v), (x, y, z), Dp  ;
out = "linear_gradelex.mp"		     ;
ideal polys = vx + (u-v)*y + (u+v)*z,
	(v-u)*x + (u+v)*y + (-v)*z;
ideal null_ideal = 0		;
list nonnull_list = list()	;
simulate(null_ideal, nonnull_list, polys, sim_times, out, dbg_out, debug_mode, sim_option) ;
//	simulate(null_ideal, nonnull_list, polys, sim_times, out, debug_mode, sim_option) ;

print("=========== linear finished ==============" + newline) ;

// montes_1.s:
print("=========== montes_1 starts ==============") ;
	// lex order.
print("------ lex ---------")	;
kill R, @R, @RP, @P, @RUA, @U, @AXU;
ring R = (0, a, b, c, d), (x, y), lp;
out = "montes_1_lex.mp"		     ;
ideal polys = ax + b, cx + d;
ideal null_ideal = 0		;
list nonnull_list = list()	;
simulate(null_ideal, nonnull_list, polys, sim_times, out, dbg_out, debug_mode, sim_option) ;
//	simulate(null_ideal, nonnull_list, polys, sim_times, out, debug_mode, sim_option) ;
	// grlex order.
print("------ grlex ---------")	;
kill R, @R, @RP, @P, @RUA, @U, @AXU;
ring R = (0, a, b, c, d), (x, y), dp;
out = "montes_1_grlex.mp"		     ;
ideal polys = ax + b, cx + d;
ideal null_ideal = 0		;
list nonnull_list = list()	;
simulate(null_ideal, nonnull_list, polys, sim_times, out, dbg_out, debug_mode, sim_option) ;
//	simulate(null_ideal, nonnull_list, polys, sim_times, out, debug_mode, sim_option) ;

	// glex order.
print("------ glex ---------")	;
kill R, @R, @RP, @P, @RUA, @U, @AXU;
ring R = (0, a, b, c, d), (x, y), Dp;
out = "montes_1_gradelex.mp"		     ;
ideal polys = ax + b, cx + d;
ideal null_ideal = 0		;
list nonnull_list = list()	;
simulate(null_ideal, nonnull_list, polys, sim_times, out, dbg_out, debug_mode, sim_option) ;
//	simulate(null_ideal, nonnull_list, polys, sim_times, out, debug_mode, sim_option) ;
print("=========== montes_1 finished ==============" + newline) ;

// montes_2.s:
print("=========== montes_2 starts ==============") ;
	// lex order.
print("------ lex ---------")	;
kill R, @R, @RP, @P, @RUA, @U, @AXU;
ring R = (0, u), x, lp;
out = "montes_2_lex.mp"		     ;
ideal polys = u2x + u, ux2 + x;
ideal null_ideal = 0		;
list nonnull_list = list()	;
simulate(null_ideal, nonnull_list, polys, sim_times, out, dbg_out, debug_mode, sim_option) ;
//	simulate(null_ideal, nonnull_list, polys, sim_times, out, debug_mode, sim_option) ;
	// grlex order.
print("------ grlex ---------")	;
kill R, @R, @RP, @P, @RUA, @U, @AXU;
ring R = (0, u), x, dp;
out = "montes_2_grlex.mp"		     ;
ideal polys = u2x + u, ux2 + x;
ideal null_ideal = 0		;
list nonnull_list = list()	;
simulate(null_ideal, nonnull_list, polys, sim_times, out, dbg_out, debug_mode, sim_option) ;
//	simulate(null_ideal, nonnull_list, polys, sim_times, out, debug_mode, sim_option) ;
	// glex order.
print("------ glex ---------")	;
kill R, @R, @RP, @P, @RUA, @U, @AXU;
ring R = (0, u), x, Dp;
out = "montes_2_gradelex.mp"		     ;
ideal polys = u2x + u, ux2 + x;
ideal null_ideal = 0		;
list nonnull_list = list()	;
simulate(null_ideal, nonnull_list, polys, sim_times, out, dbg_out, debug_mode, sim_option) ;
//	simulate(null_ideal, nonnull_list, polys, sim_times, out, dbg_out, debug_mode, sim_option) ;simulate(null_ideal, nonnull_list, polys, sim_times, out, debug_mode, sim_option) ;
print("=========== montes_2 finished ==============" + newline) ;

// montes_3.s:
print("=========== montes_3 starts ==============") ;
	// lex order.
print("------ lex ---------")	;
kill R, @R, @RP, @P, @RUA, @U, @AXU;
ring R = (0, a, b, c), (x, y), lp;
out = "montes_3_lex.mp"		     ;
ideal polys = a*x^2*y + a + 3*b^2, a*b*x*y - a*c*x*y + a*b*x + 5*c;
ideal null_ideal = 0		;
list nonnull_list = list()	;
simulate(null_ideal, nonnull_list, polys, sim_times, out, dbg_out, debug_mode, sim_option) ;
//	simulate(null_ideal, nonnull_list, polys, sim_times, out, debug_mode, sim_option) ;
	// grlex order.
print("------ grlex ---------")	;
kill R, @R, @RP, @P, @RUA, @U, @AXU;
ring R = (0, a, b, c), (x, y), dp;
out = "montes_3_grlex.mp"		     ;
ideal polys = a*x^2*y + a + 3*b^2, a*b*x*y - a*c*x*y + a*b*x + 5*c;
ideal null_ideal = 0		;
list nonnull_list = list()	;
simulate(null_ideal, nonnull_list, polys, sim_times, out, dbg_out, debug_mode, sim_option) ;
//	simulate(null_ideal, nonnull_list, polys, sim_times, out, debug_mode, sim_option) ;
	// glex order.
print("------ glex ---------")	;
kill R, @R, @RP, @P, @RUA, @U, @AXU;
ring R = (0, a, b, c), (x, y), Dp;
out = "montes_3_gradelex.mp"		     ;
ideal polys = a*x^2*y + a + 3*b^2, a*b*x*y - a*c*x*y + a*b*x + 5*c;
ideal null_ideal = 0		;
list nonnull_list = list()	;
simulate(null_ideal, nonnull_list, polys, sim_times, out, dbg_out, debug_mode, sim_option) ;
//	simulate(null_ideal, nonnull_list, polys, sim_times, out, debug_mode, sim_option) ;
print("=========== montes_3 finished ==============" + newline) ;

// montes_mccgs.s:
print("=========== montes_mccgs starts ==============") ;
	// lex order.
print("------ lex ---------")	;
kill R, @R, @RP, @P, @RUA, @U, @AXU;
ring R = (0, b, c, d), (x, y), lp ;
out = "montes_mccgs_lex.mp"		     ;
ideal polys = x2 + by2 + 2cxy + dx, 2x + 2cy + d, 2by + 2cx;
ideal null_ideal = 0		;
list nonnull_list = list()	;
simulate(null_ideal, nonnull_list, polys, sim_times, out, dbg_out, debug_mode, sim_option) ;
//	simulate(null_ideal, nonnull_list, polys, sim_times, out, debug_mode, sim_option) ;
	// grlex order.
print("------ grlex ---------")	;
kill R, @R, @RP, @P, @RUA, @U, @AXU;
ring R = (0, b, c, d), (x, y), dp ;
out = "montes_mccgs_grlex.mp"		     ;
ideal polys = x2 + by2 + 2cxy + dx, 2x + 2cy + d, 2by + 2cx;
ideal null_ideal = 0		;
list nonnull_list = list()	;
simulate(null_ideal, nonnull_list, polys, sim_times, out, dbg_out, debug_mode, sim_option) ;
//	simulate(null_ideal, nonnull_list, polys, sim_times, out, debug_mode, sim_option) ;
	// glex order.
print("------ glex ---------")	;
kill R, @R, @RP, @P, @RUA, @U, @AXU;
ring R = (0, b, c, d), (x, y), Dp ;
out = "montes_mccgs_gradelex.mp"		     ;
ideal polys = x2 + by2 + 2cxy + dx, 2x + 2cy + d, 2by + 2cx;
ideal null_ideal = 0		;
list nonnull_list = list()	;
simulate(null_ideal, nonnull_list, polys, sim_times, out, dbg_out, debug_mode, sim_option) ;
//	simulate(null_ideal, nonnull_list, polys, sim_times, out, debug_mode, sim_option) ;
print("=========== montes_mccgs finished ==============" + newline) ;
*/

// montes_wibmer_5.s:
/*print("=========== montes_wibmer_5 starts ==============") ;
	// lex order.
print("------ lex ---------")	;
kill R, @R, @RP, @P, @RUA, @U, @AXU;
ring R = (0, a, b), (x(2), x(3), y(2), y(3)), lp;
out = "montes_wibmer_5_lex.mp"		     ;
ideal polys = (a-1)*y(2) - b*(x(2)-1), (a-1)*(x(2)+1)+b*y(2),
	      (a+1)*y(3) - b*(x(3)+1), (a+1)*(x(3)-1)+b*y(3),
	      (x(3)-a)^2 + y(3)^2 - (x(2) - a)^2 - y(2)^2;
ideal null_ideal = 0		;
list nonnull_list = list()	;
simulate(null_ideal, nonnull_list, polys, sim_times, out, dbg_out, debug_mode, sim_option) ;
//	simulate(null_ideal, nonnull_list, polys, sim_times, out, debug_mode, sim_option) ;
	// grlex order.
print("------ grlex ---------")	;
kill R, @R, @RP, @P, @RUA, @U, @AXU;
ring R = (0, a, b), (x(2), x(3), y(2), y(3)), dp;
out = "montes_wibmer_5_grlex.mp"		     ;
ideal polys = (a-1)*y(2) - b*(x(2)-1), (a-1)*(x(2)+1)+b*y(2),
	      (a+1)*y(3) - b*(x(3)+1), (a+1)*(x(3)-1)+b*y(3),
	      (x(3)-a)^2 + y(3)^2 - (x(2) - a)^2 - y(2)^2;
ideal null_ideal = 0		;
list nonnull_list = list()	;
simulate(null_ideal, nonnull_list, polys, sim_times, out, dbg_out, debug_mode, sim_option) ;
//	simulate(null_ideal, nonnull_list, polys, sim_times, out, debug_mode, sim_option) ;
	// glex order.
print("------ glex ---------")	;
kill R, @R, @RP, @P, @RUA, @U, @AXU;
ring R = (0, a, b), (x(2), x(3), y(2), y(3)), Dp;
out = "montes_wibmer_5_gradelex.mp"		     ;
ideal polys = (a-1)*y(2) - b*(x(2)-1), (a-1)*(x(2)+1)+b*y(2),
	      (a+1)*y(3) - b*(x(3)+1), (a+1)*(x(3)-1)+b*y(3),
	      (x(3)-a)^2 + y(3)^2 - (x(2) - a)^2 - y(2)^2;
ideal null_ideal = 0		;
list nonnull_list = list()	;
simulate(null_ideal, nonnull_list, polys, sim_times, out, dbg_out, debug_mode, sim_option) ;
//	simulate(null_ideal, nonnull_list, polys, sim_times, out, debug_mode, sim_option) ;
print("=========== montes_wibmer_5 finished ==============" + newline) ;	
	
// sato_suzuki_1.s:
print("=========== sato_suzuki_1 starts ==============") ;
// lex order.
print("------ lex ---------")	;
kill R, @R, @RP, @P, @RUA, @U, @AXU;
ring R = (0, a, b), (x, y, z), lp;
out = "sato_suzuki_1_lex.mp"		     ;
ideal polys = x^3 - a, y^4 - b, x + y - z;
ideal null_ideal = 0		;
list nonnull_list = list()	;
simulate(null_ideal, nonnull_list, polys, sim_times, out, dbg_out, debug_mode, sim_option) ;
//	simulate(null_ideal, nonnull_list, polys, sim_times, out, debug_mode, sim_option) ;
	// grlex order.
*/
print("------ grlex ---------")	;
kill R, @R, @RP, @P, @RUA, @U, @AXU;
ring R = (0, a, b), (x, y, z), dp;
out = "sato_suzuki_1_grlex.mp"		     ;
ideal polys = x^3 - a, y^4 - b, x + y - z;
ideal null_ideal = 0		;
list nonnull_list = list()	;
simulate(null_ideal, nonnull_list, polys, sim_times, out, dbg_out, debug_mode, sim_option) ;
//	simulate(null_ideal, nonnull_list, polys, sim_times, out, debug_mode, sim_option) ;
	// glex order.
print("------ glex ---------")	;
kill R, @R, @RP, @P, @RUA, @U, @AXU;
ring R = (0, a, b), (x, y, z), Dp;
out = "sato_suzuki_1_gradelex.mp"		     ;
ideal polys = x^3 - a, y^4 - b, x + y - z;
ideal null_ideal = 0		;
list nonnull_list = list()	;
simulate(null_ideal, nonnull_list, polys, sim_times, out, dbg_out, debug_mode, sim_option) ;
//	simulate(null_ideal, nonnull_list, polys, sim_times, out, debug_mode, sim_option) ;
print("=========== sato_suzuki_1 finished ==============" + newline) ;	
	
// sit21.s:
print("=========== sit21 starts ==============") ;
	// lex order.
print("------ lex ---------")	;
kill R, @R, @RP, @P, @RUA, @U, @AXU;
ring R = (0, a, b), (z1, z2, z3), lp;
out = "sit21_lex.mp"		     ;
ideal polys = (-a+b)*z1 + a *z2 + (a^2-1)*z3,
	b * z1 + (a^2+1)*z2 + a^3 * z3 ;
ideal null_ideal = 0  ;
list nonnull_list = list()	;
simulate(null_ideal, nonnull_list, polys, sim_times, out, dbg_out, debug_mode, sim_option) ;
//	simulate(null_ideal, nonnull_list, polys, sim_times, out, debug_mode, sim_option) ;
	// grlex order.
print("------ grlex ---------")	;
kill R, @R, @RP, @P, @RUA, @U, @AXU;
ring R = (0, a, b), (z1, z2, z3), dp;
out = "sit21_grlex.mp"		     ;
ideal polys = (-a+b)*z1 + a *z2 + (a^2-1)*z3,
	b * z1 + (a^2+1)*z2 + a^3 * z3 ;
ideal null_ideal = 0  ;
list nonnull_list = list()	;
simulate(null_ideal, nonnull_list, polys, sim_times, out, dbg_out, debug_mode, sim_option) ;
//	simulate(null_ideal, nonnull_list, polys, sim_times, out, debug_mode, sim_option) ;
	// glex order.
print("------ glex ---------")	;
kill R, @R, @RP, @P, @RUA, @U, @AXU;
ring R = (0, a, b), (z1, z2, z3), Dp;
out = "sit21_gradelex.mp"		     ;
ideal polys = (-a+b)*z1 + a *z2 + (a^2-1)*z3,
	b * z1 + (a^2+1)*z2 + a^3 * z3 ;
ideal null_ideal = 0  ;
list nonnull_list = list()	;
simulate(null_ideal, nonnull_list, polys, sim_times, out, dbg_out, debug_mode, sim_option) ;
//	simulate(null_ideal, nonnull_list, polys, sim_times, out, debug_mode, sim_option) ;
print("=========== sit21 finished ==============" + newline) ;

// sit23.s:
print("=========== sit23 starts ==============") ;
	// lex order.
print("------ lex ---------")	;
kill R, @R, @RP, @P, @RUA, @U, @AXU;
ring R = (0, x), (z1, z2), lp;
out = "sit23_lex.mp"		     ;
ideal polys = x * z1 + x^2 * z2 - 1,
	(x^2+1)*z1 + x^3 * z2	;
ideal null_ideal = 0		;
list nonnull_list = list()	;
simulate(null_ideal, nonnull_list, polys, sim_times, out, dbg_out, debug_mode, sim_option) ;
//	simulate(null_ideal, nonnull_list, polys, sim_times, out, debug_mode, sim_option) ;
	// grlex order.
print("------ grlex ---------")	;
kill R, @R, @RP, @P, @RUA, @U, @AXU;
ring R = (0, x), (z1, z2), dp;
out = "sit23_grlex.mp"		     ;
ideal polys = x * z1 + x^2 * z2 - 1,
	(x^2+1)*z1 + x^3 * z2	;
ideal null_ideal = 0		;
list nonnull_list = list()	;
simulate(null_ideal, nonnull_list, polys, sim_times, out, dbg_out, debug_mode, sim_option) ;
//	simulate(null_ideal, nonnull_list, polys, sim_times, out, debug_mode, sim_option) ;
	// glex order.
print("------ glex ---------")	;
kill R, @R, @RP, @P, @RUA, @U, @AXU;
ring R = (0, x), (z1, z2), Dp;
out = "sit23_gradelex.mp"		     ;
ideal polys = x * z1 + x^2 * z2 - 1,
	(x^2+1)*z1 + x^3 * z2	;
ideal null_ideal = 0		;
list nonnull_list = list()	;
simulate(null_ideal, nonnull_list, polys, sim_times, out, dbg_out, debug_mode, sim_option) ;
//	simulate(null_ideal, nonnull_list, polys, sim_times, out, debug_mode, sim_option) ;
print("=========== sit23 finished ==============" + newline) ;

// sit.s:
print("=========== sit starts ==============") ;
	// lex order.
print("------ lex ---------")	;
kill R, @R, @RP, @P, @RUA, @U, @AXU;
ring R = (0, a, b, c, d , u, v), (x, y), lp;
out = "sit_lex.mp"		     ;
ideal polys = ax + by - u, cx + dy - v	;
ideal null_ideal = 0		;
list nonnull_list = list()	;
simulate(null_ideal, nonnull_list, polys, sim_times, out, dbg_out, debug_mode, sim_option) ;
//	simulate(null_ideal, nonnull_list, polys, sim_times, out, debug_mode, sim_option) ;
	// grlex order.
print("------ grlex ---------")	;
kill R, @R, @RP, @P, @RUA, @U, @AXU;
ring R = (0, a, b, c, d , u, v), (x, y), dp;
out = "sit_grlex.mp"		     ;
ideal polys = ax + by - u, cx + dy - v	;
ideal null_ideal = 0		;
list nonnull_list = list()	;
simulate(null_ideal, nonnull_list, polys, sim_times, out, dbg_out, debug_mode, sim_option) ;
//	simulate(null_ideal, nonnull_list, polys, sim_times, out, debug_mode, sim_option) ;
	// glex order.
print("------ glex ---------")	;
kill R, @R, @RP, @P, @RUA, @U, @AXU;
ring R = (0, a, b, c, d , u, v), (x, y), Dp;
out = "sit_gradelex.mp"		     ;
ideal polys = ax + by - u, cx + dy - v	;
ideal null_ideal = 0		;
list nonnull_list = list()	;
simulate(null_ideal, nonnull_list, polys, sim_times, out, dbg_out, debug_mode, sim_option) ;
//	simulate(null_ideal, nonnull_list, polys, sim_times, out, debug_mode, sim_option) ;
print("=========== sit finished ==============" + newline) ;

// test.s:
print("=========== test starts ==============") ;
	// lex order.
print("------ lex ---------")	;
kill R, @R, @RP, @P, @RUA, @U, @AXU;
ring R = (0, u, v), (x, y, z), lp;
out = "test_lex.mp"		     ;
ideal polys = vx + y + (u+v)*z,
	(v-u)*x -y + (-v)*z;
ideal null_ideal = 0		;
list nonnull_list = list()		;
simulate(null_ideal, nonnull_list, polys, sim_times, out, dbg_out, debug_mode, sim_option) ;
//	simulate(null_ideal, nonnull_list, polys, sim_times, out, debug_mode, sim_option) ;
	// grlex order.
print("------ grlex ---------")	;
kill R, @R, @RP, @P, @RUA, @U, @AXU;
ring R = (0, u, v), (x, y, z), dp;
out = "test_grlex.mp"		     ;
ideal polys = vx + y + (u+v)*z,
	(v-u)*x -y + (-v)*z;
ideal null_ideal = 0		;
list nonnull_list = list()		;
simulate(null_ideal, nonnull_list, polys, sim_times, out, dbg_out, debug_mode, sim_option) ;
//	simulate(null_ideal, nonnull_list, polys, sim_times, out, debug_mode, sim_option) ;
	// glex order.
print("------ glex ---------")	;
kill R, @R, @RP, @P, @RUA, @U, @AXU;
ring R = (0, u, v), (x, y, z), Dp;
out = "test_gradelex.mp"		     ;
ideal polys = vx + y + (u+v)*z,
	(v-u)*x -y + (-v)*z;
ideal null_ideal = 0		;
list nonnull_list = list()		;
simulate(null_ideal, nonnull_list, polys, sim_times, out, dbg_out, debug_mode, sim_option) ;
//	simulate(null_ideal, nonnull_list, polys, sim_times, out, debug_mode, sim_option) ;
print("=========== test finished ==============" + newline) ;

// test-1.s:
print("=========== test-1 starts ==============") ;
	// lex order.
print("------ lex ---------")	;
kill R, @R, @RP, @P, @RUA, @U, @AXU;
ring R = (0, u, v), (y, x, z), lp;
out = "test-1_lex.mp"		     ;
ideal polys = (u-v)*y + vx + (u+v)*z,
	(u+v)*y + (-u+v)*x + (-v)*z;
ideal null_ideal = 0  ;
list nonnull_list = list()	;
simulate(null_ideal, nonnull_list, polys, sim_times, out, dbg_out, debug_mode, sim_option) ;
//	simulate(null_ideal, nonnull_list, polys, sim_times, out, debug_mode, sim_option) ;
	// grlex order.
print("------ grlex ---------")	;
kill R, @R, @RP, @P, @RUA, @U, @AXU;
ring R = (0, u, v), (y, x, z), dp;
out = "test-1_grlex.mp"		     ;
ideal polys = (u-v)*y + vx + (u+v)*z,
	(u+v)*y + (-u+v)*x + (-v)*z;
ideal null_ideal = 0  ;
list nonnull_list = list()	;
simulate(null_ideal, nonnull_list, polys, sim_times, out, dbg_out, debug_mode, sim_option) ;
//	simulate(null_ideal, nonnull_list, polys, sim_times, out, debug_mode, sim_option) ;
	// glex order.
print("------ glex ---------")	;
kill R, @R, @RP, @P, @RUA, @U, @AXU;
ring R = (0, u, v), (y, x, z), Dp;
out = "test-1_gradelex.mp"		     ;
ideal polys = (u-v)*y + vx + (u+v)*z,
	(u+v)*y + (-u+v)*x + (-v)*z;
ideal null_ideal = 0  ;
list nonnull_list = list()	;
simulate(null_ideal, nonnull_list, polys, sim_times, out, dbg_out, debug_mode, sim_option) ;
//	simulate(null_ideal, nonnull_list, polys, sim_times, out, debug_mode, sim_option) ;
print("=========== test-1 finished ==============" + newline) ;

// test_xyz.s:
print("=========== test_xyz starts ==============") ;
	// lex order.
print("------ lex ---------")	;
kill R, @R, @RP, @P, @RUA, @U, @AXU;
ring R = (0, u, v), (x, y, z), lp  ;
out = "test_xyz_lex.mp"		     ;
ideal polys = vx + y + (u+v)*z,
	(v-u)*x -y + (-v)*z;
ideal null_ideal = 0  ;
list nonnull_list = list()	;
simulate(null_ideal, nonnull_list, polys, sim_times, out, dbg_out, debug_mode, sim_option) ;
//	simulate(null_ideal, nonnull_list, polys, sim_times, out, debug_mode, sim_option) ;
	// grlex order.
print("------ grlex ---------")	;
kill R, @R, @RP, @P, @RUA, @U, @AXU;
ring R = (0, u, v), (x, y, z), dp  ;
out = "test_xyz_grlex.mp"		     ;
ideal polys = vx + y + (u+v)*z,
	(v-u)*x -y + (-v)*z;
ideal null_ideal = 0  ;
list nonnull_list = list()	;
simulate(null_ideal, nonnull_list, polys, sim_times, out, dbg_out, debug_mode, sim_option) ;
//	simulate(null_ideal, nonnull_list, polys, sim_times, out, debug_mode, sim_option) ;
	// glex order.
print("------ glex ---------")	;
kill R, @R, @RP, @P, @RUA, @U, @AXU;
ring R = (0, u, v), (x, y, z), Dp  ;
out = "test_xyz_gradelex.mp"		     ;
ideal polys = vx + y + (u+v)*z,
	(v-u)*x -y + (-v)*z;
ideal null_ideal = 0  ;
list nonnull_list = list()	;
simulate(null_ideal, nonnull_list, polys, sim_times, out, dbg_out, debug_mode, sim_option) ;
//	simulate(null_ideal, nonnull_list, polys, sim_times, out, debug_mode, sim_option) ;
print("=========== test_xyz finished ==============" + newline) ;

// test_yxz.s:
print("=========== test_yxz starts ==============") ;
	// lex order.
print("------ lex ---------")	;
kill R, @R, @RP, @P, @RUA, @U, @AXU;
ring R = (0, u, v), (y, x, z), lp;
out = "test_yxz_lex.mp"		     ;
ideal polys = (u-v)*x + vx + (u+v)*z,
	(u+v)*y + (-u+v)*x + (-v)*z;
ideal null_ideal = 0		;
list nonnull_list = list()	;
simulate(null_ideal, nonnull_list, polys, sim_times, out, dbg_out, debug_mode, sim_option) ;
//	simulate(null_ideal, nonnull_list, polys, sim_times, out, debug_mode, sim_option) ;
	// grlex order.
print("------ grlex ---------")	;
kill R, @R, @RP, @P, @RUA, @U, @AXU;
ring R = (0, u, v), (y, x, z), dp;
ideal polys = (u-v)*x + vx + (u+v)*z,
	(u+v)*y + (-u+v)*x + (-v)*z;
ideal null_ideal = 0		;
list nonnull_list = list()	;
out = "test_yxz_grlex.mp"		     ;
simulate(null_ideal, nonnull_list, polys, sim_times, out, dbg_out, debug_mode, sim_option) ;
//	simulate(null_ideal, nonnull_list, polys, sim_times, out, debug_mode, sim_option) ;
	// glex order.
print("------ glex ---------")	;
kill R, @R, @RP, @P, @RUA, @U, @AXU;
ring R = (0, u, v), (y, x, z), Dp;
ideal polys = (u-v)*x + vx + (u+v)*z,
	(u+v)*y + (-u+v)*x + (-v)*z;
ideal null_ideal = 0		;
list nonnull_list = list()	;
out = "test_yxz_gradelex.mp"		     ;
simulate(null_ideal, nonnull_list, polys, sim_times, out, dbg_out, debug_mode, sim_option) ;
//	simulate(null_ideal, nonnull_list, polys, sim_times, out, debug_mode, sim_option) ;
print("=========== test_yxz finished ==============" + newline) ;

// weispfenning_1.s:
print("=========== weispfenning_1 starts ==============") ;
	// lex order.
print("------ lex ---------")	;
kill R, @R, @RP, @P, @RUA, @U, @AXU;
ring R = (0, v, u), x, lp;
out = "weispfenning_1_lex.mp"		     ;
ideal polys = u*x, v*x;
ideal null_ideal = 0  ;
list nonnull_list = list()	;
simulate(null_ideal, nonnull_list, polys, sim_times, out, dbg_out, debug_mode, sim_option) ;
//	simulate(null_ideal, nonnull_list, polys, sim_times, out, debug_mode, sim_option) ;
	// grlex order.
print("------ grlex ---------")	;
kill R, @R, @RP, @P, @RUA, @U, @AXU;
ring R = (0, v, u), x, dp;
ideal polys = u*x, v*x;
ideal null_ideal = 0  ;
list nonnull_list = list()	;
out = "weispfenning_1_grlex.mp"		     ;
simulate(null_ideal, nonnull_list, polys, sim_times, out, dbg_out, debug_mode, sim_option) ;
//	simulate(null_ideal, nonnull_list, polys, sim_times, out, debug_mode, sim_option) ;
	// glex order.
print("------ glex ---------")	;
kill R, @R, @RP, @P, @RUA, @U, @AXU;
ring R = (0, v, u), x, Dp;
ideal polys = u*x, v*x;
ideal null_ideal = 0  ;
list nonnull_list = list()	;
out = "weispfenning_1_gradelex.mp"		     ;
simulate(null_ideal, nonnull_list, polys, sim_times, out, dbg_out, debug_mode, sim_option) ;
//	simulate(null_ideal, nonnull_list, polys, sim_times, out, debug_mode, sim_option) ;
print("=========== weispfenning_1 finished ==============" + newline) ;

// weispfenning_2.s:
print("=========== weispfenning_2 starts ==============") ;
	// lex order.
print("------ lex ---------")	;
kill R, @R, @RP, @P, @RUA, @U, @AXU;
ring R = (0, v, u), (z, y, x), lp;
out = "weispfenning_2_lex.mp";
ideal polys = u*y + x, v*z + x + 1;
ideal null_ideal = 0  ;
list nonnull_list = list()	;
simulate(null_ideal, nonnull_list, polys, sim_times, out, dbg_out, debug_mode, sim_option) ;
//	simulate(null_ideal, nonnull_list, polys, sim_times, out, debug_mode, sim_option) ;
	// grlex order.
print("------ grlex ---------")	;
kill R, @R, @RP, @P, @RUA, @U, @AXU;
ring R = (0, v, u), (z, y, x), dp;
out = "weispfenning_2_grlex.mp"		     ;
ideal polys = u*y + x, v*z + x + 1;
ideal null_ideal = 0  ;
list nonnull_list = list()	;
simulate(null_ideal, nonnull_list, polys, sim_times, out, dbg_out, debug_mode, sim_option) ;
//	simulate(null_ideal, nonnull_list, polys, sim_times, out, debug_mode, sim_option) ;
	// glex order.
print("------ glex ---------")	;
kill R, @R, @RP, @P, @RUA, @U, @AXU;
ring R = (0, v, u), (z, y, x), Dp;
out = "weispfenning_2_gradelex.mp"		     ;
ideal polys = u*y + x, v*z + x + 1;
ideal null_ideal = 0  ;
list nonnull_list = list()	;
simulate(null_ideal, nonnull_list, polys, sim_times, out, dbg_out, debug_mode, sim_option) ;
//	simulate(null_ideal, nonnull_list, polys, sim_times, out, debug_mode, sim_option) ;
print("=========== weispfenning_2 finished ==============" + newline) ;

// weispfenning_3.s:
print("=========== weispfenning_3 starts ==============") ;
	// lex order.
print("------ lex ---------")	;
kill R, @R, @RP, @P, @RUA, @U, @AXU;
ring R = (0, v, u), (z, y, x), lp;
out = "weispfenning_3_lex.mp";
ideal polys = (u^2 + 1)*y + x^3 - 1, (u^2 + 1)*z + x^2 - 1;
ideal null_ideal = 0  ;
list nonnull_list = list()	;
simulate(null_ideal, nonnull_list, polys, sim_times, out, dbg_out, debug_mode, sim_option) ;
//	simulate(null_ideal, nonnull_list, polys, sim_times, out, debug_mode, sim_option) ;
	// grlex order.
print("------ grlex ---------")	;
kill R, @R, @RP, @P, @RUA, @U, @AXU;
ring R = (0, v, u), (z, y, x), dp;
out = "weispfenning_3_grlex.mp"		     ;
ideal polys = (u^2 + 1)*y + x^3 - 1, (u^2 + 1)*z + x^2 - 1;
ideal null_ideal = 0  ;
list nonnull_list = list()	;
simulate(null_ideal, nonnull_list, polys, sim_times, out, dbg_out, debug_mode, sim_option) ;
//	simulate(null_ideal, nonnull_list, polys, sim_times, out, debug_mode, sim_option) ;
	// glex order.
print("------ glex ---------")	;
kill R, @R, @RP, @P, @RUA, @U, @AXU;
ring R = (0, v, u), (z, y, x), Dp;
out = "weispfenning_3_gradelex.mp"		     ;
ideal polys = (u^2 + 1)*y + x^3 - 1, (u^2 + 1)*z + x^2 - 1;
ideal null_ideal = 0  ;
list nonnull_list = list()	;
simulate(null_ideal, nonnull_list, polys, sim_times, out, dbg_out, debug_mode, sim_option) ;
//	simulate(null_ideal, nonnull_list, polys, sim_times, out, debug_mode, sim_option) ;
print("=========== weispfenning_3 finished ==============" + newline) ;
	
// weispfenning_4.s:
print("=========== weispfenning_4 starts ==============") ;
	// lex order.
print("------ lex ---------")	;
kill R, @R, @RP, @P, @RUA, @U, @AXU;
ring R = (0, v, u), (y, x), lp;
out = "weispfenning_4_lex.mp";
ideal polys = y + u*x + v, u*y + x + v;
ideal null_ideal = 0  ;
list nonnull_list = list()	;
simulate(null_ideal, nonnull_list, polys, sim_times, out, dbg_out, debug_mode, sim_option) ;
//	simulate(null_ideal, nonnull_list, polys, sim_times, out, debug_mode, sim_option) ;
	// grlex order.
print("------ grlex ---------")	;
kill R, @R, @RP, @P, @RUA, @U, @AXU;
ring R = (0, v, u), (y, x), dp;
out = "weispfenning_4_grlex.mp"		     ;
ideal polys = y + u*x + v, u*y + x + v;
ideal null_ideal = 0  ;
list nonnull_list = list()	;
simulate(null_ideal, nonnull_list, polys, sim_times, out, dbg_out, debug_mode, sim_option) ;
//	simulate(null_ideal, nonnull_list, polys, sim_times, out, debug_mode, sim_option) ;
	// glex order.
print("------ glex ---------")	;
kill R, @R, @RP, @P, @RUA, @U, @AXU;
ring R = (0, v, u), (y, x), Dp	   ;
out = "weispfenning_4_gradelex.mp"		     ;
ideal polys = y + u*x + v, u*y + x + v;
ideal null_ideal = 0  ;
list nonnull_list = list()	;
simulate(null_ideal, nonnull_list, polys, sim_times, out, dbg_out, debug_mode, sim_option) ;
//	simulate(null_ideal, nonnull_list, polys, sim_times, out, debug_mode, sim_option) ;
print("=========== weispfenning_4 finished ==============" + newline) ;	

// quadratic.s:
print("=========== quadratic starts ==============") ;
	// lex order.
print("------ lex ---------")	;
kill R, @R, @RP, @P, @RUA, @U, @AXU;
ring R = (0, a, b), (x), lp;
out = "quadratic_lex.mp";
ideal polys = (a3-b3)*x2 + (a2+b2+1)*x + (ab+2a-b2-2b) ;
ideal null_ideal = 0		;
list nonnull_list = list()	;
simulate(null_ideal, nonnull_list, polys, sim_times, out, dbg_out, debug_mode, sim_option) ;
//	simulate(null_ideal, nonnull_list, polys, sim_times, out, debug_mode, sim_option) ;
	// grlex order.
print("------ grlex ---------")	;
kill R, @R, @RP, @P, @RUA, @U, @AXU;
ring R = (0, a, b), (x), dp;
out = "quadratic_grlex.mp"		     ;
ideal polys = (a3-b3)*x2 + (a2+b2+1)*x + (ab+2a-b2-2b) ;
ideal null_ideal = 0		;
list nonnull_list = list()	;
simulate(null_ideal, nonnull_list, polys, sim_times, out, dbg_out, debug_mode, sim_option) ;
//	simulate(null_ideal, nonnull_list, polys, sim_times, out, debug_mode, sim_option) ;
	// glex order.
print("------ glex ---------")	;
kill R, @R, @RP, @P, @RUA, @U, @AXU;
ring R = (0, a, b), (x), Dp;
out = "quadratic_gradelex.mp"		     ;
ideal polys = (a3-b3)*x2 + (a2+b2+1)*x + (ab+2a-b2-2b) ;
ideal null_ideal = 0		;
list nonnull_list = list()	;
simulate(null_ideal, nonnull_list, polys, sim_times, out, dbg_out, debug_mode, sim_option) ;
//	simulate(null_ideal, nonnull_list, polys, sim_times, out, debug_mode, sim_option) ;
print("=========== quadratic finished ==============" + newline) ;

// ctd.s:
print("=========== ctd starts ==============") ;
	// lex order.
print("---------- lex ------------")  ;
kill R, @R, @RP, @P, @RUA, @U, @AXU;
ring R = (0, u, v), (x, y), lp;
out = "ctd_lex.mp";
ideal polys = vxy + ux2 + x, uy2 + x2;	
ideal null_ideal = 0		     ;
list nonnull_list = list()	     ;
simulate(null_ideal, nonnull_list, polys, sim_times, out, dbg_out, debug_mode, sim_option) ;
//	simulate(null_ideal, nonnull_list, polys, sim_times, out, debug_mode, sim_option) ;

	// gradelex order.
print("----------- gradelex -------------") ;
kill R, @R, @RP, @P, @RUA, @U, @AXU;
ring R = (0, u, v), (x, y), Dp;
out = "ctd_gradelex.mp";
ideal polys = vxy + ux2 + x, uy2 + x2;	
ideal null_ideal = 0		     ;
list nonnull_list = list()	     ;
simulate(null_ideal, nonnull_list, polys, sim_times, out, dbg_out, debug_mode, sim_option) ;
//	simulate(null_ideal, nonnull_list, polys, sim_times, out, debug_mode, sim_option) ;

// grlex order.
print("----------- grlex -------------") ;
kill R, @R, @RP, @P, @RUA, @U, @AXU;
ring R = (0, u, v), (x, y), dp;
out = "ctd_grlex.mp";
ideal polys = vxy + ux2 + x, uy2 + x2;	
ideal null_ideal = 0		     ;
list nonnull_list = list()	     ;
simulate(null_ideal, nonnull_list, polys, sim_times, out, dbg_out, debug_mode, sim_option) ;
//	simulate(null_ideal, nonnull_list, polys, sim_times, out, debug_mode, sim_option) ;	
print("=========== ctd ends ==============") ;
	
// wibmer_11.s:
print("=========== wibmer_11 starts ==============") ;
	// lex order.
print("------ lex ---------")	;
kill R, @R, @RP, @P, @RUA, @U, @AXU;
ring R = (0, u(1), u(2)), x, lp;
out = "wibmer_11_lex.mp";
ideal polys = u(1)*x, (u(2)^2 - 1)*x^2 + x;
ideal null_ideal = 0		;
list nonnull_list = list()	;
simulate(null_ideal, nonnull_list, polys, sim_times, out, dbg_out, debug_mode, sim_option) ;
//	simulate(null_ideal, nonnull_list, polys, sim_times, out, debug_mode, sim_option) ;
	// grlex order.
print("------ grlex ---------")	;
kill R, @R, @RP, @P, @RUA, @U, @AXU;
ring R = (0, u(1), u(2)), x, dp;
out = "wibmer_11_grlex.mp"		     ;
ideal polys = u(1)*x, (u(2)^2 - 1)*x^2 + x;
ideal null_ideal = 0		;
list nonnull_list = list()	;
simulate(null_ideal, nonnull_list, polys, sim_times, out, dbg_out, debug_mode, sim_option) ;
//	simulate(null_ideal, nonnull_list, polys, sim_times, out, debug_mode, sim_option) ;
	// glex order.
print("------ glex ---------")	;
kill R, @R, @RP, @P, @RUA, @U, @AXU;
ring R = (0, u(1), u(2)), x, Dp;
out = "wibmer_11_gradelex.mp"		     ;
ideal polys = u(1)*x, (u(2)^2 - 1)*x^2 + x;
ideal null_ideal = 0		;
list nonnull_list = list()	;
simulate(null_ideal, nonnull_list, polys, sim_times, out, dbg_out, debug_mode, sim_option) ;
//	simulate(null_ideal, nonnull_list, polys, sim_times, out, debug_mode, sim_option) ;
print("=========== wibmer_11 finished ==============" + newline) ;

print("=========== miller-sturmfels starts ==============") ;
kill R, @R, @RP, @P, @RUA, @U, @AXU;
ring R = (0, g11, g12, g21, g22), (x1, x2), lp ;
out = "miller-sturmfels_lex.mp";
ideal polys = g11^2*x1^2 + 2*g11*g12*x1*x2 + g12^2*x2^2,
	g21^2*x1^2 + 2 * g21*g22*x1*x2 + g22^2*x2^2 ;	
ideal null_ideal = 0		;
list nonnull_list = list()	;
simulate(null_ideal, nonnull_list, polys, sim_times, out, dbg_out, debug_mode, sim_option) ;
//	simulate(null_ideal, nonnull_list, polys, sim_times, out, debug_mode, sim_option) ;
print("=========== miller-sturmfels finished ==============" + newline) ;
