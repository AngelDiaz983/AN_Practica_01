xl = 0;
xu = 2;
i = 1;
e(i) = 10;
while(e(i)>0.01)
xr = (xl+xu)/2;
g_xl = xl^2-2;
g_xr = xr^2-2;
g_xu = xu^2-2;

if (g_xl*g_xr < 0)
    xu=xr;
    e(i+1) = abs(xr-xl);
end

if (g_xu*g_xr < 0)
    xl=xr;
    e(i+1)= abs(xu-xr);
end
i=i+1;
if (g_xu*g_xr == 0)
    xr=xr;
end
end

tamanio = size(e);
ite = 1:1:tamanio(2);

plot(ite,e,'color',[1 0 0])
grid on

figure('DefaultAxesFontSize',14)
set(gcf,'color','white');
plot (ite,e,'color',[1 0 0],'LineWidth',2);
grid on
xlabel('Iterations')
ylabel('error')
legend('ERROR')


