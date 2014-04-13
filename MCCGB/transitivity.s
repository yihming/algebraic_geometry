LIB "mccgb.lib";

link out = "transitivity.mp";
open(out);

ring r = (0, a, b, c), x, lp;

ideal G = ac2-a, a3-b3c, bx+a3-b3c;

list Modcgs;
	
list Branch1;
Branch1[1] = ideal(bc2-b);
Branch1[2] = list(ac2-a);
Branch1[3] = list(list(ac2-a, 0));
Modcgs = insert(Modcgs, Branch1, size(Modcgs));

list Branch2;
Branch2[1] = ideal(b, ac2-a);
Branch2[2] = list(a3-b3c);
Branch2[3] = list(list(a3-b3c, 0));
Modcgs = insert(Modcgs, Branch2, size(Modcgs));

list Branch3;
Branch3[1] = ideal(ac2-a, a3-b3c);
Branch3[2] = list(b);
Branch3[3] = list(list(bx, a3-b3c));
Modcgs = insert(Modcgs, Branch3, size(Modcgs));
	
fprintf(out, "%s" + newline, StringCGB(G));
fprintf(out, "%s" + newline, StringModCGS_mod(Modcgs));

list mccgb;
mccgb = genMCCGB(G, Modcgs, out);

fprintf(out, "%s" + newline, StringCGB(G));
showMCCGB(mccgb, out);

// Check the validity of mccgb.
string err_msg;
int flag;
(err_msg, flag) = check_validity(G, mccgb, Modcgs, out);
if (flag) {
	fprintf(out, newline + "========================");
	fprintf(out, "It is Comprehensive and Minimal indeed!");
} else {
	fprintf(out, newline + "========================");
	fprintf(out, "It is not valid, since %s.", err_msg);
}

close(out);
