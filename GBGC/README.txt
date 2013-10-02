//Please see this example file to use the functions.
//The main function is GBGC(polys, RingVar)
//Input: polys----- the generator of an polynomial ideal
//       RingVar----- a (polynomial) ring 
//Output: A Groebner basis of the input ideal.

system("--ticks-per-sec",1000);

//load the files
LIB "d:\\GBGCnews.s";

//the polynomial ring
ring RingVar=(0),(x,y,z,t,u,v), dp;

//initial polys
ideal polys = 2x2+2y2+2z2+2t2+2u2+v2-v, xy+yz+2zt+2tu+2uv-u, 2xz+2yt+2zu+u2+2tv-t,
 2xt+2yu+2tu+2zv-z, t2+2xv+2yv+2zv-y, 2x+2y+2z+2t+2u+v-1;

//initialize timer
rtimer=0; 
int aaa=rtimer;

//main function
list G = GBGC(polys, RingVar);

print(newline + "time: "+string(rtimer-aaa) + newline);
//size(G);

//verify whether the output is a GB
//VerifyGB(polys, G);
