Ta=1e-3;
[x,t]=GeraSinal(10000,Ta);
[X,f]=Espetro(x,Ta);
F=zeros(size(x));
F(f>=2)=1;
F(f>2)=0;
Y=X.*F; %Aplicaçao do filtro
[y,Ta]=Reconstroi(Y,f);
plot(t,y);
xlabel('Tempo (seg)');