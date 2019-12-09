function i = FindSequenceInWindow(Seq,Win)
  i = strfind(Win,Seq);
  
  if isempty(i)
    i = 0;
  else
    i = i(1);
  end
end