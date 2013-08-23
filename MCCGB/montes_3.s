LIB "mccgb.s";

link out = "montes_3.mp";
open(out);

ring RingVar = (0, a, b, c), (auxU, auxV, x, y), lp;

ideal polys = a*x^2*y + a + 3*b^2, a*b*x*y - a*c*x*y + a*b*x + 5*c;

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

