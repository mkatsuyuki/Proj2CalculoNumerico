function [max_ek]=spline(k)
    x=-1:0.0001:1;
    f=1./(1+25*x.*x);
    
    xi=linspace(-1,1,k+1);
    yi=1./(1+25*xi.*xi);
    
    s = csape(xi, yi,'variational')
    s_function = fnval(s,x);
    ek = abs(f-s_function);
    max_ek = max(ek);
    
    %{
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
    plot(x,s_function,'k-',xi,yi,'ro')
    xlabel('x'); 
    ylabel('y'); 
    title('Polinômio s encontrado'); 
    grid on;

    subplot(4,1,4); 
    plot(x, ek); 
    xlabel('x'); 
    ylabel('y'); 
    title('Erros do polinômio'); 
    grid on;
    %}
end





