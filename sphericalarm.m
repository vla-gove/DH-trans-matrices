startup_rvc;
%transformation matrix of a spherical arm, a 3DOF RRP robot
alfa1=sym('-pi/2');
q1=sym('q1');
Z1r=trotz(q1);
X1r=trotx(alfa1);
T10=Z1r*X1r;

alfa2=sym('pi/2');
q2=sym('q2');
d2=sym('d2');
Z2t=transl(0,0,d2);
Z2r=trotz(q2);
X2r=trotx(alfa2);
T21=Z2t*Z2r*X2r;

d3=sym('d3');
Z3t=transl(0,0,d3);
T32=Z3t;

T30=T10*T21*T32;
simplify(T30)