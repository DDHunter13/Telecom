Fs = 8e3;
t = 0:1/Fs:1;
t = t';
f = [600 1200 1400];
s3 = cos(2*pi*t*f);
FFT = fft(s3);
plot(t(1:100), s3(1:100,:))
figure;
plot(t(1:8001), FFT(1:8001,:))