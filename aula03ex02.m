x = 0;
N = 3;
Ta = 1e-3;
t = [0 : Ta : 6]';

for k=1:N
    x = x + (4/(pi*k)) * sin(k*pi*(n-1)*Ta) * Ta;
end

plot(t,x)