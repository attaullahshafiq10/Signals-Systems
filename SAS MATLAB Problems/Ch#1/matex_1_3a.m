% Script : matex_1_3a.m
%
t = [-10:0.01:10];
x = 2*((t>=-1)&(t<2))+1*((t>=2)&(t<3))-0.5*((t>=3)&(t<=6));
clf;
plot(t,x);