%A=2;f=2
T = 0.5;
Ta = 5*T/1000;
t0 = [0 : Ta : (5*T-Ta)]';
x = 2*sin(4*pi*t0);
%A=1;f=5
T = 0.2;
Ta = 2*T/1000;
t1 = [0 : Ta : (5*T-Ta)]';
y = sin(10*pi*t1+pi/2);
%Vmax=1.95;f1=3;f2=4;f=f2-f1=1
T = 1;
Ta = 1*T/1000;
t2 = [0 : Ta : (5*T-Ta)]';
z = sin(6*pi*t2)+sin(8*pi*t2);
%Vmax=1.93;f1=3;f2=4;f=f2-f1=1
T = 1;
Ta = 1*T/1000;
t3 = [0 : Ta : (5*T-Ta)]';
w = sin(6*pi*t3)+sin(8*pi*t3+0.1);
%Vmax=1.93;f1=3;f2=3.5;f3=4;f=f2-f1=f3-f2=0.5
T = 2;
Ta = 0.2*T/1000;
t4 = [0 : Ta : (5*T-Ta)]';
q = sin(6*pi*t4)+sin(7*pi*t4)+sin(8*pi*t4);

subplot(3,2,1), plot(t0,x,'-r')
xlabel('Tempo (seg)');
ylabel('x');
legend('x');
subplot(3,2,2), plot(t1,y,'--','LineWidth',2,'color',[0 0 0.8])
xlabel('Tempo (seg)');
ylabel('y');
legend('y');
subplot(3,2,3), plot(t2,z,'.-g')
xlabel('Tempo (seg)');
ylabel('z');
legend('z');
subplot(3,2,4), plot(t3,w,'y','LineWidth',2)
xlabel('Tempo (seg)');
ylabel('w');
legend('w');
subplot(3,2,5), plot(t4,q,'k','LineWidth',2)
xlabel('Tempo (seg)');
ylabel('q');
legend('q');