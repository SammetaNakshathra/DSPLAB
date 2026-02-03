clc; 
clear all;
close all;
x1=input('enter the first matrix');
x2=input('enter the second matrix');
y=xcorr(x1,x2)
if( length(x1)==length(x2))
    n=1: (length(x1)+ length(x2)-1)
else
    n=1:(length(x1)+ length(x2))
end
stem(n,y)
xlabel('time n' );
ylabel('Amplitude');
title('Cross Correlation');