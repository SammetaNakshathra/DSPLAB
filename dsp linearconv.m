clc; 
clear all;
close all;
x1=input('enter the first matrix:')
x2=input('enter the second matrix:')
y=conv(x1,x2)
n=1:(length(x1)+ length(x2) -1)
stem(n,y)
xlabel('time n' )
ylabel('convoluted output')
title('linear convolution')