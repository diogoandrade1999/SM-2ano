function [Symb,Freq] = ImageSymbols(Image)
  [N,M]=size(Image);
  n=1;
  Symb(n,1)=Image(1,1);
  Freq(n,1)=sum(sum(Image==Symb(n)))/(N*M)*100;
  
  for k=2:N
    for j=1:M
      if sum(Symb==Image(k,j))==0
        n=n+1;
        Symb(n,1)=Image(k,j);
        Freq(n,1)=sum(sum(Image==Symb(n)))/(N*M)*100;
      end
    end
  end
end