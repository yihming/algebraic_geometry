//LIB "random.lib";
LIB "cgb_mod.lib"		;

// The output file name.
link out = "sim.mp";
system("--no-warn", 1);
system("--ticks-per-sec", 1000);

set_global_rings()		;

exportto(Top, out)	;
	
ring R = (0, a, b), (x, y), Dp	;
ideal polys = ax2y+1, bxy+abx+b	;

ideal null_ideal = 0		;
list nonnull_list = list()		;

ideal G				;
list Modcgs			;

(G, Modcgs) = cgb_mod(polys, null_ideal, nonnull_list, 1, out) ;

list all_polys = idealToList(G) ;

// Print the original KSWCGB.
fprintf(out, "--------------- KSW ----------------" + newline);
fprintf(out, "%s" + newline, StringModCGS_mod(polys, Modcgs, 0));
G = sortSetAsce(G);
fprintf(out, "%s" + newline, StringCGB(G, all_polys));

close(out);
