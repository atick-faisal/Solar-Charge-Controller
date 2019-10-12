% Finding the value of feedback resistances
% Author : Atick Faisal
%-------------------------------------------------%
% Lets take R1 = 10k
% Vref = 6.8V

% Truns on at 13.0, turns off at 14.4
%----------------------------------------%
Rf = 50:1:300;
UTL = (6.8 * Rf) ./ (10 + Rf) + (14.4 * 10) ./ (10 + Rf);
pot_level1 = UTL / 14.4;
UTL = (6.8 * Rf) ./ (10 + Rf);
pot_level2 = UTL / 13.0;
figure;
plot(Rf, pot_level1, Rf, pot_level2);
grid on;
title("Potentiometer (%) vs Rf (Solar Cell)");
xlabel("Rf (KOhms)");
ylabel("Potentiometer (%)");

% Truns on at 12.5, turns off at 10.8
%----------------------------------------%
Rf = 50:1:300;
UTL = (6.8 * Rf) ./ (10 + Rf) + (12.5 * 10) ./ (10 + Rf);
pot_level1 = UTL / 12.5;
UTL = (6.8 * Rf) ./ (10 + Rf);
pot_level2 = UTL / 10.8;
figure;
plot(Rf, pot_level1, Rf, pot_level2);
grid on;
title("Potentiometer (%) vs Rf (Load)");
xlabel("Rf (KOhms)");
ylabel("Potentiometer (%)");
