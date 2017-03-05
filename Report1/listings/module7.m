Fs = 1e3;
t = -0.1:1/Fs:0.1;
f0 = 10;
T = 1/f0;
s = rectpuls(t,T) .* cos (2*pi*f0*t);
f = -50:50;
sp = T/2 * (sinc((f-f0)*T) + sinc((f+f0)*T));
plot(t,s)
ylim([-1.1 1.1]);
figure;
plot(f, abs(sp))