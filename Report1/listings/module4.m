Fs = 8e3;
t = -1:1/Fs:1;
t = t';
T = 0.01;
A = 2;
f0 = 1e3;
phi = pi/4;
alpha = 1e3;
s = zeros (size(t));
inds = find(t >= 0);
s(inds) = A* exp(-alpha * t(inds));
figure(1);
plot(t(7950:8050), s(7950:8050))
s = zeros(size(t));
s(find(abs(t) <= T/2)) = A;
figure(2);
plot(t(7950:8050), s(7950:8050))
s = zeros(size(t));
inds = find((t >= 0) & (t <= T));
s(inds) = A * t(inds) / T;
figure(3);
plot(t(7950:8050), s(7950:8050))
