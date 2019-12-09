function potencia = calpot(x,Ta,T)

t = [0 : Ta : (5*T-Ta)]';
N=T/Ta; %numero de amostras
sum = 0;

for c=1:N
    sum = sum + x(c)^2;
end

potencia = 1/T * sum * Ta;
 
%OUTRA MANEIRA
%potencia = (Ta/T)* x' * x; %assumindo que x contem um periodo do sinal

%OU
%N = length(x);
%potencia = (1/N) * x' *x;

end