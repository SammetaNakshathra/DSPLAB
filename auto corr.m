clc; 
clear all;
close all;
x1=input('enter the first matrix')
y=xcorr(x1,x1)
n= 1: length(y)
stem(n,y)
xlabel('time n' );
ylabel('Amplitude');
title('Auto Correlation');