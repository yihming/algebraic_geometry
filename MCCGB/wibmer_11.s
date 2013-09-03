// Example in Section 5 of [Montes and Wibmer 2010].
LIB "mccgb.lib";

link out = "wibmer_11.mp";
link out2 = "wibmer_11_mccgb.mp";
open(out);
open(out2);

ring RingVar = (0, u(1), u(2)), (auxU, auxV, x), lp;

ideal polys = u(1)*x, (u(2)^2 - 1)*x^2 + x;

fprintf(out, "F = {");
int i;
for (i = 1; i < size(polys); i++) {
  fprintf(out, "%s, ", polys[i]);
}
fprintf(out, "%s" + newline + "}." + newline, polys[size(polys)]);

list aux = auxU, auxV;
list vars = x;
list params = u(1), u(2);

list Auxiliary = aux;
	
ideal G;
list Modcgs;
list mccgb;

(mccgb, G, Modcgs) = genMCCGB(polys, ideal(), list(), vars, params, aux, RingVar, out2);

showMCCGB(mccgb, out);
fprintf(out, "%s" + newline, StringCGB(G));
fprintf(out, "The size of CGB is: %s"+newline, string(size(G)));
fprintf(out, "The size of MCCGB is: %s"+newline, string(size(mccgb)));
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

