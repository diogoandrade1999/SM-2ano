function [NumBits,NumBPS] = GeraMensagem(f,CompMesg,nBits)
  pd = makedist('Multinomial','probabilities',f/sum(f));
  Mesg = random(pd,CompMesg,1);
  N = length(f);
  NumBits = 0;
  
  for n=1:N
    NumBits = NumBits + sum(Mesg==n) + nBits(n);
  end
   
  NumBPS = NumBits/CompMesg;
end