// Non-terminating Bug.
LIB "mcgb.lib";
LIB "mcgbcheck.lib";

link out = "s53.mp";
exportto(Top, out);
open(out);

int debug_mode = 1;
exportto(Top, debug_mode);

ring r = (0, a, b), (x2, y2, x3, y3), lp;

ideal polys = -b*x2+(a-1)*y2+b,
	(a-1)*x2+b*y2+a-1,
	b*x3+(-a-1)*y3+b,
	(a+1)*x3+b*y3+(-a-1),
	-x2^2+x3^2-y2^2+y3^2+2*a*x2-2*a*x3;
	
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

list M, Modcgs_new;
	
(M, Modcgs_new) = mcgbMain(ideal(), list(), polys);

showMCGB(M, out);
fprintf(out, "The size of CGB is: %s"+newline, string(size(G)));
fprintf(out, "The size of M is: %s"+newline, string(size(M)));

check_validity(G, M, Modcgs_new, out);
	
close(out);

