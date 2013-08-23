LIB "mccgb.s";

link out = "weispfenning_2.mp";
open(out);

ring RingVar = (0, v, u), (auxU, auxV, z, y, x), lp;
//ring RingAll = 0, (auxU, auxV, z, y, x, v, u), lp  ;

ideal polys = u*y + x, v*z + x + 1;

fprintf(out, "F = {");
int i;
for (i = 1; i < size(polys); i++) {
  fprintf(out, "%s, ", polys[i]);
}
fprintf(out, "%s" + newline + "}." + newline, polys[size(polys)]);

list aux = auxU, auxV;
list vars = z, y, x;
list params = v, u;

list Auxiliary = aux;
list Paras = params;
	
ideal G;
list Modcgs;
list my_res;


(my_res, G, Modcgs) = genMCCGB(polys, ideal(), list(), vars, params, aux, RingVar, out);

showMCCGB(my_res, out);
fprintf(out, "%s" + newline, StringCGB(G));
fprintf(out, "%s" + newline, StringModCGS_mod(Modcgs));
fprintf(out, "The size of CGB is: %s"+newline, string(size(G)));
fprintf(out, "The size of MCCGB is: %s"+newline, string(size(my_res)));
	
close(out);

