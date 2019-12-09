Ta=1e-3;
[x,t]=GeraSinal(10000,Ta);
[X,f]=Espetro(x,Ta);
F=ones(size(x));
F(f>=2)=0;
F(f>2)=1;
R=X.*F; %Aplicaçao do filtro
[r,Ta]=Reconstroi(R,f);
plot(t,r);
xlabel('Tempo (seg)');