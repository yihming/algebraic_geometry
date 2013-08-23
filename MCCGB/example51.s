LIB "mccgb.s";

link out = "example51.mp";
open(out);

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
list my_res;

(my_res, G, Modcgs) = genMCCGB(polys, ideal(), list(), vars, params, aux, RingVar, out);

showMCCGB(my_res, out);
fprintf(out, "%s" + newline, StringCGB(G));
fprintf(out, "%s" + newline, StringModCGS_mod(Modcgs));
fprintf(out, "The size of CGB is: %s"+newline, string(size(G)));
fprintf(out, "The size of MCCGB is: %s"+newline, string(size(my_res)));
	
close(out);

