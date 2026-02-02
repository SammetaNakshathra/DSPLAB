clc; 
clear all;
close all;
% Linear convolution through circular convolution
x1=input('enter the first matrix')
x2=input('enter the second matrix')
y=cconv(x1,x2)
n=1:(length(x1)+ length(x2) -1)
subplot(1,2,1)
stem(n,y)
xlabel('time n' )
ylabel('convoluted output')
title('Linear convolution through circular convolution')

% Circular convolution
y1=cconv(x1,x2)
n=1:length(y)
subplot(1,2,2)
stem(n,y1)
xlabel('time n' )
ylabel('convoluted output')
title('Circular convolution')