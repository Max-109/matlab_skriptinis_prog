x = 0:0.01:2;

signalas.f = cos(sin(2*pi*x));
signalas.x = x;
signalas.pavadinimas = 'f(x) = cos(sin(2\pi x))'

figure
plot(signalas.x, signalas.f)
title(signalas.pavadinimas)
xlabel('x')
ylabel('f(x)')
grid on

while true
    m = input('Iveskite m: ');
    n = input('Iveskite n: ');

    if m == n
        break
    end

    didesnis = max(m, n);
    mazesnis = min(m, n);

    if mazesnis <= 0
        disp('Mazesnis skaicius turi buti teigiamas')
    else
        while didesnis - mazesnis > 0
            didesnis = didesnis - mazesnis;
        end
        disp('Maziausia teigiama reiksme:')
        disp(didesnis)
    end
end

pirmieji_skaiciai = [];
antrieji_skaiciai = [];

while true
    pirmas = round(rand*3);
    antras = round(rand*5);

    pirmieji_skaiciai(end+1) = pirmas;
    antrieji_skaiciai(end+1) = antras;

    if pirmas == antras
        break
    end
end

iteracijos = 1:length(pirmieji_skaiciai);

figure
plot(iteracijos, pirmieji_skaiciai, 'o-', iteracijos, antrieji_skaiciai, 'x-')
title('Sugeneruotu skaiciu kitimas')
xlabel('Iteracija')
ylabel('Skaicius')
legend('round(rand*3)', 'round(rand*5)')
grid on
