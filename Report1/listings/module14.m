Fs = 8e3;
t = 0:1/Fs:1;
f0 = 1e3;
t1 = 1;
f1 = 2e3;
s1 = chirp(t,f0, t1,f1, 'linear');
s2 = chirp(t, f0, t1, f1, 'quadratic');
s3 = chirp(t, f0, t1, f1, 'logarithmic');
specgram(s1, [], Fs);
title('linear');
colormap gray
figure
specgram(s2, [], Fs);
title('quadratic');
colormap gray
figure
specgram(s3, [], Fs);
title('logarithmic');
colormap gray