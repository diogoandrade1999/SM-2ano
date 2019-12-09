function Simbolos = Alfabeto1(Texto)
  N=length(Texto);
  n=1;
  Simbolos(n,1)=Texto(1);
  
  for k=2:N
    if sum(Simbolos==Texto(k))==0
      n=n+1;
      Simbolos(n,1)=Texto(k);
    end
  end
end