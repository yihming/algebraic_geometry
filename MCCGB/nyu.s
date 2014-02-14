LIB "mccgb.lib";

link out = "nyu.mp";
open(out);

ring r = (0, u(12), u(13), u(22), u(23), u(32), u(33), v(11), v(12), v(13),
	v(21), v(22), v(23), v(31), v(32), v(33), b, l), (y(1), z(1), y(2), z(2), y(3), z(3)), dp ;
	
ideal polys = (u(12)*y(1)+u(13)*z(1)-v(11))^2+(y(1)-v(12))^2+(z(1)-v(13))^2-b,
(u(22)*y(2)+u(23)*z(2)-v(21))^2+(y(2)-v(22))^2+(z(2)-v(23))^2-b,
(u(32)*y(3)+u(33)*z(3)-v(31))^2+(y(3)-v(32))^2+(z(3)-v(33))^2-b,
(u(12)*y(1)+u(13)*z(1)-u(22)*y(2)-u(23)*z(2))^2+(y(1)-y(2))^2+(z(1)-z(2))^2-l,
(u(12)*y(1)+u(13)*z(1)-u(32)*y(3)-u(33)*z(3))^2+(y(1)-y(3))^2+(z(1)-z(3))^2-l,
(u(32)*y(3)+u(33)*z(3)-u(22)*y(2)-u(23)*z(2))^2+(y(3)-y(2))^2+(z(3)-z(2))^2-l;
	
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

fprintf(out, "%s" + newline, StringCGB(G));
fprintf(out, "%s" + newline, StringModCGS_mod(Modcgs));

mccgb = genMCCGB_topdown(G, Modcgs, out);
	
fprintf(out, "%s" + newline, StringCGB(G));
showMCCGB(mccgb, out);
fprintf(out, "The size of CGB is: %s"+newline, string(size(G)));
fprintf(out, "The size of M is: %s"+newline, string(size(mccgb)));
fprintf(out, "%s" + newline, StringModCGS_mod(Modcgs));

// Check the validity of my_res;
string err_msg;
int flag;
(err_msg, flag) = check_validity(G, mccgb, Modcgs, out);
if (flag) {
    fprintf(out, newline + "================================") ;
    fprintf(out, "It is Comprehensive and Minimal indeed!");
} else {
    fprintf(out, newline + "================================") ;
    fprintf(out, "It is not valid, since %s.", err_msg);
}

	
close(out);

