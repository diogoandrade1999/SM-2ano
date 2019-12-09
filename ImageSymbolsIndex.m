function [Symb,ImIndex] = ImageSymbolsIndex(Image)
  [N,M]=size(Image);
  n=1;
  Symb(n,1)=Image(1,1);
  
  for k=2:N
    for j=1:M
      if sum(Symb==Image(k,j))==0
        n=n+1;
        Symb(n,1)=Image(k,j);
      end
    end
  end

  ImIndex = uint8(zeros(N,M);
  for n=1:length(Symb)
    ImIndex(Image==Symb(n)) = n;
  end
end