x = -pi:0.1:pi;
y = tan(sin(x)) + sin(tan(x));

figure(1)
plot(x, y, 'y')
axis([-pi pi -3 3])
title('f(x) = tan(sin(x)) + sin(tan(x))')
xlabel('x')
ylabel('f(x)')
legend('f(x)')
grid on

x2 = 0:0.1:10;
y1 = exp(-0.5*x2);
y2 = sin(x2);

figure(2)
[ax, h1, h2] = plotyy(x2, y1, x2, y2, 'semilogy', 'plot');
title('Funkcijos e^{-0.5x} ir sin(x)')
xlabel('x')
ylabel(ax(1), 'e^{-0.5x}')
ylabel(ax(2), 'sin(x)')
legend([h1 h2], 'e^{-0.5x}', 'sin(x)')
grid on

N = 6;
M = 4;
Z = rand(N, M)

figure(3)
subplot(2, 1, 1)
area(Z)
title('Ploto diagrama')
xlabel('Eilute')
ylabel('Reiksme')

subplot(2, 1, 2)
mesh(Z)
title('Mesh diagrama')
xlabel('Stulpelis')
ylabel('Eilute')
zlabel('Reiksme')

t = 0:0.005:1;
A = 7;
f = 4;
sigma = 2;
U1 = 4.5;
U2 = 2.5;

n = sigma * randn(size(t));
s = A * sin(2*pi*f*t) + n;

s_filtruotas = s;
s_filtruotas(abs(s) < U2) = 0;

t_atrinktas = t(s > U1);
s_atrinktas = s(s > U1);

yra_max = s_atrinktas == max(s_atrinktas);
yra_min = s_atrinktas == min(s_atrinktas);

figure(4)
subplot(2, 1, 1)
plot(t, s_filtruotas, 'y-', t, s, 'b-.')
yline(U1, 'g', 'LineWidth', 1.5)
yline(U2, 'r--')
axis([0 1 min(s)-1 max(s)+1])
title('Pradinis ir filtruotas signalai')
xlabel('Laikas, s', 'Color', 'b', 'FontSize', 12)
ylabel('Itampa, V', 'Color', 'b', 'FontSize', 12)
legend('Filtruotas', 'Pradinis', 'U_1', 'U_2')
grid on

subplot(2, 1, 2)
stem(t_atrinktas, s_atrinktas)
hold on
plot(t_atrinktas(yra_max), s_atrinktas(yra_max), 'rs')
plot(t_atrinktas(yra_min), s_atrinktas(yra_min), 'm^')
hold off
axis([0 1 0 max(s)+1])
title('Reiksmes, didesnes uz U_1')
xlabel('Laikas, s', 'Color', 'b', 'FontSize', 12)
ylabel('Itampa, V', 'Color', 'b', 'FontSize', 12)
legend('s > U_1', 'Maksimumas', 'Minimumas')
grid on
