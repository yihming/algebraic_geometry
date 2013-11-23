// Example in Section 5 of [Montes and Wibmer 2010].
LIB "mccgb.lib";

link out = "montes_wibmer_5.mp";
open(out);

ring r = (0, a, b), (x(2), x(3), y(2), y(3)), lp;

ideal polys = (a-1)*y(2) - b*(x(2)-1), (a-1)*(x(2)+1)+b*y(2),
	      (a+1)*y(3) - b*(x(3)+1), (a+1)*(x(3)-1)+b*y(3),
	      (x(3)-a)^2 + y(3)^2 - (x(2) - a)^2 - y(2)^2;

fprintf(out, "F = {");
int i;
for (i = 1; i < size(polys); i++) {
  fprintf(out, "%s, ", polys[i]);
}
fprintf(out, "%s" + newline + "}." + newline, polys[size(polys)]);

ideal G;
list Modcgs;
list mccgb;

(G, Modcgs) = cgb_mod(polys, ideal(), list(), out);

fprintf(out, "%s" + newline, StringCGB(G));
fprintf(out, "%s" + newline, StringModCGS_mod(Modcgs));

mccgb = genMCCGB_topdown(G, Modcgs, out);
	
fprintf(out, "%s" + newline, StringCGB(G));
showMCCGB(mccgb, out);
fprintf(out, "The size of CGB is: %s"+newline, string(size(G)));
fprintf(out, "The size of M is: %s"+newline, string(size(mccgb)));
fprintf(out, "%s" + newline, StringModCGS_mod(Modcgs));

// Check the validity of my_res;
string err_msg;
int flag;
(err_msg, flag) = check_validity(G, mccgb, Modcgs, out);
if (flag) {
    fprintf(out, newline + "================================") ;
    fprintf(out, "It is Comprehensive and Minimal indeed!");
} else {
    fprintf(out, newline + "================================") ;
    fprintf(out, "It is not valid, since %s.", err_msg);
}
	
close(out);

