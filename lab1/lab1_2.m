%draw 10 odd functions in a single blank
%single component in Fourier series
x = 0 : 0.0001 : 1;               %generate a x-axis, range0~1(the image will be rough if I set a bigger distance)
for k = 1 : 2 : (2*10-1)          %generate 10 different odd numbers start from 1,3,5,.....17,19
    y =(4 / pi) * sin(2*pi.*x*k)/k;%the sine formula
    sq = square(2*pi*x);          %draw the square image
    hold on;
    plot(x, y), axis([0 1 -1.5 1.5]);
    plot(x, sq, 'r');
    hold off;
    title  'Sine function overlapping in time';
end                               %using a for loop to generate 10 functions below in 10 times
%the 10 different image can be shown in this way:
%(4/pi)*(1/1)sin(2*pi*x*1)
%(4/pi)*(1/3)sin(2*pi*x*3)
%(4/pi)*(1/5)sin(2*pi*x*5)
%(4/pi)*(1/7)sin(2*pi*x*7)
%(4/pi)*(1/9)sin(2*pi*x*9)
%(4/pi)*(1/11)sin(2*pi*x*11)
%(4/pi)*(1/13)sin(2*pi*x*13)
%(4/pi)*(1/15)sin(2*pi*x*15)
%(4/pi)*(1/17)sin(2*pi*x*17)
%(4/pi)*(1/19)sin(2*pi*x*19)