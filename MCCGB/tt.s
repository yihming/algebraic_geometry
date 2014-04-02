// Example 5.1 in D. Kapur, Y. Sun and D. Wang, "An Efficient Method for Computing Comprehensive Groebner Bases", ISSAC 2011.
LIB "mcgb.lib";
LIB "mcgbcheck.lib";
	
link out = "new_test.mp";
exportto(Top, out);
open(out);

int dgb_mode = 1;
exportto(Top, dgb_mode);
	
ring r = (0, a, b, c), (x, y), lp;

ideal polys = ax-b, by-a, cx2-y, cy2-x;
	
fprintf(out, "F = {");
int i;
for (i = 1; i < size(polys); i++) {
  fprintf(out, "%s, ", polys[i]);
}
fprintf(out, "%s" + newline + "}." + newline, polys[size(polys)]);

ideal G;
list Modcgs;
list mccgb;

(G, Modcgs) = cgb_mod(polys, ideal(), list(), out);
list M = mcgbMain(ideal(), list(), polys);

string reason;
int is_valid;

/*
(reason, is_valid) = check_validity(G, M, Modcgs, out);
if (is_valid) {
  print("The result is a cgb.");
} else {
  print(reason);
}
*/


close(out);
