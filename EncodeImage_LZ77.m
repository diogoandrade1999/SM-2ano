function [Symb,Steam] = EncodeImage_LZ77(Image,Nw,Mw)
  [Symb,ImIndex] = ImageSimbolsIndex(Image);
  [N,M] = size(Image);
  Buffer = uint8(zeros(1,N*M));
  
  for n=1:N
    Buffer81,(1:M)+M*(n-1)) = ImIndex(n,1:M);
  end
  
  Buffer = Buffer';
  Stream(1:Nw,1) = Buffer(1:Nw,1);
  Max_j = N*M;
  k = Nw+1;
  j = Nw+1;
  
  while j <= Max_j
    FoundFlag = 1;
    ObsWndNotOver = 1;
    m = 1;
    Cur_i = 0;
    
    While FoundFlag && ObsWndNotOver
      SearchStr = Buffer(j:min([8j+(m-1)) Max_j]));
      SlidingWnd = Buffer((j-Nw):(j-1));
      i = FindSequenceInWindow(SearchStr',SlidingWnd');
      
      if i == 0
        FoundFlag = 0;
      else
        Cur_i = i;
        m = m+1;
        
        if(m>Mw) || ((j+(m-1)>Max_j)
          ObsWndNotOver = 0;
          m = Mw;
        end
      end
    end
  
    m = m+1;
    
    if m > 1
      Stream(k,1) = uint8(Cur_i + 128);
      k = k+1;
      Stream(k,1) = uint8(m);
      k = k+1;
      j = +m;
    else
      Steam(k,1) = SearchStr(1);
      k = k+1;
      j = j+1;
    end
  end
end