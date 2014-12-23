// Batch all montes' sXX examples.
LIB "simulation.lib";

// The output file name.
link out;

int debug_mode = 0;
int sim_times = 20;

intvec sim_option = 1, 0, 1, 1, 0;

// s03.s:
print("=========== s03 starts ==============") ;
if (defined(R)) {
	kill R, @R, @RP, @P, @RUA, @U, @AXU;
}
ring R = (0, a, b), (x), dp	;
out = "s03_grlex.mp"		     ;
ideal polys = ax, bx		;
ideal null_ideal = 0		;
list nonnull_list = a+b-1	;
simulate(null_ideal, nonnull_list, polys, sim_times, out, debug_mode, sim_option) ;

print("=========== s03 finished ==============" + newline) ;

// s04.s:
print("=========== s04 starts ==============") ;
kill R, @R, @RP, @P, @RUA, @U, @AXU;
ring R = (0, a, b, c), (x, y, z), dp	;
out = "s04_grlex.mp"			;
ideal polys = x+y+z-1, x-y+2*z+1, ax+by+cz		;
ideal null_ideal = 0		;
list nonnull_list = list()	;
simulate(null_ideal, nonnull_list, polys, sim_times, out, debug_mode, sim_option) ;

print("=========== s04 finished ==============" + newline) ;

// s05.s:
print("=========== s05 starts ==============") ;
kill R, @R, @RP, @P, @RUA, @U, @AXU;
ring R = (0, a1, a2, a3, a4), (x1, x2, x3, x4), dp ;
out = "s05_grlex.mp"				   ;
ideal polys=x4-a4+a2, x1+x2+x3+x4-a1-a3-a4, x1*x3*x4-a1*a3*a4, x1*x3+x1*x4+x2*x3+x3*x4-a1*a4-a1*a3-a3*a4;
ideal null_ideal = 0		;
list nonnull_list = list()	;
simulate(null_ideal, nonnull_list, polys, sim_times, out, debug_mode, sim_option) ;

print("=========== s05 finished ==============" + newline) ;

// s09.s:
print("=========== s09 starts ==============") ;
kill R, @R, @RP, @P, @RUA, @U, @AXU;
ring R = (0,a,b,c),(x,y,z), dp;
out = "s09_grlex.mp"	      ;
ideal polys=x+c*y+b*z+a, c*x+y+a*z+b, b*x+a*y+z+c;
ideal null_ideal = 0		;
list nonnull_list = list()	;
simulate(null_ideal, nonnull_list, polys, sim_times, out, debug_mode, sim_option) ;

print("=========== s09 finished ==============" + newline) ;

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

// s11.s:

print("=========== s11 starts ==============") ;
kill R, @R, @RP, @P, @RUA, @U, @AXU;
ring R = (0, r, Z, r2, d3, d4), (t), dp;
out = "s11_grlex.mp";
sim_times = 10	    ;
ideal polys = (r*d3*d4-r+Z-r2^2*d3*d4+r2^2-d3^3*d4+d3^2*d4^2-d3*d4^3+d3*d4)*t^4
	+ (-2*r*r2*d4+2*r2^3*d4+2*r2*d3^2*d4-4*r2*d3*d4^2+2*r2*d4^3+2*r2*d4)*t^3
	+ (-2*r+2*Z+4*r2^2*d4^2+2*r2^2-2*d3^2*d4^2+4*d4^2)*t^2
	+ (-2*r*r2*d4+2*r2^3*d4+2*r2*d3^2*d4+4*r2*d3*d4^2+2*r2*d4^3+2*r2*d4)*t
	-r*d3*d4-r+Z+(r2)^2*d3*d4+(r2)^2+(d3)^3*d4+(d3)^2*(d4)^2+d3*(d4)^3-d3*d4;
ideal null_ideal = 0		;
list nonnull_list = list()	;
simulate(null_ideal, nonnull_list, polys, sim_times, out, debug_mode, sim_option) ;

print("=========== s11 finished ==============" + newline) ;

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

print("=========== s12 finished ==============" + newline) ;

// s13.s:
print("=========== s13 starts ==============") ;
kill R, @R, @RP, @P, @RUA, @U, @AXU;
ring R = (0,a,b,c),(x,y),dp;
out = "s13_grlex.mp"	   ;
ideal polys=a*x^2*y+a+3*b^2,a*(b-c)*x*y+a*b*x+5*c;
ideal null_ideal = 0		;
list nonnull_list = list()	;
simulate(null_ideal, nonnull_list, polys, sim_times, out, debug_mode, sim_option) ;

print("=========== s13 finished ==============" + newline) ;

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


// s16.s:
print("=========== s16 starts ==============") ;
kill R, @R, @RP, @P, @RUA, @U, @AXU;
ring R = (0, x, y, z), (w2, w3, w4, w5), lp;
out = "s16_lex.mp"			   ;
ideal polys = (x-y-z)*w5, z*w4-z*w5, (x+y-1)*w4+(-z+1)*w5,
	(y-1)*w3+y*w4+(-2*z+1)*w5, (x-z)*w3-y*w4,
	(z-1)*w2+z*w3+(2z-1)*w5, (y-1)*w2+(y+2*z-1)*w5,
	(x-1)*w2+z*w3+(y+2*z-1)*w5;
ideal null_ideal = 0		;
list nonnull_list = list()	;
simulate(null_ideal, nonnull_list, polys, sim_times, out, debug_mode, sim_option) ;

print("=========== s16 finished ==============" + newline) ;

// s19.s:
print("=========== s19 starts ==============") ;
kill R, @R, @RP, @P, @RUA, @U, @AXU;
ring R = (0,b,c,d,e,f),(x,y),dp;
out = "s19_grlex.mp"	       ;
ideal polys=x^2+b*y^2+2*c*x*y+2*d*x+2*e*y+f, 2*x+2*c*y+2*d, 2*b*y+2*c*x+2*e;
ideal null_ideal = 0		;
list nonnull_list = list()	;
simulate(null_ideal, nonnull_list, polys, sim_times, out, debug_mode, sim_option) ;

print("=========== s19 finished ==============" + newline) ;

// s20.s:
print("=========== s20 starts ==============") ;
kill R, @R, @RP, @P, @RUA, @U, @AXU;
ring R = (0,P1,Q1,P2,Q2),(e2,f2,e3,f3),dp;
out = "s20_grlex.mp"			 ;
ideal polys=14-12*e2-110*f2-2*e3-10*f3-P1, 2397-2200*e2+240*f2-200*e3+40*f3-20*Q1, 16*e2^2-4*e2*e3-20*e2*f3+20*e3*f2+16*f2^2-4*f2*f3-12*e2+110*f2-P2, 2599*e2^2-400*e2*e3+80*e2*f3-80*e3*f2+2599*f2^2-400*f2*f3-2200*e2-240*f2-20*Q2;
ideal null_ideal = 0		;
list nonnull_list = list()	;
simulate(null_ideal, nonnull_list, polys, sim_times, out, debug_mode, sim_option) ;

print("=========== s20 finished ==============" + newline) ;

// s47.s:
print("=========== s47 starts ==============") ;
kill R, @R, @RP, @P, @RUA, @U, @AXU;
ring R = (0, a, b), (x0, x1, x2, x3, y0, y1, y2, y3, r2), lp;
out = "s47_lex.mp"					    ;
ideal polys = x0^2+y0^2-r2, x0^2+y0^2+(-2*a-2)*x0-2*b*y0-r2+(a^2+2*a+b^2+1),
	x0^2+y0^2+(-2*a+2)*x0+(-2*b)*y0-r2+(a^2-2*a+b^2+1),
	x0^2+y0^2-4*a*x0-r2+4*a^2,
	x1^2+y1^2-2*x1*x0+x0^2-2*y1*y0+y0^2+2*a*x1+2*b*y1-2*a*x0-2*b*y0-r2+(a^2+b^2),
	x1-a, (a+1)*x1+b*y1-a-1,
	x1^2+y1^2-2*x1*x0+x0^2-2*y1*y0+y0^2+2*x1-2*x0-r2+1,
	x1^2+y1^2-2*x1*x0+x0^2-2*y1*y0+y0^2-2*x1+2*x0-r2+1,
	b*x2+(-a-1)*y2+2*b,
	(a+1)*x2+b*y2+(-2*a-2),
	x2^2+y2^2-2*x2*x0+x0^2-2*y2*y0+y0^2-r2,
	b*x3+(-a+1)*y3-2*b,
	(a-1)*x3+b*y3+(2*a-2),
	x3^2+y3^2-2*x3*x0+x0^2-2*y3*y0+y0^2-r2;
ideal null_ideal = 0		;
list nonnull_list = list()	;
simulate(null_ideal, nonnull_list, polys, sim_times, out, debug_mode, sim_option) ;

print("=========== s47 finished ==============" + newline) ;

// s53.s:
print("=========== s53 starts ==============") ;
kill R, @R, @RP, @P, @RUA, @U, @AXU;
ring R = (0, a, b), (x2, y2, x3, y3), dp;
out = "s53_grlex.mp"			;
ideal polys = -b*x2+(a-1)*y2+b,
	(a-1)*x2+b*y2+a-1,
	b*x3+(-a-1)*y3+b,
	(a+1)*x3+b*y3+(-a-1),
	-x2^2+x3^2-y2^2+y3^2+2*a*x2-2*a*x3;
ideal null_ideal = 0		;
list nonnull_list = list()	;
simulate(null_ideal, nonnull_list, polys, sim_times, out, debug_mode, sim_option) ;

print("=========== s53 finished ==============" + newline) ;



// s58.s:
print("=========== s58 starts ==============") ;
kill R, @R, @RP, @P, @RUA, @U, @AXU;
ring R = (0, a0, a1, b0, b1, c0, c1), (x, y), dp;
out = "s58_grlex.mp"				;
ideal polys = a0*x^2 + b0*y +c0,
	a1*x^2+b1*y+c1;
ideal null_ideal = 0		;
list nonnull_list = list()	;
simulate(null_ideal, nonnull_list, polys, sim_times, out, debug_mode, sim_option) ;

print("=========== s58 finished ==============" + newline) ;

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
/*
// montes_nine_points_circle.s:
print("=========== montes_nine_points_circle starts ==============") ;
kill R, @R, @RP, @P, @RUA, @U, @AXU;
ring R = (0, a, b, c, d), (x, y, x(0), y(0), r(2)), Dp;
out = "montes_nine_points_circle_gradelex.mp"	      ;
ideal polys = (b-d)*x + (c-a)*y + 2ad - 2bc,
	(c-a)*x + (b-d)*y,
	(a-x(0))^2 + (b-y(0))^2-r(2)^2,
	(c-x(0))^2 + (d-y(0))^2 - r(2)^2,
	(a+c-x(0))^2 + (b+d-y(0))^2 - r(2)^2,
	(x-x(0))^2 + (y-y(0))^2 - r(2)^2;
ideal null_ideal = 0		;
list nonnull_list = list()	;
simulate(null_ideal, nonnull_list, polys, sim_times, out, debug_mode, sim_option) ;

print("=========== montes_nine_points_circle finished ==============" + newline) ;
*/
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

// s54.s:

print("=========== s54 starts ==============") ;
kill R, @R, @RP, @P, @RUA, @U, @AXU;
ring R = (0, a, b, cv, cw, sv, sw), (x1, x2, y1, y2), lp;
out = "s54_lex.mp"					;
ideal polys = x1^2+y1^2-2*a*x1-2*y1,
	x2^2+y2^2+2*b*x2-2*y2,
	a*x1+y1+(a^2*cv-a^2+cv-1),
	-b*x2+y2+(b^2*cw-b^2+cw-1),
	-x1+a*y1+(a^2*sv+sv),
	-x2-b*y2+(b^2*sw+sw),
	-y1*x2+x1*y2-2*x1+2*x2;
ideal null_ideal = 0		;
list nonnull_list = a2+1, b2+1, a+b	;
simulate(null_ideal, nonnull_list, polys, sim_times, out, debug_mode, sim_option) ;

print("=========== s54 finished ==============" + newline) ;
