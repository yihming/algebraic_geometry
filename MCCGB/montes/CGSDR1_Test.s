system("--min-time", "0.001"); // minimum time measured, i.e. 0.001 seconds
system("--ticks-per-sec", 1000); // ticks per seconds, i.e. how often
"Time expressed in miliseconds";

"CGSDR1_Test.sg";
"Reading the library grobcov.lib";
LIB "grobcovG.lib";
" ";

"Begin Problem S03";
ring R=(0,a,b),(x),dp;
"ring R=(0,a,b),(x),dp";
ideal S03=ax,bx;
"System S03="; S03;
ideal W=a+b-1; 
"W="; W;
def S03GC=cgsdr(S03,"nonull",W,"comment",1);
"cgsdr(S03,nonnull,W,comment,1)="; S03GC;
"End Problem S03";
" ";

"Begin Problem S04";
if (defined(R)==1){kill R;}
ring R=(0,a,b,c),(x,y,z), dp;
"ring R=(0,a,b,c),(x,y,z), dp";
ideal S04=x+y+z-1, x-y+2*z+1, a*x+b*y+c*z;
"System S04="; S04;
def S04GC=cgsdr(S04,"comment",1);
"cgsdr(S04,comment,1)="; S04GC;
"End Problem S04";
" ";


"Begin Problem S05";
if (defined(R)==1){kill R;}
"D. Kapur,  An Approach for Solving Systems of parametric";
"Polynomial Equations.";
"In: Principles and Practices of Constraints Programming,";
"Saraswat and Van Hentenryck eds., MIT Press: 217-244 (1995).";
ring R=(0,a1,a2,a3,a4),(x1,x2,x3,x4),dp;
"ring R=(0,a1,a2,a3,a4),(x1,x2,x3,x4),dp";
short=0;
ideal S05=x4-a4+a2, x1+x2+x3+x4-a1-a3-a4, x1*x3*x4-a1*a3*a4, x1*x3+x1*x4+x2*x3+x3*x4-a1*a4-a1*a3-a3*a4;
"System S05="; S05;
def S05GC=cgsdr(S05,"comment",1);
"cgsdr(S05,comment,1)="; S05GC;
"End Problem S05";
" ";

"Begin Problem S09";
"A. Montes, Linear system. ";
"New algorithm for discussing Gr�bner bases with parameters.";
"JSC, 33:  183-208 (2002)."; 
if (defined(R)==1){kill R;}
if (defined(S09)==1){kill S09;}
ring R=(0,a,b,c),(x,y,z), dp;
"ring R=(0,a,b,c),(x,y,z), dp";
short=0;
ideal S09=x+c*y+b*z+a, c*x+y+a*z+b, b*x+a*y+z+c;
"System S09="; S09;
def S09GC=cgsdr(S09,"comment",1);
"cgsdr(S09,comment,1)="; S09GC;
"End Problem S09";
" ";

"Begin Problem S10";
"Simple robot: A. Montes,";
"New algorithm for discussing Gr�bner bases with parameters,"; 
"JSC, 33: 183-208 (2002).";
if (defined(R)==1){kill R;}
ring R=(0,r,z),(s1,c1,s2,c2,l), lp;
"ring R=(0,r,z),(s1,c1,s2,c2,l), lp";
ideal S10=r-c1-l*c1*c2+l*s1*s2,
          z-s1-l*c1*s2-l*s1*c2,
          c1^2+s1^2-1,
          c2^2+s2^2-1;
"System S10="; S10;
def S10gc=cgsdr(S10,"comment",1);
"cgsdr(S10,comment,1)="; S10gc;
"End Problem S10";
" ";

"Begin Problem S11";
"M. Coste. Personal communication from:";
"Classifying serial manipulators: Computer Algebra and Geometric Insight.";
"Plenary Talk. Proc. EACA-2004,: 323-323 (2004)."; 
short=0;
if (defined(R)==1){kill R;}
ring R=(0,r,Z,r2,d3,d4),(t),dp;
"ring R=(0,r,Z,r2,d3,d4),(t),dp";
short=0;
ideal S11=(d4*d3+r2^2-d4*d3*r2^2+d4*d3*r-d4^3*d3+d4^2*d3^2-d4*d3^3+Z-r)*t^4+(-2*r2*d4*r+2*r2*d4^3+2*r2*d4+2*r2*d4*d3^2-4*r2*d3*d4^2+2*r2^3*d4)*t^3+(4*d4^2*r2^2+2*Z-2*r+2*r2^2+4*d4^2-2*d4^2*d3^2)*t^2+(2*r2*d4-2*r2*d4*r+2*r2^3*d4+2*r2*d4^3+2*r2*d4*d3^2+4*r2*d3*d4^2)*t+Z-r+d4^2*d3^2-d4*d3*r-d4*d3+d4^3*d3+d4*d3^3+r2^2+d4*d3*r2^2;
"System S11="; S11;
def S11GC=cgsdr(S11,"comment",1);
"cgsdr(S11,comment,1)="; S11GC;
"End Problem S11";
" ";

"Begin Problem S12";
"M. Rychlik,";
"Complexity and Applications of Parametric Algorithms of Computational Algebraic Geometry.";
"In: Dynamics of Algorithms, R. de la Llave, L. Petzold and J. Lorenz eds.";
"IMA Volumes in Mathematics and its Applications, Springer-Verlag 118: 1-29 (2000).";
"(18. Mathematical robotics: Problem 4, two-arm robot)."; 
ring R=(0,a,b,l2,l3),(c3,s3,c1,s1), dp;
"ring R=(0,a,b,l2,l3),(c3,s3,c1,s1), dp";
short=0;
ideal S12=a-l3*c3-l2*c1,b-l3*s3-l2*s1,c1^2+s1^2-1,c3^2+s3^2-1;;
"System S12="; S12;
//def S12GC=cgsdr(S12,"comment",1);
//"cgsdr(S12,comment,1)="; S12GC;
def S12GC0=cgsdr(S12,"comment",1);
"cgsdr(S12,comment,1)="; S12GC0;
"End Problem S12";
" ";

"Begin Problem S13";
"A. Suzuki, Y. Sato, An Alternative Approach to Comprehensive Gr�bner Bases.";
"JSC, 36:  649-667 (2003).";
"(4. Examples of computation: Example 2 in Proc. ISSAC 2003).";
if (defined(R)==1){kill R;}
ring R=(0,a,b,c),(x,y),dp;
"ring R=(0,a,b,c),(x,y),dp";
short=0;
ideal S13=a*x^2*y+a+3*b^2,a*(b-c)*x*y+a*b*x+5*c;
"System S13="; S13;
def S13GC=cgsdr(S13,"comment",1);
"cgsdr(S13,comment,1)="; S13GC;
"End Problem S13";
" ";

"Begin Problem S15";
"ROMIN Robot: M.J. Gonz�lez-L�pez, T. Recio.";
"The ROMIN inverse geometric model and the dynamic evaluation method.";
"In: Computer Algebra in Industry, A.M. Cohen ed., John Wiley & Sons:";
"117-141 (1993).";
"S. Delli�re, Triangularisation de syst�mes constructibles."; 
"Application � l �valuation dynamique.";
"Th�se Doctorale, Universit� de Limoges: 211-223 (1995).";
if (defined(R)==1){kill R;}
ring R=(0,l2,l3,a,b,c,d),(c3,s3,c2,s2,c1,s1),dp;
"ring R=(0,l2,l3,a,b,c,d),(c3,s3,c2,s2,c1,s1),dp";
short=0;
ideal S15=a+d*s1,b-d*c1,l2*c2+l3*c3-d,l2*s2+l3*s3-c,s1^2+c1^2-1,s2^2+c2^2-1,s3^2+c3^2-1;
"System S15="; S15;
def S15GC=cgsdr(S15,"comment",1);
"cgsdr(S15,comment,12)="; S15GC;
"End Problem S15";
" ";

"Begin Problem S16";
"Tensegrity problem from: D. Orden, M. de Guzm�n.";
"Finding tensegrity structures: geometric and symbolic approaches.";
"Proc. EACA-2004: 167-172 (2004)."; 
if (defined(R)==1){kill R;}
ring R=(0,x, y, z),(w2,w3,w4,w5),lp;
"ring R=(0,x, y, z),(w2,w3,w4,w5),lp";
short=0;
ideal S16=-z*w5+w5*x-w5*y, -z*w5+w4*z, w4*x+y*w4-w4-z*w5+w5, w3*y-w3+y*w4-2*z*w5+w5, x*w3-y*w4-z*w3, w2*z-w2+z*w3+2*z*w5-w5, w2*y-w2+w5*y+2*z*w5-w5, w2*x-w2+z*w3+w5*y+2*z*w5-w5;
"System S16="; S16;
def S16GC=cgsdr(S16,"comment",1);
"cgsdr(S16,comment,1)="; S16GC;
"End Problem S16";
" ";

"Begin Problem S19";
"Singular points of a conic.";
if (defined(R)==1){kill R;}
ring R=(0,b,c,d,e,f),(x,y),dp;
"ring R=(0,b,c,d,e,f),(x,y),dp";
short=0;
ideal S19=x^2+b*y^2+2*c*x*y+2*d*x+2*e*y+f, 2*x+2*c*y+2*d, 2*b*y+2*c*x+2*e;
"System S19="; S19;
def S19GC=cgsdr(S19,"comment",1);
"cgsdr(S19,comment,1)="; S19GC;
"End Problem S19";
" ";

"Begin Problem S20";
"A. Montes.";
"Algebraic Solution of the load-flow problem for a 4-nodes electrical network."; 
"Math. and Comput. in Simul., 45: 163-174 (1998)."; 
if (defined(R)==1){kill R;}
ring R=(0,P1,Q1,P2,Q2),(e2,f2,e3,f3),dp;
"ring R=(0,P1,Q1,P2,Q2),(e2,f2,e3,f3),dp";
short=0;
ideal S20=14-12*e2-110*f2-2*e3-10*f3-P1, 2397-2200*e2+240*f2-200*e3+40*f3-20*Q1, 16*e2^2-4*e2*e3-20*e2*f3+20*e3*f2+16*f2^2-4*f2*f3-12*e2+110*f2-P2, 2599*e2^2-400*e2*e3+80*e2*f3-80*e3*f2+2599*f2^2-400*f2*f3-2200*e2-240*f2-20*Q2;
"System S20="; S20;
def S20GC0=cgsdr(S20,"comment",1);
"cgsdr(S20,comment,1)="; S20GC0;
"End Problem S20";
" ";
