x = (-pi:0.7:2*pi).'
y = cos(x)
z = x.^y;
z = z.'

    

X = [exp(5) exp(-1i/exp(1)) log10(1); log10(pi) -2 -sin(pi)]
X1 = [X(2,1)^2 X(1,3) X(2,3)^2]
X = [X; X1]
determinantas = det(X)

t = 0:0.005:1;
A = 7;
f = 4;
sigma = 2;
U1 = 4.5;
U2 = 2.5;

n = sigma * randn(size(t));
s = A * sin(2*pi*f*t) + n;
s_atrinktas = s(s > U1)

s_filtruotas = s;
s_absoliuti = abs(s_filtruotas)
s_filtruotas(s_absoliuti < U2) = 0;

signalo_dydis = size(s)
atrinktu_dydis = size(s_atrinktas)
didziausia_itampa = max(s_filtruotas)
maziausia_itampa = min(s_filtruotas)

A = input('Iveskite vektoriu A: ');
A_ilgis = length(A);
indeksai = repmat(1:A_ilgis, 4, 1);
B = A(indeksai(:).');
disp('vektorius B yra:')
disp(B)
