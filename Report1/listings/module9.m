Fs = 1e3;
t = 0:1/Fs:0.5;
tau = 20e-3;
d = [20 80 160 260 380]' * 1e-3;
d(:,2) = 0.8.^(0:4)';
y = pulstran(t, d, 'tripuls', tau);
plot(t,y)
FFT = fft(y);
figure;
plot(t(1:501), FFT(1:501))