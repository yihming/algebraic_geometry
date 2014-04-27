LIB "mcgb.lib";
LIBV "mcgbcheck.lib";
	
link out = "cbb.mp";
exportto(Top, out);
open(out);

int debug_mode = 1;
exportto(Top, debug_mode);
	
// deglex ordering.
ring r = (0, z), (y, x), Dp;

ideal polys = x^2-z^2-6*x+4*z+5,
	3*y^2+z^2-12*y-4*z+12,
	z^3-8*z^2+19*z-12,
	x^2*z^3-8*x^2*z^2+19*x^2*z+x*z^2-12*x^2-4*x*z-z^2+3*x+4*z-3,
	x^2*z^3-8*x^2*z^2+19*x^2*z+y*z^2-12*x^2-4*y*z-2*z^2+3*y+8*z-6 ;
	
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

list M = mcgbMain(ideal(), list(), polys);

showMCGB(M, out);
fprintf(out, "The size of CGB is: %s"+newline, string(size(G)));
fprintf(out, "The size of M is: %s"+newline, string(size(M)));

check_validity(G, M, Modcgs, out);

close(out);

