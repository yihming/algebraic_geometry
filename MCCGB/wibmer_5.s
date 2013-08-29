// Example in Section 5 of [Montes and Wibmer 2010].
LIB "mccgb.s";

link out = "wibmer_5.mp";
open(out);

ring RingVar = (0, a, b), (auxU, auxV, x(2), x(3), y(2), y(3)), dp;

ideal polys = (a-1)*y(2) - b*(x(2)-1), (a-1)*(x(2)+1)+b*y(2),
	      (a+1)*y(3) - b*(x(3)+1), (a+1)*(x(3)-1)+b*y(3),
	      (x(3)-a)^2 + y(3)^2 - (x(2) - a)^2 - y(2)^2;

fprintf(out, "F = {");
int i;
for (i = 1; i < size(polys); i++) {
  fprintf(out, "%s, ", polys[i]);
}
fprintf(out, "%s" + newline + "}." + newline, polys[size(polys)]);

list aux = auxU, auxV;
list vars = x(2), x(3), y(2), y(3);
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

