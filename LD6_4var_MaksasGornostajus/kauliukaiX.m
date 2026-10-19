function kauliukaiX(X)
% KAULIUKAIX imituoja X losimo kauliuku metima.
%   kauliukaiX(X) parodo komandiniame lange X atsitiktinai iskritusiu
%   skaiciu is aibes [1, 2, ..., 6] kaip vektoriu-eilute.
%
%   Ivesties kintamasis:
%   X - kauliuku kiekis (teigiamas sveikasis skaicius)
%
%   Isvesties kintamuju nera.
%
%   Pavyzdys:
%   kauliukaiX(5)

iskrite = randi([1 6], 1, X);
disp(iskrite)
end
