% Script: ex_7_39a.m
%
% Define anonymous functions for the factors of the system function.
H1 = @(s) s;
H2 = @(s) 1+s/300;
H3 = @(s) 1./(1+s/5);
H4 = @(s) 1./(1+s/40);
% Create a vector of logarithmically spaced radian frequencies.
omg = logspace(log10(0.5),log10(3000),1000);
% Compute and graph magnitude and phase of each factor.
clf;
subplot(4,2,1);
semilogx(omg,20*log10(abs(H1(j*omg))));
axis([0.5,3000,-60,60]);
xlabel('\omega (rad/s)');
ylabel('Magnitude (dB)');
title('20 log_{10}|H_{1}(\omega)|');
grid;
subplot(4,2,2);
semilogx(omg,angle(H1(j*omg))*180/pi);
axis([0.5,3000,-100,100]);
xlabel('\omega (rad/s)');
ylabel('Phase (deg)');
title('\angle H_{1}(\omega)');
grid;
subplot(4,2,3);
semilogx(omg,20*log10(abs(H2(j*omg))));
axis([0.5,3000,-10,30]);
xlabel('\omega (rad/s)');
ylabel('Magnitude (dB)');
title('20 log_{10}|H_{2}(\omega)|');
grid;
subplot(4,2,4);
semilogx(omg,angle(H2(j*omg))*180/pi);
axis([0.5,3000,-100,100]);
xlabel('\omega (rad/s)');
ylabel('Phase (deg)');
title('\angle H_{2}(\omega)');
grid;
subplot(4,2,5);
semilogx(omg,20*log10(abs(H3(j*omg))));
axis([0.5,3000,-60,10]);
xlabel('\omega (rad/s)');
ylabel('Magnitude (dB)');
title('20 log_{10}|H_{3}(\omega)|');
grid;
subplot(4,2,6);
semilogx(omg,angle(H3(j*omg))*180/pi);
axis([0.5,3000,-100,100]);
xlabel('\omega (rad/s)');
ylabel('Phase (deg)');
title('\angle H_{3}(\omega)');
grid;
subplot(4,2,7);
semilogx(omg,20*log10(abs(H4(j*omg))));
axis([0.5,3000,-40,10]);
xlabel('\omega (rad/s)');
ylabel('Magnitude (dB)');
title('20 log_{10}|H_{4}(\omega)|');
grid;
subplot(4,2,8);
semilogx(omg,angle(H4(j*omg))*180/pi);
axis([0.5,3000,-100,100]);
xlabel('\omega (rad/s)');
ylabel('Phase (deg)');
title('\angle H_{4}(\omega)');
grid;