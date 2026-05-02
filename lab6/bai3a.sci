clf;
n = 0:50;
x = 0.1.^n;
N = length(x);
X = fft(x, -1);
w = (0:N-1)/N * 2 * %pi;
X_shift = fftshift(X);
w_shift = w - %pi;

subplot(2,1,1);
plot(w_shift, abs(X_shift), 'b-', 'LineWidth', 1.5);
xlabel('Tần số \omega (rad)');
ylabel('|X(e^{j\omega})|');
title('Phổ biên độ - x(n) = 0.1^n u(n)');
xgrid;

subplot(2,1,2);
phase_calc = atan(imag(X_shift), real(X_shift));
plot(w_shift, phase_calc, 'r-', 'LineWidth', 1.5);
xlabel('Tần số \omega (rad)');
ylabel('Pha (rad)');
title('Phổ pha - x(n) = 0.1^n u(n)');
xgrid;
