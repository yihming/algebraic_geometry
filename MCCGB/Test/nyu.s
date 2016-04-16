// This is an example from a Math PhD student in NYU.
LIB "simulation.lib"		;

// The output file name.
link out = "nyu.mp";
link dbg_out = "nyu.debug"	;
	
// 0 -- no intermediate debug information is printed to the output file;
// >0 -- otherwise.
int debug_mode = 0;

// Times of running Algorithm 1 to generate different MCGBs.
int sim_times = 15		;

// sim_option = [opt1, opt2, opt3, opt4], where
// opt1 -- 1 if running Algorithm 1; 0 otherwise.
// opt2 -- 1 if running Algorithm 2; 0 otherwise.
// opt3 -- 1 if running Algorithm 3; 0 otherwise.
// opt4 -- 1 if running checking the CGBness of RGB; 0 otherwise.
intvec sim_option = 1, 1, 1, 1	;

// degree reversed lex order.
ring r = (0, u(12), u(13), u(22), u(23), u(32), u(33), v(11), v(12), v(13),
	v(21), v(22), v(23), v(31), v(32), v(33), b, l), (y(1), z(1), y(2), z(2), y(3), z(3)), dp ;
	
ideal polys = (u(12)*y(1)+u(13)*z(1)-v(11))^2+(y(1)-v(12))^2+(z(1)-v(13))^2-b,
(u(22)*y(2)+u(23)*z(2)-v(21))^2+(y(2)-v(22))^2+(z(2)-v(23))^2-b,
(u(32)*y(3)+u(33)*z(3)-v(31))^2+(y(3)-v(32))^2+(z(3)-v(33))^2-b,
(u(12)*y(1)+u(13)*z(1)-u(22)*y(2)-u(23)*z(2))^2+(y(1)-y(2))^2+(z(1)-z(2))^2-l,
(u(12)*y(1)+u(13)*z(1)-u(32)*y(3)-u(33)*z(3))^2+(y(1)-y(3))^2+(z(1)-z(3))^2-l,
(u(32)*y(3)+u(33)*z(3)-u(22)*y(2)-u(23)*z(2))^2+(y(3)-y(2))^2+(z(3)-z(2))^2-l;

ideal null_ideal = 0		;
list nonnull_list = list()	;
	
simulate(null_ideal, nonnull_list, polys, sim_times, out, dbg_out, debug_mode, sim_option) ;
