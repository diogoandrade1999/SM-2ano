function [Simbolos, Frequencia] = Alfabeto2(Texto)
  N = length(Texto);
  n=1;
  Simbolos(n,1)= Texto(1);
  Frequencia(n,1) = sum(Texto==Simbolos(n))/N*100;
  
  for k=2:N
    if (sum((Simbolos) == Texto(k))==0)
      n=n+1;
      Simbolos(n,1)=Texto(k);
      Frequencia(n,1)=sum(Texto==Simbolos(n))/N*100;
    end
  end
end