// Example 9 in MCCGS paper by A. Montes.
LIB "mcgb.lib";
LIB "mcgbcheck.lib";

link out = "montes_mccgs.mp";
exportto(Top, out);
open(out);

int debug_mode = 1;
exportto(Top, debug_mode);

ring r = (0, b, c, d), (x, y), lp ;

ideal polys = x2 + by2 + 2cxy + dx, 2x + 2cy + d, 2by + 2cx;

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
fprintf(out, "The size of CGB is: %s" + newline, string(size(G)));
fprintf(out, "The size of M is: %s" + newline, string(size(M)));

check_validity(G, M, Modcgs, out);

close(out);
