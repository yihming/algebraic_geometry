// Example modified from that in Section 5 of [Montes and Wibmer 2010].
LIB "mccgb.lib";

link out = "yiming_1.mp";
link out2 = "yiming_1_mccgb.mp";
open(out);
open(out2);

ring r = (0, u, v), x, lp;

ideal polys = u*x, (v^2 - 1)*x^2 + 1;

fprintf(out, "F = {");
int i;
for (i = 1; i < size(polys); i++) {
  fprintf(out, "%s, ", polys[i]);
}
fprintf(out, "%s" + newline + "}." + newline, polys[size(polys)]);

ideal G;
list Modcgs;
list mccgb;

(mccgb, G, Modcgs) = genMCCGB_topdown(polys, ideal(), list(), out2);

showMCCGB(mccgb, out);
fprintf(out, "%s" + newline, StringCGB(G));
fprintf(out, "The size of CGB is: %s"+newline, string(size(G)));
fprintf(out, "The size of MCCGB is: %s"+newline, string(size(mccgb)));
fprintf(out, "%s" + newline, StringModCGS_mod(Modcgs));

// Check the validity of my_res;
string err_msg;
int flag;
(err_msg, flag) = check_validity(G, mccgb, Modcgs, out);
if (flag) {
    fprintf(out, newline + "================================") ;
    fprintf(out, "It is MCCGB indeed!");
} else {
    fprintf(out, newline + "================================") ;
    fprintf(out, "It is not MCCGB, since %s.", err_msg);
}
	
close(out);
close(out2);

