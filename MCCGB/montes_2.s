// Example 5.1 in D. Kapur, Y. Sun and D. Wang, "An Efficient Method for Computing Comprehensive Groebner Bases", ISSAC 2011.
LIB "mccgb.lib";

link out = "montes_2.mp";
open(out);

ring RingVar = (0, u), x, lp;

ideal polys = u2x + u, ux2 + x;
	
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

