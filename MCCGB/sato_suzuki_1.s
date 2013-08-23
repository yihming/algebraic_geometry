LIB "mccgb.s";

link out = "sato_suzuki_1.mp";
open(out);

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

