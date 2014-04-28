// Example 12 in MCCGS paper by A. Montes.
// The system of the Romin robot (Gonzalez-Lopez and Recio, 1993).
LIB "mcgb.lib";
LIB "mcgbcheck.lib";
	
link out = "romin_robot.mp";
exportto(Top, out);
open(out);

int debug_mode = 1;
exportto(Top, debug_mode);

ring r = (0, l2, l3, a, b, c, d), (c3, s3, c2, s2, c1, s1), lp;

ideal polys = a + d * s1,
	b - d * c1,
	l2*c2 + l3*c3 - d,
	l2*s2 + l3*s3 - c,
	s1^2 + c1^2 - 1,
	s2^2 + c2^2 - 1,
	s3^2 + c3^2 - 1;
	
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
