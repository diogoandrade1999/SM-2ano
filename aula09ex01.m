%ex1
f = [14 64 5 10 7]'/100;
Entropia = -f' * log2(f)
nBits = [2 1 4 3 4]';
Numbits = f' * nBits