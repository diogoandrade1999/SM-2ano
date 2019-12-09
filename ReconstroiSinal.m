function ReconstroiSinal(x,Ta)
    N = length(x);
    y = zeros(100*N,1);
    fa = 1/Ta;
    fs = 100*fa;
    Ts = 1/fs;
    t = [0 : (length(y)-1)]'*Ts;
    
    for n=1:N
        y = y + x(n)*sinc(fa*(t-(n-1)*Ta));
    end
    
    plot(t,y,[0:(N-1)]'*Ta,x,'.');
    xlabel('Tempo (seg)')
    ylabel('Sinal')
    grid;
end