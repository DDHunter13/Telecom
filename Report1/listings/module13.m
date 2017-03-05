x = 0:0.01:15;
plot(x, diric(x,7));
grid on
title('n = 7');
figure;
plot(x, diric(x,8));
grid on
title('n = 8');
FFT1 = fft(diric(x,7));
FFT2 = fft(diric(x,8));
figure;
plot(x, FFT1)
figure;
plot(x, FFT2)
