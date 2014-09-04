// Example from A. Montes.
LIB "simulation.lib";

// The output file name.
string prefix_name = "temp_test_" ;
string suffix_name = ".mp"	  ;
link out			  ;

// 0 -- no intermediate debug information is printed to the output file;
// >0 -- otherwise.
int debug_mode = 1;

// Times of running Algorithm 1 to generate different MCGBs.
int sim_times = 20	;

// sim_option = [opt1, opt2, opt3, opt4], where
// opt1 -- 1 if running Algorithm 1; 0 otherwise.
// opt2 -- 1 if running Algorithm 2; 0 otherwise.
// opt3 -- 1 if running Algorithm 3; 0 otherwise.
// opt4 -- 1 if running checking the CGBness of RGB; 0 otherwise.
intvec sim_option = 1, 0, 0, 0, 0	;

system("--no-warn", 1)		;

// degree reversed lex order.
ring R = (0, a, b), (x(2), x(3), y(2), y(3)), dp;

ideal polys = (a^5-2*a^3-a*b^4+a),
(a^2+2*a+b^2+1)*y(3)+(-2*a*b-2*b),
(2*a*b+b^3+b)*y(3)+(-1/2*a^4+1/2*a^3+1/2*a^2*b^2+1/2*a^2-3/2*a*b^2-1/2*a-2*b^2),
(a*b)*y(2)+(a*b)*y(3)+(a^3-a*b^2-a),
(a^3-8/3*a+5/3*b^2+5/3)*y(2)+(-1/6*a^4+a^2+a+1/6*b^2+1/6)*y(3)+(1/12*a^4*b-5/12*a^3*b-1/12*a^2*b^3+11/12*a^2*b+7/12*a*b^3+13/12*a*b-11/3*b),
(b)*x(3)+(-a-1)*y(3)+(b),
(2*a+b^2+2)*x(3)+(5/8*a^4*b-1/4*a^3*b-15/4*a^2*b-a*b+b)*y(3)+(-5/16*a^4*b^2-23/16*a^4-3/16*a^3*b^2+23/16*a^3+5/16*a^2*b^4+2*a^2*b^2+23/16*a^2-7/16*a*b^4+15/8*a*b^2-55/16*a+b^2-2),
(b)*x(2)+(-a+1)*y(2)+(-b),
(a^2+a)*y(3)^2+(-1/2*a+1/2)*x(2)+(-a*b-1/2*b)*y(3)+(1/2*a^4-1/2*a^2*b^2-1/2*a^2-1/2*a+1/2),
x(3)^2+y(3)^2+2*x(3)+(-2*a*b+2*b)*y(3)+(-a^3+2*a^2+a*b^2-a-3),
x(2)^2+y(2)^2-2*x(2)+(2*b)*y(2)+(-2*a*b)*y(3)+(-a^3+2*a^2+a*b^2+3*a-3) ;
	
ideal null_ideal = 0		;
list nonnull_list = list()	;

set_global_rings_mcgb();

list M, Modcgs			;
int i				;
list CGS_list			;
	
for (i = 1; i <= sim_times; i++) {
  out = prefix_name + string(i) + suffix_name		      ;
  (M, Modcgs) = mcgbRandMain(null_ideal, nonnull_list, polys) ;

  int flag = check_validity(M, Modcgs)	;
  print(flag)				;
  if (flag != 1) {
    fprintf(out, "%s" + newline, StringModCGS_mod(polys, Modcgs, 0)) ;
    CGS_list = insert(CGS_list, Modcgs, size(CGS_list))		     ;
  }
}

exportto(Top, CGS_list)		;
	
//simulate(null_ideal, nonnull_list, polys, sim_times, out, debug_mode, sim_option) ;
