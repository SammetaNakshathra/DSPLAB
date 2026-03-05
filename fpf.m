clc; 
close all; 
clear all;
n=input('enter the order of the filter');
wc=input('enter the cutoff frequency');
fs=input('enter the sampling frequency');
w1=2*wc/fs;
n1=n+1;
%design of fir highpass filter using rectangular window 
y1 = rectwin(n1); %rectangular window function
b1=fir1(n,w1,'high',y1); % fir highpass filter design using window
[h1 om]=freqz(b1,1,256); m1=20*log10(abs(h1));
subplot(3,2,1) plot(om/pi,m1);

ylabel('Gain in dB'); xlabel('Normalized frequency');
title('FIR highpass using rectangular window'); axis([0 1 -100 10])
%design of fir highpass filter using trangular window 
y2=triang(n1); %triangular window function
b2=fir1(n,w1,'high',y2);
[h2 om]=freqz(b2,1,256); m2=20*log10(abs(h2));
subplot(3,2,2) plot(om/pi,m2); grid
ylabel('Gain in dB'); xlabel('Normalized frequency');
title('FIR highpass using trangular window'); axis([0 1 -100 10]) 
%design of fir highpass filter using hamming window 
y3=hamming(n1); %hamming window function
b3=fir1(n,w1,'high',y3); 
[h3 om]=freqz(b3,1,256); m3=20*log10(abs(h3));
subplot(3,2,3) plot(om/pi,m3); grid
ylabel('Gain in dB');xlabel('Normalized frequency');
title('FIR highpass using hamming window'); axis([0 1 -100 10])
%design of fir highpass filter using hanning window 
y4 = hann(n1); %hanning window function
b4=fir1(n,w1,'high',y4);
[h4 om]=freqz(b4,1,256); m4=20*log10(abs(h4));
subplot(3,2,4) plot(om/pi,m4); grid
ylabel('Gain in dB'); xlabel('Normalized frequency');
title('FIR highpass using hanning window'); axis([0 1 -100 10])
%design of fir highpass filter using blackman window 
y5 = blackman(n1); %blackman window function
b5=fir1(n,w1,'high',y5);
[h5 om]=freqz(b5,1,256); m5=20*log10(abs(h5));
subplot(3,2,5) plot(om/pi,m5); grid
ylabel('Gain in dB'); xlabel('Normalized frequency');
title('FIR high pass using Blackman window'); axis([0 1 -100 10])
%design of fir high pass filter using Kaiser Window 
y6 = kaiser(n1,5); % Kaiser window function
b6=fir1(n,w1,'high',y6);
[h6 om]=freqz(b6,1,256); m6=20*log10(abs(h6));
subplot(3,2,6) plot(om/pi,m6); grid
ylabel('Gain in dB'); xlabel('Normalized frequency');
title('FIR highpass using kaiser window'); axis([0 1 -100 10])