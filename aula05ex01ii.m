Ta = 0.05;
x1 = [0 : Ta : 5-Ta]';
x2 = [0 : Ta : 5-Ta]';
y = zeros(length(x2),length(x1));
z = zeros(length(x2),length(x1));

for n=1:length(x1)
    y(:,n) = cos(2*pi*(x1(n)-2*x2));
    z(:,n) = cos(2*pi*sqrt(x1(n)^2+x2.^2));
end
mesh(y);
view(2);
axis equal;
figure();
Espetro2(y,2);
figure();
mesh(z);
view(2);
axis equal;
figure();
Espetro2(z,2);