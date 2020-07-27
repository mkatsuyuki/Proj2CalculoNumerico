function [max_ek]=max_ek2(k)
    x=-1:0.0001:1;			%Cria-se o domínio do tempo "contínuo"
    f=1./(1+25*x.*x);		%Define o plinômio original
    
    xi=linspace(-1,1,k+1);	%Cria-se o vetor com k+1 pontos igualmente espaçados no intervalo entre -1 e 1 (xi = -1 + 2i/k, com i pertencente a {0,...,k}) 
    yi=1./(1+25*xi.*xi);	%Define os valores de y a partir dos pontos de xi definidos acima
    
    pk = polyfit(xi,yi,k);	%A partir de interpolação polinomial, cria-se um polinômio de ordem k a partir dos pontos xi e yi definidos

    ek = abs(f-polyval(pk,x));	%Cria-se um gráfico que consiste no erro do polinômio pk em relação ao polinômio original
    max_ek = max(abs(f-polyval(pk,x)));	%Retorna o valor máximo da função ek definida acima
    
    figure(1); 
    subplot(4,1,1); 
    plot(x,f);
    xlabel('x');
    ylabel('y'); 
    title('Equação original'); 
    grid on; 

    subplot(4,1,2); 
    plot(xi,yi);
    xlabel('x');
    ylabel('y'); 
    title('Pontos selecionados'); 
    grid on; 

    subplot(4,1,3); 
    plot(x, polyval(pk,x)); 
    xlabel('x'); 
    ylabel('y'); 
    title('Polinômio pk encontrado'); 
    grid on;

    subplot(4,1,4); 
    plot(x, ek); 
    xlabel('x'); 
    ylabel('y'); 
    title('Erros do polinômio'); 
    grid on;
end






