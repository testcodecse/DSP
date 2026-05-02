clf;
n = 0:3;
x = [1, 1, 1, 1];
N = length(x);
X = fft(x, -1);
w = (0:N-1)/N * 2 * %pi;
X_shift = fftshift(X);
w_shift = w - %pi;

subplot(2,1,1);
plot(w_shift, abs(X_shift), 'b-', 'LineWidth', 1.5);
xlabel('Tần số \omega (rad)');
ylabel('|X(e^{j\omega})|');
title('Phổ biên độ - Tổng 4 xung đơn vị');
xgrid;

subplot(2,1,2);
phase_calc = atan(imag(X_shift), real(X_shift));
plot(w_shift, phase_calc, 'r-', 'LineWidth', 1.5);
xlabel('Tần số \omega (rad)');
ylabel('Pha (rad)');
title('Phổ pha - Tổng 4 xung đơn vị');
xgrid;
