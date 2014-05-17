// Non-terminating bug
LIB "mcgb.lib";
LIB "mcgbcheck.lib";

link out = "s47.mp";
exportto(Top, out);
open(out);

int debug_mode = 1;
exportto(Top, debug_mode);

ring r = (0, a, b), (x0, x1, x2, x3, y0, y1, y2, y3, r2), lp;

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

