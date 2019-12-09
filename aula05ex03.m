%Q = [N*M][N*M][N*M]
Q = imread('Parede.jpg');
Q = 255-Q;
image(Q);
delta = 2;
T = Q(1: delta : end, 1 : delta : end, :);
figure();
image(T);
delta = 4;
T = Q(1: delta : end, 1 : delta : end, :);
figure();
image(T);
delta = 8;
T = Q(1: delta : end, 1 : delta : end, :);
figure();
image(T);
delta = 16;
T = Q(1: delta : end, 1 : delta : end, :);
figure();
image(T);

y=[0 0 1];
size(y)