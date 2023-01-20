startup_rvc;

%transformation matrix of antromorphic arm
%antromorphic arm is a 3DOF robot consisting of 3 revolute joints, resembling a human arm (shoulder, elbow, wrist)

alfa1=sym('pi/2');
q1=sym('q1');
Z1r=trotz(q1);
X1r=trotx(alfa1);
T10=Z1r*X1r;

a2=sym('a2');
q2=sym('q2');
Z2r=trotz(q2);
X2t=transl(a2,0,0);
T21=Z2r*X2t;

a3=sym('a3');
q3=sym('q3');
Z3r=trotz(q3);
X3t=transl(a3,0,0);
T32=Z3r*X3t;

T30=T10*T21*T32
simplify(T30)
