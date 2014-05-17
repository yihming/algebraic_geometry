LIB "mcgb.lib";
LIB "mcgbcheck.lib";

link out = "s16.mp";
exportto(Top, out);
open(out);

int debug_mode = 1;
exportto(Top, debug_mode);

ring r = (0, x, y, z), (w2, w3, w4, w5), lp;

ideal polys = (x-y-z)*w5, z*w4-z*w5, (x+y-1)*w4+(-z+1)*w5,
	(y-1)*w3+y*w4+(-2*z+1)*w5, (x-z)*w3-y*w4,
	(z-1)*w2+z*w3+(2z-1)*w5, (y-1)*w2+(y+2*z-1)*w5,
	(x-1)*w2+z*w3+(y+2*z-1)*w5;

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

check_validity(G, M, Modcgs_new, out);
	
close(out);

