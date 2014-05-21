LIB "mcgb.lib";
LIB "mcgbcheck.lib";

link out = "weispfenning_4.mp";
exportto(Top, out);
open(out);

int debug_mode = 1;
exportto(Top, debug_mode);

ring r = (0, v, u), (z, y, x), lp;

ideal polys = y + u*x + v, u*y + x + v;

fprintf(out, "F = {");
int i;
for (i = 1; i < size(polys); i++) {
  fprintf(out, "%s, ", polys[i]);
}
fprintf(out, "%s" + newline + "}." + newline, polys[size(polys)]);

ideal G;
list Modcgs;

(G, Modcgs) = cgb_mod(polys, ideal(), list(), out);
fprintf(out, "%s" + newline, StringModCGS_mod(Modcgs));

fprintf(out, "%s" + newline, StringCGB(G));

list M_list;

debug_mode = 0;
int run = 10;
int i	    ;
	
for (i = 1; i <= run; i++) {
  list M, Modcgs_new;
  (M, Modcgs_new) = mcgbMain(ideal(), list(), polys);
  if (size(M_list) == 0 || !listContainsList(M_list, M)) {
    if (check_validity(G, M, Modcgs, Modcgs_new, out)) {
      M_list = insert(M_list, M, size(M_list));
    } else {
      printf("Not mcgb!");
    }
  }
}

	
close(out);
