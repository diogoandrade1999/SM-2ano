Ta = 0.01;
t = [0 : Ta : 5]';
x = 2*sin(4*pi*t);
y = cos(10*pi*t);
z = x.*y;

t0 = [0 : Ta : 10]';
w = 3*sin(pi*t0) + 2*sin(6*pi*t0);

t1 = [0 : Ta : 5]';
t2 = [0 : Ta : 5]';
N = length(t1);
q = zeros(N,N);

for n=1:N
    q(:,n) = 2*sin(2*pi*(2*t1+t2(n)));
end

subplot(2,2,1), plot(t,x,'-r')
xlabel('Tempo (seg)');
ylabel('x');
legend('x');
subplot(2,2,2), plot(t,y,'--','LineWidth',2,'color',[0 0 0.8])
xlabel('Tempo (seg)');
ylabel('y');
legend('y');
subplot(2,2,3), plot(t,z,'.-g')
xlabel('Tempo (seg)');
ylabel('z');
legend('z');
subplot(2,2,4), plot(t0,w,'y','LineWidth',2)
xlabel('Tempo (seg)');
ylabel('w');
legend('w');

figure;
mesh(t1,t2,q);
view(2); %vista em 2D
colorbar;
xlabel('Tempo (seg)');
ylabel('Tempo (seg)');
zlabel('q(t_1,t_2)');
%cmap = colormap;
%cor de branco a preto
cmap_gray = [[0 : (1/64) : 1]' [0: (1/64) : 1]' [0: (1/64) : 1]'];
colormap(cmap_gray);