x = 1:32;
y = x.^2;

plot(x, y, 'o-r', x, y/3, 'xb')
title('Dvi funkcijos')
xlabel('X-ai')
ylabel('F_1 [-o-]    F_2 [-x-]')

help sin
doc plot
docsearch title
help linspace
help size
help max

N = 4;
v = (N+1):0.5:(N+4);

A = [4 5 6; 7 8 9; 10 11 12];

a = A(3,2);
b = A(2:3,1:2);
c = A([1 3],[1 3]);

D = [A; v(1:3)];

%4   5   6
%7   8   9
%10  11  12