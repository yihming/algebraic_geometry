// Examples whose RGBs are not CGBs.
LIB "simulation.lib";

link out;

int debug_mode = 0;
int sim_times = 20;

intvec sim_option = 1, 1, 1, 1, 1;

if (defined(R)) {kill R;}
if (defined(@R)) {kill @R, @RP, @P;}
if (defined(@U)) {kill @RUA, @U, @AXU;

// sit21.s:
print("=========== sit21 starts ==============") ;
	// lex order.
print("------ lex ---------")	;
ring R = (0, a, b), (z1, z2, z3), lp;
out = "sit21_lex.mp"		     ;
ideal polys = (-a+b)*z1 + a *z2 + (a^2-1)*z3,
	b * z1 + (a^2+1)*z2 + a^3 * z3 ;
ideal null_ideal = 0  ;
list nonnull_list = list()	;
simulate(null_ideal, nonnull_list, polys, sim_times, out, debug_mode, sim_option) ;
	// grlex order.
print("------ grlex ---------")	;
kill R, @R, @RP, @P, @RUA, @U, @AXU;
ring R = (0, a, b), (z1, z2, z3), dp;
out = "sit21_grlex.mp"		     ;
ideal polys = (-a+b)*z1 + a *z2 + (a^2-1)*z3,
	b * z1 + (a^2+1)*z2 + a^3 * z3 ;
ideal null_ideal = 0  ;
list nonnull_list = list()	;
simulate(null_ideal, nonnull_list, polys, sim_times, out, debug_mode, sim_option) ;
	// glex order.
print("------ glex ---------")	;
kill R, @R, @RP, @P, @RUA, @U, @AXU;
ring R = (0, a, b), (z1, z2, z3), Dp;
out = "sit21_gradelex.mp"		     ;
ideal polys = (-a+b)*z1 + a *z2 + (a^2-1)*z3,
	b * z1 + (a^2+1)*z2 + a^3 * z3 ;
ideal null_ideal = 0  ;
list nonnull_list = list()	;
simulate(null_ideal, nonnull_list, polys, sim_times, out, debug_mode, sim_option) ;
print("=========== sit21 finished ==============" + newline) ;

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
simulate(null_ideal, nonnull_list, polys, sim_times, out, debug_mode, sim_option) ;
	// grlex order.
print("------ grlex ---------")	;
kill R, @R, @RP, @P, @RUA, @U, @AXU;
ring R = (0, a, b, c, d , u, v), (x, y), dp;
out = "sit_grlex.mp"		     ;
ideal polys = ax + by - u, cx + dy - v	;
ideal null_ideal = 0		;
list nonnull_list = list()	;
simulate(null_ideal, nonnull_list, polys, sim_times, out, debug_mode, sim_option) ;
	// glex order.
print("------ glex ---------")	;
kill R, @R, @RP, @P, @RUA, @U, @AXU;
ring R = (0, a, b, c, d , u, v), (x, y), Dp;
out = "sit_gradelex.mp"		     ;
ideal polys = ax + by - u, cx + dy - v	;
ideal null_ideal = 0		;
list nonnull_list = list()	;
simulate(null_ideal, nonnull_list, polys, sim_times, out, debug_mode, sim_option) ;
print("=========== sit finished ==============" + newline) ;

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
simulate(null_ideal, nonnull_list, polys, sim_times, out, debug_mode, sim_option) ;
	// grlex order.
print("------ grlex ---------")	;
kill R, @R, @RP, @P, @RUA, @U, @AXU;
ring R = (0, u, v), (y, x, z), dp;
ideal polys = (u-v)*x + vx + (u+v)*z,
	(u+v)*y + (-u+v)*x + (-v)*z;
ideal null_ideal = 0		;
list nonnull_list = list()	;
out = "test_yxz_grlex.mp"		     ;
simulate(null_ideal, nonnull_list, polys, sim_times, out, debug_mode, sim_option) ;
	// glex order.
print("------ glex ---------")	;
kill R, @R, @RP, @P, @RUA, @U, @AXU;
ring R = (0, u, v), (y, x, z), Dp;
ideal polys = (u-v)*x + vx + (u+v)*z,
	(u+v)*y + (-u+v)*x + (-v)*z;
ideal null_ideal = 0		;
list nonnull_list = list()	;
out = "test_yxz_gradelex.mp"		     ;
simulate(null_ideal, nonnull_list, polys, sim_times, out, debug_mode, sim_option) ;
print("=========== test_yxz finished ==============" + newline) ;

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
simulate(null_ideal, nonnull_list, polys, sim_times, out, debug_mode, sim_option) ;
	// grlex order.
print("------ grlex ---------")	;
kill R, @R, @RP, @P, @RUA, @U, @AXU;
ring R = (0, v, u), (z, y, x), dp;
out = "weispfenning_2_grlex.mp"		     ;
ideal polys = u*y + x, v*z + x + 1;
ideal null_ideal = 0  ;
list nonnull_list = list()	;
simulate(null_ideal, nonnull_list, polys, sim_times, out, debug_mode, sim_option) ;
	// glex order.
print("------ glex ---------")	;
kill R, @R, @RP, @P, @RUA, @U, @AXU;
ring R = (0, v, u), (z, y, x), Dp;
out = "weispfenning_2_gradelex.mp"		     ;
ideal polys = u*y + x, v*z + x + 1;
ideal null_ideal = 0  ;
list nonnull_list = list()	;
simulate(null_ideal, nonnull_list, polys, sim_times, out, debug_mode, sim_option) ;
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
simulate(null_ideal, nonnull_list, polys, sim_times, out, debug_mode, sim_option) ;
print("=========== weispfenning_3 finished ==============" + newline) ;

// ctd.s:
print("=========== ctd starts ==============") ;
	// gradelex order.
print("----------- gradelex -------------") ;
kill R, @R, @RP, @P, @RUA, @U, @AXU;
ring R = (0, u, v), (x, y), Dp;
out = "ctd_gradelex.mp";
ideal polys = vxy + ux2 + x, uy2 + x2;	
ideal null_ideal = 0		     ;
list nonnull_list = list()	     ;
simulate(null_ideal, nonnull_list, polys, sim_times, out, debug_mode, sim_option) ;

// grlex order.
print("----------- grlex -------------") ;
kill R, @R, @RP, @P, @RUA, @U, @AXU;
ring R = (0, u, v), (x, y), dp;
out = "ctd_grlex.mp";
ideal polys = vxy + ux2 + x, uy2 + x2;	
ideal null_ideal = 0		     ;
list nonnull_list = list()	     ;
simulate(null_ideal, nonnull_list, polys, sim_times, out, debug_mode, sim_option) ;	
print("=========== ctd ends ==============") ;

// s10.s:
print("=========== s10 starts ==============") ;
kill R, @R, @RP, @P, @RUA, @U, @AXU;
ring R = (0, r, z), (s1, c1, s2, c2, l), lp;
out = "s10_lex.mp"			   ;
ideal polys = s1*s2*l-c1*c2*l-c1+r1 ,
	-s1*c2*l-s1-c1*s2*l+z	    ,
	(s1)^2+(c1)^2-1		,
	(s2)^2+(c2)^2-1;
ideal null_ideal = 0		;
list nonnull_list = list()	;
simulate(null_ideal, nonnull_list, polys, sim_times, out, debug_mode, sim_option) ;

print("=========== s10 finished ==============" + newline) ;

// s12.s:
print("=========== s12 starts ==============") ;
kill R, @R, @RP, @P, @RUA, @U, @AXU;
ring R = (0,a,b,l2,l3),(c3,s3,c1,s1), dp;
out = "s12_grlex.mp"		      ;
sim_times = 20			      ;
ideal polys=a-l3*c3-l2*c1,b-l3*s3-l2*s1,c1^2+s1^2-1,c3^2+s3^2-1;;
ideal null_ideal = 0		;
list nonnull_list = list()	;
simulate(null_ideal, nonnull_list, polys, sim_times, out, debug_mode, sim_option) ;

// s15.s:
print("=========== s15 starts ==============") ;
kill R, @R, @RP, @P, @RUA, @U, @AXU;
ring R = (0, l2, l3, a, b, c, d), (c3, s3, c2, s2, c1, s1), dp;
out = "s15_grlex.mp"					      ;
ideal polys = d*s1+a, -d*c1+b, l3*c3+l2*c2-d,
	l3*s3+l2*s2-c, c1^2+s1^2-1, c2^2+s2^2-1, c3^2+s3^2-1;
ideal null_ideal = 0		;
list nonnull_list = list()	;
simulate(null_ideal, nonnull_list, polys, sim_times, out, debug_mode, sim_option) ;

print("=========== s15 finished ==============" + newline) ;

// s59.s:
print("=========== s59 starts ==============") ;
kill R, @R, @RP, @P, @RUA, @U, @AXU;
ring R = (0, a0, a1, a2, b0, b1, b2, c0, c1), (x, y), dp;
out = "s59_grlex.mp"					;
ideal polys = a0*x^2+b0*x*y+c0*y^2,
	a1*x^2+b1*x*y+c1*y^2,
	a2*x+b2*y;
ideal null_ideal = 0		;
list nonnull_list = list()	;
simulate(null_ideal, nonnull_list, polys, sim_times, out, debug_mode, sim_option) ;

print("=========== s59 finished ==============" + newline) ;

// sato_suzuki_3.s:
print("=========== sato_suzuki_3 starts ==============") ;
kill R, @R, @RP, @P, @RUA, @U, @AXU;
ring R = (0, a, b, c, d), (x(1), x(2), y(1), y(2), s), Dp;
out = "sato_suzuki_3_gradelex.mp"			 ;
ideal polys = a*x(1)^2 + b * y(1), c*y(2)^2 + d * x(2), (x(1) - x(2))^2 + (y(1) - y(2))^2 - s,
	      4*a*c*x(1)*y(2) - b*d, 2*a*x(1)*y(1) - 2*a*x(1)*y(2) - b*x(1) + b*x(2);
ideal null_ideal = 0		;
list nonnull_list = list()	;
simulate(null_ideal, nonnull_list, polys, sim_times, out, debug_mode, sim_option) ;

print("=========== sato_suzuki_3 finished ==============" + newline) ;
