// Example 5.1 in D. Kapur, Y. Sun and D. Wang, "An Efficient Method for Computing Comprehensive Groebner Bases", ISSAC 2011.
LIB "mccgb.lib";

link out = "example51.mp";
link out2 = "example51_mccgb.mp";
open(out);
open(out2);

ring RingVar = (0, a, b, c), (auxU, auxV, x, y), lp;

ideal polys = a*x-b, b*y-a, c*x^2-y, c*y^2-x;
	
fprintf(out, "F = {");
int i;
for (i = 1; i < size(polys); i++) {
  fprintf(out, "%s, ", polys[i]);
}
fprintf(out, "%s" + newline + "}." + newline, polys[size(polys)]);

list aux = auxU, auxV;
list vars = x, y;
list params = a, b, c;

list Auxiliary = aux;
	
ideal G;
list Modcgs;
list mccgb;

(mccgb, G, Modcgs) = genMCCGB(polys, ideal(), list(), vars, params, aux, RingVar, out2);

showMCCGB(mccgb, out);
fprintf(out, "The size of CGB is: %s"+newline, string(size(G)));
fprintf(out, "The size of MCCGB is: %s"+newline, string(size(mccgb)));
fprintf(out, "%s" + newline, StringCGB(G));
fprintf(out, "%s" + newline, StringModCGS_mod(Modcgs));

// Check the validity of my_res;
string err_msg;
int flag;
(err_msg, flag) = check_validity(mccgb, Modcgs, out);
if (flag) {
    fprintf(out, newline + "================================") ;
    fprintf(out, "It is MCCGB indeed!");
} else {
    fprintf(out, newline + "================================") ;
    fprintf(out, "It is not MCCGB, since %s.", err_msg);
}

	
close(out);
close(out2);

