count = 1;                           %using a loop to put 6 image separately
for f = [1, 3, 5, 10, 50, 500]       %6 kinds of frequency
                                     % pick out a single element in f and
                                     % execute the body with the single
                                     % element each time.
    y = zeros(1, 2*f);               %initialize the x-axis with 0 and the range is 2f
                                     %ps:if I use "ones" to generate x=axis,
                                     %   the image will rise byy one unit length
    subplot(3, 2, count);            %   initialize 6 different blank
    for k = 1 : 2 : (2*f-1)          %generate all the odd numbers in the x-axis
        y(k) = (4/pi)*(1/k);         %amplitude of each sine wave on the sum
    end
    k = 1 : 1 : 2*f;                 %generate the rest of the even numbers/x -axis
                                     %can also goes in a second version
                                     %for k = 0 : 2 : 2f
                                     %    f(k) = 0;
                                     %end
    stem (k, y);                     %draw the stem image
    count = count + 1;               %continue the loop
    title ([ 'Approximation with ',num2str(f),' sine functions']);
end
%count = 1;
%for f = [1, 3, 5, 10, 50, 500]
%    subplot(3,2,count);
%    k = (4/pi)*(ones[1 f]./t);
%    stem(k,f,'b')
%    k2 = 2:2:2*i;
%    y2 = zeros([1 f]);
%    hold on;
%    stem(t2, y2, 'b')
%    hold off;
%    count = count + 1;
%end
      