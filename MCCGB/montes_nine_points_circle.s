// Application in MCCGS paper by A. Montes.
// Nine points circle Theorem.
LIB "mcgb.lib";
LIB "mcgbcheck.lib";
	
link out = "montes_nine_points_circle.mp";
exportto(Top, out);
open(out);

int debug_mode = 1;
exportto(Top, debug_mode);
	
ring r = (0, a, b, c, d), (x, y, x(0), y(0), r(2)), dp;

ideal polys = (b-d)*x + (c-a)*y + 2ad - 2bc,
	(c-a)*x + (b-d)*y,
	(a-x(0))^2 + (b-y(0))^2-r^2,
	(c-x(0))^2 + (d-y(0))^2 - r^2,
	(a+c-x(0))^2 + (b+d-y(0))^2 - r^2,
	(x-x(0))^2 + (y-y(0))^2 - r^2;
	
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
