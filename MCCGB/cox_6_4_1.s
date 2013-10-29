// Example 1 in Section 6.4 of David Cox et al book.
LIB "mccgb.lib";

link out = "cox_6_4_1.mp";
link out2 = "cox_6_4_1_mccgb.mp";
open(out);
open(out2);

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
list mccgb;

(mccgb, G, Modcgs) = genMCCGB(polys, ideal(), list(), out2);

fprintf(out, "The size of CGB is: %s" + newline, string(size(G)));
fprintf(out, "The size of MCCGB is: %s" + newline, string(size(mccgb)));
showMCCGB(mccgb, out);
fprintf(out, "%s" + newline, StringCGB(G));
fprintf(out, "%s" + newline, StringModCGS_mod(Modcgs));

// Check the validity of my result.
string err_msg			;
int flag;
int save_time = 1;
(err_msg, flag) = check_validity(mccgb, Modcgs, save_time, out);
if (flag) {
  fprintf(out, newline + "===========================");
  fprintf(out, "It is MCCGB indeed!");
} else {
  fprintf(out, newline + "===========================");
  fprintf(out, "It is not MCCGB, since %s.", err_msg);
}

