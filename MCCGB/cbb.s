LIB "mccgb.lib";

link out = "cbb.mp";
open(out);

// deglex ordering.
ring r = (0, z), (y, x), Dp;

ideal polys = x^2-z^2-6*x+4*z+5,
	3*y^2+z^2-12*y-4*z+12,
	z^3-8*z^2+19*z-12,
	x^2*z^3-8*x^2*z^2+19*x^2*z+x*z^2-12*x^2-4*x*z-z^2+3*x+4*z-3,
	x^2*z^3-8*x^2*z^2+19*x^2*z+y*z^2-12*x^2-4*y*z-2*z^2+3*y+8*z-6 ;
	
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

mccgb = genMCCGB(G, Modcgs, out);
	
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

