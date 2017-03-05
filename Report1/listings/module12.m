Fs = 1e3;
t = -25e-3:1/Fs:125e-3;
A = 5;
T = 50e-3;
t1 = 5e-3;
s = (sawtooth(2*pi*t/T, 1-t1/T) - 1) * A/2;
plot(t,s);
FFT = fft(s);
figure;
plot(t, FFT)