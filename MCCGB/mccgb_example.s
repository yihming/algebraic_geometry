LIB "mccgb.s";

link out = "mccgb_example.mp";
open(out);

ring RingVar = (0, a, b, c), (u, v, x, y), lp;
ring RingAll = 0, (u, v, x, y, a, b, c), lp  ;

ideal polys = ax2y+a+3b2, abxy-acxy+abx+5c ;

list aux = u, v;
list vars = x, y;
list params = a, b, c;

ideal G;
list Modcgs;
list my_res;

(my_res, G, Modcgs) = genMCCGB(polys, ideal(), list(), vars, params, aux, RingAll, RingVar, out);

showMCCGB(my_res, out);
	
close(out);

