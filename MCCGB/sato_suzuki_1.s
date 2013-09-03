LIB "mccgb.lib";

link out = "sato_suzuki_1.mp";
link out2 = "sato_suzuki_1_mccgb.mp" ;
open(out);
open(out2);

ring RingVar = (0, a, b), (auxU, auxV, x, y, z), lp;

ideal polys = x^3 - a, y^4 - b, x + y - z;

fprintf(out, "F = {");
int i;
for (i = 1; i < size(polys); i++) {
  fprintf(out, "%s, ", polys[i]);
}
fprintf(out, "%s" + newline + "}." + newline, polys[size(polys)]);

	
list aux = auxU, auxV;
list vars = x, y, z;
list params = a, b;

list Auxiliary = aux;
list Paras = params ;
	
ideal G;
list Modcgs;
list mccgb;

(mccgb, G, Modcgs) = genMCCGB(polys, ideal(), list(), vars, params, aux, RingVar, out2);

showMCCGB(mccgb, out);
fprintf(out, "%s" + newline, StringCGB(G));
fprintf(out, "%s" + newline, StringModCGS_mod(Modcgs));
fprintf(out, "The size of CGB is: %s"+newline, string(size(G)));
fprintf(out, "The size of MCCGB is: %s"+newline, string(size(mccgb)));

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
