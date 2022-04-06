count = 1;
for f = [1, 3, 5, 10, 50, 500]
    y = 0;
    subplot(7, 2, count);
    for k = 1 : 2 : (2*f)
        x = 0 : 0.001 : 1;
        y = y + (4 / pi) * sin(2*pi*x*k)/k;
    end
    sq = square(2*pi*x);
    hold on;
    plot(x, y,'b'), axis([0 1 -2 2]);
    plot(x, sq, 'r');
    hold off;
    count = count + 1;
end
    subplot(7,2,7);
    a = 0 : 0.0001 : 1;
for c = 1 : 2 : (2*(10+1)-1)
    b =(4 / pi) * sin(2*pi.*a*c)/c;
    sq = square(2*pi*a);
    hold on;
    plot(a, b), axis([0 1 -1.5 1.5]);
    plot(a, sq, 'r');
    hold off;
end
    count = 9;
for f = [1, 3, 5, 10, 50, 500]
    d = zeros(1, 2*f);
    subplot(7, 2, count);
    for e = 1 : 2 : (2*f-1)
        d(e) = d(e) + (4/pi)*(1/e);
    end
    e = 1 : 1 : 2*f;
    stem (e, d);
    count = count + 1;
end