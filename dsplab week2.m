clc;
clear all;
close all;
n=input('enter the value of n');
t=-n:n;
ximpulse=[zeros(1,n) ones(1,1) zeros(1,n)];
figure, subplot(5,2,1)
plot(t,ximpulse); xlabel('Time'); ylabel('Amplitude'); title('Impulse function');
subplot(5,2,2)
stem(t,ximpulse); xlabel('Time'); ylabel('Amplitude'); title('Impulse sequence');
tunitstep=0:n;
xstep=ones(1,n+1);
subplot(5,2,3)
plot(tunitstep,xstep); xlabel('Time'); ylabel('Amplitude'); title('Unitstep function');
subplot(5,2,4)
stem(tunitstep,xstep); xlabel('Time'); ylabel('Amplitude'); title('Unitstep sequence');
tramp=0:n;
subplot(5,2,5)
plot(tramp,tramp); xlabel('Time'); ylabel('Amplitude'); title('Ramp function');
subplot(5,2,6)
stem(tramp,tramp); xlabel('Time'); ylabel('Amplitude'); title('Ramp sequence');
texp=0:.1:n;
xexp=10*exp(texp);
subplot(5,2,7)
plot(texp,xexp); xlabel('Time'); ylabel('Amplitude'); title('Exponential function');
subplot(5,2,8)
stem(texp,xexp); xlabel('Time'); ylabel('Amplitude'); title('Exponential sequence');
tsine=0:0.1:n;
xsine=sin(tsine);
subplot(5,2,9)
plot(tsine,xsine); xlabel('Time'); ylabel('Amplitude'); title('Sine function');
subplot(5,2,10)
stem(tsine,xsine); xlabel('Time'); ylabel('Amplitude'); title('Sine sequence');
tcos=0:0.001:n;
xcos=cos(tcos);
figure, subplot(5,2,1)
plot(tcos,xcos); xlabel('Time'); ylabel('Amplitude'); title('Cos function');
subplot(5,2,2)
stem(tcos,xcos); xlabel('Time'); ylabel('Amplitude'); title('Cos sequence');
tsaw=0:0.001:.1;
xsaw=sawtooth(2*pi*100*tsaw,0.5);
subplot(5,2,3)
plot(tsaw,xsaw); xlabel('Time'); ylabel('Amplitude'); title('Sawtooth function');
subplot(5,2,4)
stem(tsaw,xsaw); xlabel('Time'); ylabel('Amplitude'); title('Sawtooth sequence');
tsquare=0:0.001:.1;
xsquare=square(2*pi*100*tsquare,50);
subplot(5,2,5)
plot(tsquare,xsquare); xlabel('Time'); ylabel('Amplitude'); title('Square function');
subplot(5,2,6)
stem(tsquare,xsquare); xlabel('Time'); ylabel('Amplitude'); title('Square sequence');
xran=rand(1,100);
subplot(5,2,7)
plot(0:99,xran); xlabel('Time'); ylabel('Amplitude'); title('random noise function');
subplot(5,2,8)
stem(0:99,xran); xlabel('Time'); ylabel('Amplitude'); title('random noise sequence');