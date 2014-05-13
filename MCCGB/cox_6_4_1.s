// Example 1 in Section 6.4 of David Cox et al book.
LIB "mcgb.lib";
LIB "mcgbcheck.lib";

link out = "cox_6_4_1.mp";
exportto(Top, out);
open(out);

int debug_mode = 1;
exportto(Top, debug_mode);
	
ring r = (0, u(1), u(2), u(3)), (x(1), x(2), x(3), x(4)), lp;

ideal polys = x(2) - u(3), (x(1) - u(1))*u(3) - x(2)*u(2),
	      x(4)*x(1) - x(3)*u(3), x(4)*(u(2)-u(1)) - (x(3)-u(1))*u(3);

fprintf(out, "F = {");
int i;
for (i = 1; i < size(polys); ++) {
  fprintf(out, "%s, ", polys[i]);
}
fprintf(out, "%s"+newline+"}." + newline, polys[size(polys)]);

ideal G;
list Modcgs;

(G, Modcgs) = cgb_mod(polys, ideal(), list(), out);
fprintf(out, "%s" + newline, StringModCGS_mod(Modcgs));
fprintf(out, "%s" + newline, StringCGB(G));

list M = mcgbMain(ideal(), list(), polys);

showMCGB(M, out);
fprintf(out, "The size of CGB is: %s" + newline, string(size(G)));
fprintf(out, "The size of MCCGB is: %s" + newline, string(size(M)));

check_validity(G, M, Modcgs, out);

close(out);
