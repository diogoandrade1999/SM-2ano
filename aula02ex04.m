f1 = 1100;
f2 = 1200;
f3 = 3000;
fase = rand(3,1)* 2 * pi - pi;

Ta = 1e-6;
t = [0 : Ta : 1]';

x1 = sin(2*pi*f1*t + fase(1));
x2 = sin(2*pi*f2*t + fase(2));
x3 = sin(2*pi*f3*t + fase(3));
x = x1+x2+x3;

p1 = calpot(x1,Ta,1/f1); %potencia da primeira onda
p2 = calpot(x2,Ta,1/f2);
p3 = calpot(x3,Ta,1/f3);
p = calpot(x,Ta,1/(f2-f1));

disp([p1,p2,p3]);
disp(p);
subplot(2,2,1), plot(t,x1,'r')
subplot(2,2,2), plot(t,x2,'g')
subplot(2,2,3), plot(t,x3,'b')
subplot(2,2,4), plot(t,x,'y')