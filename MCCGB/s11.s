LIB "mcgb.lib";
LIB "mcgbcheck.lib";

link out = "s11.mp";
exportto(Top, out);
open(out);

int debug_mode = 1;
exportto(Top, debug_mode);

ring r = (0, r1, d3, d4, r2, z), (t), lp;

ideal polys = (r1*d3*d4-r1+z-r2^2*d3*d4+r2^2-d3^3*d4+d3^2*d4^2-d3*d4^3+d3*d4)*t^4
	+ (-2*r1*r2*d4+2*r2^3*d4+2*r2*d3^2*d4-4*r2*d3*d4^2+2*r2*d4^3+2*r2*d4)*t^3
	+ (-2*r1+2*z+4*r2^2*d4^2+2*r2^2-2*d3^2*d4^2+4*d4^2)*t^2
	+ (-2*r1*r2*d4+2*r2^3*d4+2*r2*d3^2*d4+4*r2*d3*d4^2+2*r2*d4^3+2*r2*d4)*t
	-r1*d3*d4-r1+z+(r2)^2*d3*d4+(r2)^2+(d3)^2*d4+(d3)^2*(d4)^2+d3*(d4)^3-d3*d4;

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

