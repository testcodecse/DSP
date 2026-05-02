clf;
w = -%pi:0.01:%pi;
H = 1 ./ (1 + 0.1*exp(-%i*w) + 0.2*exp(-%i*2*w));

subplot(2,1,1);
plot(w, abs(H), 'b-', 'LineWidth', 1.5);
xlabel('Frequency \omega (rad)');
ylabel('|H(e^{j\omega})|');
title('Magnitude Spectrum');
xgrid;

subplot(2,1,2);
phase_calc = atan(imag(H), real(H));
plot(w, phase_calc, 'r-', 'LineWidth', 1.5);
xlabel('Frequency \omega (rad)');
ylabel('Phase (rad)');
title('Phase Spectrum');
xgrid;
