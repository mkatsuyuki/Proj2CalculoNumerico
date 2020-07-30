function [max_ek]=spline(k)
    x=-1:0.0001:1;
    f=1./(1+25*x.*x);
    
    xi=linspace(-1,1,k+1);
    yi=1./(1+25*xi.*xi);
    
    %pk = csapi(xi,yi,x)
    %pk = spline(xi,yi,x)
    pk = csape(xi, yi,'variational')
    ek = abs(f-fnval(pk,x));
    max_ek = max(ek);
    
    figure(1); 
    subplot(5,1,1); 
    plot(x,f);
    xlabel('x');
    ylabel('y'); 
    title('Equação original'); 
    grid on; 

    subplot(5,1,2); 
    plot(xi,yi);
    xlabel('x');
    ylabel('y'); 
    title('Pontos selecionados'); 
    grid on; 

    subplot(5,1,3); 
    plot(x,fnval(pk,x),'k-',xi,yi,'ro')
    xlabel('x'); 
    ylabel('y'); 
    title('Polinômio pk encontrado'); 
    grid on;

    subplot(5,1,4); 
    plot(x, ek); 
    xlabel('x'); 
    ylabel('y'); 
    title('Erros do polinômio'); 
    grid on;
    
    subplot(5,1,5); 
    plot(x, diff(diff(ek))); 
    xlabel('x'); 
    ylabel('y'); 
    title('Drrivada srgunda'); 
    grid on;
end





