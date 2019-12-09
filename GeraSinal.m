%%random('normal',media,desvio padrao,nº linhas,nº colunas)
%%retangulo--> z(n)=z(n-1)+Φ(n)Ta
%%trapezio--> z(n)=z(n-1)+((Φ(n-1)+Φ(n))/2)Ta

function [x,t] = GeraSinal(N,Ta)
  t=[0 : (N-1)]'*Ta;
  
  phi1=random('normal',0,pi,N,1);
  Iphi1=zeros(N,1);
  
  for n=2:N
    Iphi1(n)=Iphi1(n-1)+(phi1(n)+phi1(n-1))*Ta/2;
  end
  
  phi2=random('normal',0,pi,N,1);
  Iphi2=zeros(N,1);
  
  for n=2:N
    Iphi2(n)=Iphi2(n-1)+(phi2(n)+phi2(n-1))*Ta/2;
  end
  
  x=sin(2*pi*t)+0.5*sin(20*pi*t+10*Iphi1)+0.5*sin(24*pi*t+10*Iphi2);
  
  plot(t,x);
  xlabel('Tempo (seg)');
  grid;
endfunction