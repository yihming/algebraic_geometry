LIB "mcgb.lib";
LIB "mcgbcheck.lib";
	
link out = "montes_3.mp";
exportto(Top, out);
open(out);

int debug_mode = 1;
exportto(Top, debug_mode);
	
ring r = (0, a, b, c), (x, y), lp;

ideal polys = a*x^2*y + a + 3*b^2, a*b*x*y - a*c*x*y + a*b*x + 5*c;

fprintf(out, "F = {");
int i;
for (i = 1; i < size(polys); i++) {
  fprintf(out, "%s, ", polys[i]);
}
fprintf(out, "%s" + newline + "}." + newline, polys[size(polys)]);

ideal G;
list Modcgs;

(G, Modcgs) = cgb_mod(polys, ideal(), list(), out);
fprintf(out, "%s" + newline, StringModCGS_mod(Modcgs));

fprintf(out, "%s" + newline, StringCGB(G));

list M;
list Modcgs_new;
	
(M, Modcgs_new) = mcgbMain(ideal(), list(), polys);

showMCGB(M, out);
	
fprintf(out, "The size of CGB is: %s"+newline, string(size(G)));
fprintf(out, "The size of M is: %s"+newline, string(size(M)));

check_validity(G, M, Modcgs, Modcgs_new, out);
	
close(out);

