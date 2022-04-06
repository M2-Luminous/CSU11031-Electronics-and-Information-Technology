[notes,fs]= audioread('exercise notes.wav');                               %load the music file
sound(notes, fs);                                                          %play the music file so that one can know where 
                                                                           %he should start to separate the note
subplot(5,1,1);
plot(notes);                                                               %plot the signal spectrum of the music
%the total notes of the music array is 10001

firstnote = notes(1:6780);                                                 %separate the first part ends in 6780
sound(firstnote, fs);
subplot(5,1,2);
plot(firstnote);                                                           %plot the signal spectrum of the first note

secondnote = notes(6781:10001);                                            %separate the second part starts with 6781
sound(secondnote, fs);                                                     %the total length of the notes is 10001*1 double
subplot(5,1,3);                             
plot(secondnote);                                                          %plot the signal spectrum of the second note

N = 441000;                                                                %N = fs, I can also choose a number bigger than 44100
firstF = fftshift(abs(fft(firstnote,N)));                                  %digitalize the first note
secondF = fftshift(abs(fft(secondnote,N)));                                %digitalize the second note
newX = -fs/2:fs/N:fs/2-fs/N;                                               %set the new x-axis for fftshift command
subplot(5,1,4);
plot(newX,firstF);                                                         %plot the first spectrum
subplot(5,1,5);
plot(newX,secondF);                                                        %plot the second spectrum