Fs0 = 400;
tau = 60e-3;
t0 = 0:1/Fs0:tau;
s0 = sin(pi*t0/tau).^2;
Fs = 1e3;
t = 0:1/Fs:0.5;
d = (1:6)' * 64e-3;
d(:,2) = 0.6.^(0:5)';
y = pulstran(t, d, s0, Fs0);
plot(t,y)
FFT = fft(y);
figure;
plot(t(1:501), FFT(1:501))