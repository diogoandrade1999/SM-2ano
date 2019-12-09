Ta = 1/25;
t = [0 : Ta : 1]';
x1 = [-5 : Ta : 5]';
x2 = [-5 : Ta : 5]';

N1 = length(x1);
N2 = length(x2);
N = length(t);

r = zeros(N1,N2);

for n=1:N
    tic;
    for i=1:N1
        r(i,:) = 2*sin(2*pi*sqrt(x1(i)^2+x2.^2)-2*pi*t(n));
    end
    mesh(x1,x2,r); view(2);
    drawnow();
    pause(Ta-toc);
end