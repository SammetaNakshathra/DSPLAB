clc; 
close all; 
clear all;
n=input('enter the order of the filter');
wc=input('enter the cutoff frequency');
fs=input('enter the sampling frequency');
w1=2*wc/fs;
n1=n+1;
%design of fir lowpass filter using rectangular window 
y1 = rectwin(n1); % rectangular window function
b1=fir1(n,w1,y1); % fir lowpass filter design using window
[h1 om]=freqz(b1,1,256); m1=20*log10(abs(h1));
subplot(2,3,1) ,
plot(om/pi,m1);grid
xlabel('Normalized frequency');  ylabel('Gain in dB'); 
title('FIR lowpass using rectangular window'); 
axis([0 1 -100 10])
%design of fir lowpass filter using trangular window 
y2=triang(n1); % Triangular window function
b2=fir1(n,w1,y2); 
[h2 om]=freqz(b2,1,256); m2=20*log10(abs(h2));
subplot(2,3,2) ;plot(om/pi,m2);
ylabel('Gain in dB'); xlabel('Normalized frequency');
title('FIR lowpass using trangular window');  axis([0 1 -100 10]) 
%design of fir lowpass filter using hamming window 
y3=hamming(n1); % hamming window function
b3=fir1(n,w1,y3);
[h3 om]=freqz(b3,1,256); m3=20*log10(abs(h3));
subplot(2,3,3) plot(om/pi,m3); 
ylabel('Gain in dB'); xlabel('Normalized frequency');
title('FIR lowpass using hamming window'); axis([0 1 -100 10])
%design of fir lowpass filter using hanning window 
y4 = hann(n1); %hanning window function
b4=fir1(n,w1,y4);
[h4 om]=freqz(b4,1,256); m4=20*log10(abs(h4));
subplot(2,3,4) plot(om/pi,m4); grid
ylabel('Gain in dB'); xlabel('Normalized frequency');
title('FIR lowpass using hanning window'); axis([0 1 -100 10])
%design of fir lowpass filter using blackman window 
y5 = blackman(n1); %blackman window function
b5=fir1(n,w1,y5);
[h5 om]=freqz(b5,1,256); m5=20*log10(abs(h5));
subplot(2,3,5) plot(om/pi,m5); grid
ylabel('Gain in dB'); xlabel('Normalized frequency');
title('FIR lowpass using blackman window'); axis([0 1 -100 10])
%design of fir lowpass filter using kaiser window 
y6 = kaiser(n1,5); % kaiser window function
b6=fir1(n,w1,y6);
[h6 om]=freqz(b6,1,256); m6=20*log10(abs(h6));
subplot(2,3,6) plot(om/pi,m6); grid
ylabel('Gain in dB'); xlabel('Normalized frequency');
title('FIR lowpass using kaiser window'); axis([0 1 -100 10]) ;
