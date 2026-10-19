function varargout = grafsincos(x)
% GRAFSINCOS apskaiciuoja vektoriaus-eilutes sin ir cos.
%   grafsincos(x) be isvesties kintamuju nubraizo sin(x) ir cos(x) grafikus.
%   R = grafsincos(x) grazina matrica R = [sin(x); cos(x)].
%   [S, C] = grafsincos(x) grazina S = sin(x) ir C = cos(x).
%
%   Ivesties kintamasis:
%   x - vektorius-eilute
%
%   Pavyzdys:
%   grafsincos(0:0.1:2*pi)

if nargin < 1
    error('Reikia paduoti vektoriu-eilute x')
end

sinusas = sin(x);
kosinusas = cos(x);

if nargout == 0
    figure
    plot(x, sinusas, 'r-', x, kosinusas, 'b--')
    title('sin(x) ir cos(x)')
    xlabel('x')
    ylabel('f(x)')
    legend('sin(x)', 'cos(x)')
    grid on
elseif nargout == 1
    varargout{1} = [sinusas; kosinusas];
else
    varargout{1} = sinusas;
    varargout{2} = kosinusas;
end
end
