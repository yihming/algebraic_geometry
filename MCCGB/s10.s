LIB "mcgb.lib";
LIB "mcgbcheck.lib";

link out = "s10.mp";
exportto(Top, out);
open(out);

int debug_mode = 1;
exportto(Top, debug_mode);
	
ring r = (0, r1, z), (s1, s2, c1, c2, l), lp;

ideal polys = s1*s2*l-c1*c2*l-c1+r1 ,
	-s1*c2*l-s1-c1*s2*l+z	    ;
	(s1)^2+(c1)^2-1		;
	(s2)^2+(c2)^2-1;

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

debug_mode = 0;

int running_time = 10;

list M_list;

while (running_time > 0) {
  list M, Modcgs_new;
  (M, Modcgs_new) = mcgbMain(ideal(), list(), polys);
  if (size(M_list) == 0 || !listContainsList(M_list, M)) {
    string dull						      ;
    int flag			;
    (dull, flag) = check_validity(G, M, Modcgs, Modcgs_new, out) ;
    if (flag) {
      M_list = insert(M_list, M, size(M_list));
    } else {
	fprintf(out, "WRONG!")	;
    }
  }

  running_time = running_time - 1 ;
}

for (i = 1; i <= size(M_list); i++) {
  fprintf(out, "=============================="+newline) ;
  fprintf(out, "M_%s is "+newline, string(i)) ;
  showMCGB(M_list[i], out)		       ;
}

printf(string(size(M_list)));
close(out);

