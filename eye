clc;
clear all;
close all;
rolloff=1;
span=6;
sps=10;
b=rcosdesign(rolloff, span, sps);
len=500;
d=awgn((2 * randi([0,1],len,1)-1),20);
subplot(2,1,1);
stem(d);
x=upfirdn(d,b,sps);
subplot(2,1,2);
plot(x);
eyediagram(x,sps)
