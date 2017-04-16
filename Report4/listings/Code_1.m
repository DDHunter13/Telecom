
A_M = 1;                                    
OMEGA = 10;                          
Ws = 1000;                                 
Fs = Ws/(2*pi);                             
T = 1/Fs;   
t = [0:T:5*2*pi/OMEGA];                    
s_M = A_M*cos(OMEGA*t);                     

figure
plot(t, s_M);
ylim([-2 2]);

figure                                    
specplot(s_M, Fs); 
xlim([0 20]);
ylim([0 5000]);


A0=1;                                      
omega0 = 150;                               
phi0 = 0;                                   
s_AM = ammod(s_M, OMEGA, omega0, phi0, A0); 

figure
hold on
plot(t, s_AM);
plot(t, A0+s_M, '--', 'Color', 'red'); 
hold off

figure                                      
specplot(s_AM, Fs);                    



y = s_AM .* cos(omega0*t);                  
[b, a] = butter(5, 2*OMEGA/pi/Fs);       
z = filtfilt(b, a, y);  
figure
plot(t, s_AM, '--', t, z);

figure                                      
specplot(z, Fs); 



x = [0.1:0.2:10];  
Am = x;
M = Am./A0;
kpd = M.^2./(M.^2.+2);
figure
plot(x, kpd, '--', 'Color', 'red');



Fc = omega0/(2*pi);
s_AM_SC = ammod(s_M, Fc, Fs); 

figure
plot(t, s_AM_SC);
xlim([0 0.1]);



s_AM_SSB = ssbmod(s_M, Fc, Fs);
figure
plot(t, s_AM_SSB); 

figure
subplot(2, 1, 1);
specplot(s_AM_SC, Fs) 
subplot(2, 1, 2);
specplot(s_AM_SSB, Fs) 

