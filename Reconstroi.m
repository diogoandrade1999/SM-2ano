function [x,Ta] = Reconstroi(X,f)
    X = ifftshift(X);
    N = length(X);
    x = ifft(X)*N;
    fa = f(end)*2;
    Ta = 1/fa;
    t = [0 : N-1]'*Ta;
    plot(t,x);
    xlabel('Tempo (seg)');
    ylabel('Sinal x(t)');
endfunction