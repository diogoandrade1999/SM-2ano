load Mensagem;
Simbolos = Alfabeto1(Mensagem)
[Simbolos Frequencia] = Alfabeto2(Mensagem)

%ex3
%Nbits=4*304(nº char da msg)=1216;

%Simbolos | codigo
%   Q     | 0000
%   W     | 0001
%   S     | 0010
%   D     | 0011
%   X     | 0100
%   Z     | 0101
%   V     | 0110
%   R     | 0111
%   C     | 1000

%ex4

%Simbolos | codigo
% Q(40,1%)| 0
% W(13.5%)| 10
% S(12.8%)| 110
% D(8.9%) | 1110
% X(8.2%) | 11110
% Z(6.3%) | 111110
% V(5.3%) | 1111110
% R(4.6%) | 11111110
% C(0.3%) | 111111110

[NewFreq,i] = sort(Frequencia,'descend');
NewSymb = Simbolos(i);
NewFreq
NewSymb

NumBits=NumBits(Mensagem)