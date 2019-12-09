Ta = 0.1;
t = [0 : Ta : 10-Ta];
x = sin(2*pi*t);
Espetro(x,Ta);

figure();
Ta = 0.05;
t = [0 : Ta : 5-Ta];
y = sin(10*pi*t) + cos(12*pi*t) + cos(14*pi*t-pi/4);
Espetro(y,Ta);

figure();
Ta = 0.01;
t = [0 : Ta : 5-Ta];
z = zeros(size(t));
z(1:100) = 1;
z(201:300) = 1;
z(401:500) = 1;
Espetro(z,Ta);

figure();
Ta = 0.01;
t1 = [0 : Ta : 0.25-Ta];
t2 = [0.25 : Ta : 0.75-Ta];
t3 = [0.75 : Ta : 1-Ta];
q1 = (1/0.25)*t1;
q2 = (1/0.25)*t2 +2;  %-(1/25)*0.5+b=0 <=> b = 0.5/0.25 = 2
q3 = (1/0.25)*t3 -4;  %(1/25)*1+b=0 <=> b = -1/0.25 = -4
qp = [q1 q2 q3];
tp = [t1 t2 t3];
q = [qp qp qp qp qp];
t = [0 : Ta : (5-Ta)]';
Espetro(q,Ta);