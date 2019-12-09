function NumBits = NumBits (Texto)
  [Sym,Freq] = Alfabeto2(Texto);
  [Freq, i] = sort(Freq,'descend');
  Sym = Sym(i);
  NumBits = 0;
  
  for n=1:length(Sym)
    NumBits = NumBits+sum(Texto==Sym(n))*n;
  end
end