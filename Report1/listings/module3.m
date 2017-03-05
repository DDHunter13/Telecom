Fs = 8e3;
t = 0:1/Fs:1;
t = t';
A = 2;
f0 = 1e3;
phi = pi/4;
alpha = 1e3;
T = 0.01;
s1 = A * exp (-alpha * t) .* (t >= 0);
FFT1 = fft(s1);
s2 = A * (abs(t) <= T/2);
FFT2 = fft(s2);
s3 = A * t / T .* (T >= 0) .* (t <= T);
FFT3 = fft(s3);
figure(1);
plot(t(1:100), s1(1:100))
figure(2);
plot(t(1:100), s2(1:100))
figure(3);
plot(t(1:100), s3(1:100))
figure(4);
plot(t(1:8001), FFT1(1:8001))
figure(5);
plot(t(1:8001), FFT2(1:8001))
figure(6);
plot(t(1:8001), FFT3(1:8001))