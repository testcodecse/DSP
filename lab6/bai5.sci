
clf;


w = -%pi:0.01:%pi;
H = (1 + exp(-%i*w)) ./ (1 - 0.5*exp(-%i*w));


subplot(2,1,1);
plot(w, abs(H), 'b-', 'LineWidth', 1.5);
xlabel('Frequency \omega (rad)');
ylabel('|Y(e^{j\omega})|');
title('Magnitude Spectrum of y(n)');
xgrid;

subplot(2,1,2);
phase_calc = atan(imag(H), real(H));
plot(w, phase_calc, 'r-', 'LineWidth', 1.5);
xlabel('Frequency \omega (rad)');
ylabel('Phase (rad)');
title('Phase Spectrum of y(n)');
xgrid;


figure;
n = 0:20;
y = (0.5).^n + [0, (0.5).^(0:19)];
plot(n, y(1:21), 'bo-', 'LineWidth', 1.5, 'MarkerSize', 8);
xlabel('n');
ylabel('y(n)');
title('Output signal y(n) in time domain');
xgrid;
