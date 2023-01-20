startup_rvc;
%transformation matrix of stanford manipulator using DH tables
%stanford manipulator is a 6DOF robot consisting of a spherical wrist
%attached to a spherical arm

%transformation matrix of a spherical arm is given as T30
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
simplify(T30);

%transformation matrix of a spherical wrist is given with T63
alfa4=sym('-pi/2');
q4=sym('q4');
Z4r=trotz(q4);
X4r=trotx(alfa4);
T43=Z4r*X4r;

alfa5=sym('pi/2');
q5=sym('q5');
Z5r=trotz(q5);
X5r=trotx(alfa5);
T54=Z5r*X5r;

d6=sym('d6');
q6=sym('q6');
Z6r=trotz(q6);
Z6t=transl(0,0,d6);
T65=Z5r*Z6t;

T63=T43*T54*T65;
simplify(T63);

%finally the transformation matrix of a stanford manipulator is given as a
%product of two matrices found above
T60=T30*T63;
disp('stanford manipulator transformation matrix is given with:')
simplify(T60)
 
