LIB "mccgb.lib";

link out = "sato_suzuki_3.mp";
link out2 = "sato_suzuki_3_mccgb.mp";
open(out);
open(out2);

ring r = (0, a, b, c, d), (x(1), x(2), y(1), y(2), s), lp;
	
ideal polys = a*x(1)^2 + b * y(1), c*y(2)^2 + d * x(2), (x(1) - x(2))^2 + (y(1) - y(2))^2 - s,
	      4*a*c*x(1)*y(2) - b*d, 2*a*x(1)*y(1) - 2*a*x(1)*y(2) - b*x(1) + b*x(2);

fprintf(out, "F = {");
int i;
for (i = 1; i < size(polys); i++) {
  fprintf(out, "%s, ", polys[i]);
}
fprintf(out, "%s" + newline + "}." + newline, polys[size(polys)]);

	
ideal G;
list Modcgs;
list mccgb;

(mccgb, G, Modcgs) = genMCCGB(polys, ideal(), list(), out2);
	
showMCCGB(mccgb, out);
fprintf(out, "%s" + newline, StringCGB(G));
fprintf(out, "%s" + newline, StringModCGS_mod(Modcgs));
fprintf(out, "The size of CGB is: %s"+newline, string(size(G)));
fprintf(out, "The size of MCCGB is: %s"+newline, string(size(mccgb)));

// Check the validity of my_res;
string err_msg;
int flag;
int save_time = 1;
(err_msg, flag) = check_validity(mccgb, Modcgs, save_time, out);
if (flag) {
    fprintf(out, newline + "================================") ;
    fprintf(out, "It is MCCGB indeed!");
} else {
    fprintf(out, newline + "================================") ;
    fprintf(out, "It is not MCCGB, since %s.", err_msg);
}
	
close(out);
close(out2);
