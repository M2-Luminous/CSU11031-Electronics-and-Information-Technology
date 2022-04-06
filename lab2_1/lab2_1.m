load('array.mat');                                                         %load the music file
fs = 1000;                                                                 %sample frequency equals to 1000 ;frequency = 10
N = 1024;                                                                  %number of FFT samples 
F = fftshift(abs(fft(y,N)));                                               %Using fftshift command to shift 
%y is my signal, 1*1000double                                              %all the points into the newX axis.
                                                                           %Using abs command to change all the points from negative
                                                                           %to positive.
newX = -fs/2:fs/N:fs/2-fs/N;                                               %new x axis for spectrum plot: 
                                                                           %(fs/N)calculate every two points distance
                                                                           %(-fs/2 and fs/2-fs/N)make sure the negative axis and
                                                                           %positive axis is the same length
plot(newX,F);                                                              %plot the frequency spectrum of the signal
%the total notes for the music array is 10001 
%and the signal is made of 50HZ and 120HZ