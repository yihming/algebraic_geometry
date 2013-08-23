LIB "mccgb.s";

link out = "sato_suzuki_3.mp";
open(out);

ring RingVar = (0, a, b, c, d), (auxU, auxV, x(1), x(2), y(1), y(2), s), lp;

ideal polys = a*x(1)^2 + b * y(1), c*y(2)^2 + d * x(2), (x(1) - x(2))^2 + (y(1) - y(2))^2 - s,
	      4*a*c*x(1)*y(2) - b*d, 2*a*x(1)*y(1) - 2*a*x(1)*y(2) - b*x(1) + b*x(2);

list aux = auxU, auxV;
list vars = x(1), x(2), y(1), y(2), s;
list params = a, b, c, d;

list Auxiliary = aux;

fprintf(out, "F = {");
int i;
for (i = 1; i < size(polys); i++) {
  fprintf(out, "%s, ", polys[i]);
}
fprintf(out, "%s" + newline + "}." + newline, polys[size(polys)]);

	
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

