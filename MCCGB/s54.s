// Bug in cgb_mod
LIB "mcgb.lib";
LIB "mcgbcheck.lib";

link out = "s54.mp";
exportto(Top, out);
open(out);

int debug_mode = 1;
exportto(Top, debug_mode);

ring r = (0, a, b, cv, cw, sv, sw), (x1, x2, y1, y2), lp;

ideal polys = x1^2+y1^2-2*a*x1-2*y1,
	x2^2+y2^2+2*b*x2-2*y2,
	a*x1+y1+(a^2*cv-a^2+cv-1),
	-b*x2+y2+(b^2*cw-b^2+cw-1),
	-x1+a*y1+(a^2*sv+sv),
	-x2-b*y2+(b^2*sw+sw),
	-y1*x2+x1*y2-2*x1+2*x2;
	
fprintf(out, "F = {");
int i;
for (i = 1; i < size(polys); i++) {
  fprintf(out, "%s, ", polys[i]);
}
fprintf(out, "%s" + newline + "}." + newline, polys[size(polys)]);

ideal G;
list Modcgs;

list N_init = a^2+1, b^2+1, a+b;

(G, Modcgs) = cgb_mod(polys, ideal(), N_init, out);
fprintf(out, "%s" + newline, StringModCGS_mod(Modcgs));

fprintf(out, "%s" + newline, StringCGB(G));

list M = mcgbMain(ideal(), list(), polys);

showMCGB(M, out);
fprintf(out, "The size of CGB is: %s"+newline, string(size(G)));
fprintf(out, "The size of M is: %s"+newline, string(size(M)));

check_validity(G, M, Modcgs, out);
	
close(out);

