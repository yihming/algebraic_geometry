LIB "mcgb.lib";
LIB "mcgbcheck.lib";

link out = "s15.mp";
exportto(Top, out);
open(out);

int debug_mode = 0;
exportto(Top, debug_mode);

ring r = (0, a, b, c, d, l2, l3), (s1, s2, s3, c1, c2, c3), lp;

fprintf(out, "The given ring is:")	;
fprintf(out, "%s"+newline, r)		;
	
ideal polys = d*s1+a, -d*c1+b, l3*c3+l2*c2-d,
	l3*s3+l2*s2-c, c1^2+s1^2-1, c2^2+s2^2-1, c3^2+s3^2-1;
ideal null_ideal = 0		;
list nonnull_list = list()	;
	
fprintf(out, "F = {");
int i;
for (i = 1; i < size(polys); i++) {
  fprintf(out, "%s, ", polys[i]);
}
fprintf(out, "%s" + newline + "}." + newline, polys[size(polys)]);

ideal G;
list Modcgs;
	
(G, Modcgs) = cgb_mod(polys, null_ideal, nonnull_list, out);
fprintf(out, "%s" + newline, StringModCGS_mod(Modcgs));

fprintf(out, "%s" + newline, StringCGB(G));
fprintf(out, newline+"Size is %s."+newline, string(size(G))) ;

// Algorithm 1:
fprintf(out, newline+"=========== Algorithm 1 =============="+newline) ;
int simulation_time = 15	;
int simulation_cnt = 1;

list M_list;

while (simulation_cnt <= simulation_time) {
  if (defined(debug_mode) && debug_mode > 0) {
    fprintf(out, "Simulation %s:", string(simulation_cnt)) ;
  }
  list M, Modcgs_new;
  (M, Modcgs_new) = mcgbRandMain(null_ideal, nonnull_list, polys);
  if (size(M_list) == 0 || !listContainsList(M_list, M)) {
    M_list = insert(M_list, M, size(M_list)) ;
  }

  simulation_cnt = simulation_cnt + 1 ;
}

for (i = 1; i <= size(M_list); i++) {
  fprintf(out, "=========================" + newline);
  fprintf(out, "M_%s is"+newline, string(i));
  showMCGB(M_list[i], out);
  fprintf(out, newline+"Size is %s."+newline, string(size(M_list[i]))) ;
  check_validity(M_list[i], Modcgs) ;
}

// Algorithm 2:
fprintf(out, newline+"========= Algorithm 2 ==============="+newline) ;
list M_least, Modcgs_least	;
(M_least, Modcgs_least) = mcgbMain(null_ideal, nonnull_list, polys) ;
showMCGB(M_least, out)					   ;
fprintf(out, newline+"Size is %s."+newline, string(size(M_least))) ;
check_validity(M_least, Modcgs)				   ;

// Algorithm 3:
fprintf(out, newline + "============== Algorithm 3 =================" + newline) ;
ideal CCGB						     ;
list CGS_ccgb						     ;
(CCGB, CGS_ccgb) = ccgbMain(null_ideal, nonnull_list, polys) ;
showCCGB(CCGB, out)						     ;
fprintf(out, newline+"Size is %s."+newline, string(size(CCGB))) ;
if (size(CCGB) != 0) {
  list CCGB_list		;
  for (i = 1; i <= size(CCGB); i++) {
    CCGB_list = insert(CCGB_list, CCGB[i], size(CCGB_list)) ;
  }
  check_validity(CCGB_list, Modcgs) ;
} else {
  check_validity(list(), Modcgs) ;
}

// RGB.
fprintf(out, newline + "================ RGB =====================" + newline) ;
ideal RGB = getRGB(polys)	;
showRGB(RGB, out)		;
fprintf(out, newline+"Size is %s."+newline, string(size(RGB))) ;
if (size(RGB) != 0) {
  list RGB_list			;
  for (i = 1; i <= size(RGB); i++) {
    RGB_list = insert(RGB_list, RGB[i], size(RGB_list)) ;
  }
  check_validity(RGB_list, Modcgs) ;
} else {
  check_validity(list(), Modcgs) ;
}
	
close(out);
