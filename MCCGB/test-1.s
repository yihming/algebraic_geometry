LIB "random.lib";
LIB "mcgb.lib";
LIB "mcgbcheck.lib";

link out = "test-1.mp";
exportto(Top, out);
open(out);

int debug_mode = 0;
exportto(Top, debug_mode);
	
ring r = (0, u, v), (y, x, z), lp;

ideal polys = (u-v)*y + vx + (u+v)*z,
	(u+v)*y + (-u+v)*x + (-v)*z;

fprintf(out, "F = {");
int i;
for (i = 1; i < size(polys); i++) {
  fprintf(out, "%s, ", polys[i]);
}
fprintf(out, "%s" + newline + "}." + newline, polys[size(polys)]);

ideal G				;
list Modcgs;

(G, Modcgs) = cgb_mod(polys, ideal(), list(), out);

fprintf(out, "%s" + newline, StringModCGS_mod(Modcgs));
	
fprintf(out, "%s" + newline, StringCGB(G));

	/*
setring @RP			;
def F = imap(@R, polys)		;
option(redSB)			;
def RGB = std(F)		;
setring @R			;
def RGB = imap(@RP, RGB)		;
fprintf(out, "RGB = [")			;
fprintf(out, "%s", RGB)			;
fprintf(out, "].")			;
*/
	
debug_mode = 0;

int running_time = 30;

list M_list;

while (running_time > 0) {
  list M, Modcgs_new;
  (M, Modcgs_new) = mcgbMain(ideal(), list(), polys);
  //(M, Modcgs_new) = mcgbMainProvisional(G, Modcgs) ;
  if (size(M_list) == 0 || !listContainsList(M_list, M)) {
    string dull;
    int flag;
    (dull, flag) = check_validity(G, M, Modcgs, Modcgs_new, out);
    if (flag) {
      M_list = insert(M_list, M, size(M_list));
    } else {
      fprintf(out, "WRONG!");
    }
  }

  running_time = running_time - 1;
}

for (i = 1; i <= size(M_list); i++) {
  fprintf(out, "=========================" + newline);
  fprintf(out, "M_%s is"+newline, string(i));
  showMCGB(M_list[i], out);
}

printf(string(size(M_list)));
	
close(out);

