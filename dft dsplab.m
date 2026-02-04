clc;
clear all;
close all;
x = input('Enter the sequence:');       % Get the input sequence
n=length(x);
a=sqrt(-1);
for i=1:n
    y(i)=0;
    for j=1:n-1
        k=a*2*pi*(j-1)*(i-1)/n;
        y(i)=y(i)+x(j)*exp(-k);
end
end
m = abs(y);             % Computes the DFT using FFT algorithm
N = 0:n-1;                    % Decides the length to plot the results
subplot(2,1,1); % Divide the figure window to plot the results
stem(N,m);                  % Plots the magnitude spectrum
grid;
axis([0 n-1 0 2])
xlabel('K');               % Name x-axis as "K"
ylabel('Magnitude');            % Name y-axis as "Magnitude of X(k)"
title('Magnitude Response of X(K)');       % Title as "Magnitude spectrum"
an = angle(y);              % Get the angle of the output sequence X(k)
subplot(2,1,2);             % Divide the figure window to plot the results
stem(N, an);                    % Plots the phase spectrum
grid;
axis([0 n-1 -2 2])
xlabel('K');               % Name x-axis as "K"
ylabel('Phase');            % Name y-axis as "Phase of X(k)"
title('Phase Response of X(K)');           % Title as "Phase spectrum"