%draw the Fourier series of the square wave
count = 1;                                  %using a loop to put 6 image separately
for f = [1, 3, 5, 10, 50, 500]              %6 kinds of frequency
    y = 0;
    subplot(3, 2, count);                   %initialize 6 blanks in order to put 6 image later
    for k = 1 : 2 : (2*f-1)                 %generate different range of the odd numbers
                                            %odd -- sine; even -- cosine
        x = 0 : 0.001 : 1;                   %initialize x-axis, range0~1,distance 0.01
        y = y + (4 / pi) * sin(2*pi.*x*k)/k; %according to the formula
    end
    sq = square(2*pi*x);                    %initialize the square image
    hold on;                                %put multiple image into a single blank
    plot(x, y,'b'), axis([0 1 -2 2]);       %draw the x-y image in blue
    plot(x, sq, 'r');                       %draw the square image in red
    hold off;
    title ([ 'Approximation with ',num2str(f),' sine functions']);
    count = count + 1;                      %from the first blank to the second, the third....the sixth blank
end
%In addition, if someone don't want to use a loop to draw image separately,
%he can try to write his code in this way:
%subplot(3,2,1);
%draw the first image
%subplot(3,2,2);
%draw the second image
%subplot(3,2,3);
%draw the third image
%subplot(3,2,4);
%draw the fourth image
%subplot(3,2,5);
%draw the fifth image
%subplot(3,2,6);
%draw the sixth image

