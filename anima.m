%l� o modo desejado
p = input('modo: ');

Zz = Z;
while (p ~= 0)
    while (p > N || p == 0)
        fprintf(' inexistente...\n');
        p = input('modo: ');
    end
    %escreve frequ�ncia do modo
    fprintf(' frequencia: %.1f Hz\n',w(p)/(2*pi));
    
    clf
    
    %anima o gr�fico
    for t = 0:(pi/20):2*pi
        
        Z = Zz + 3*sin(t)*V(:,p);
        
        drawnow
        plota
        %axis off;
        %saveas(gcf,sprintf('%u.png',p));
        
        pause(0.01);
    end
    
    %l� o modo desejado novamente
    p = input('modo: ');
end

Z = Zz;
