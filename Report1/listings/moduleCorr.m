clear all;
close all;

x = [0 0 0 1 0 1 0 1 1 1 0 0 0 0 1 0];
y = [1 0 1];

yy = [];
for i = 1:length(x)
    if (i <= length(y))
        yy(i) = y(i);
    else
        yy(i) = 0;
    end
end

R = [];
RR = [];
% for i = 1:length(x)
%     R(i) = sum(xx .* circshift(yy, i-1, 2)) / length(x);
% end
for i = 1:length(x)
        xxx = circshift(x, 1-i, 2);
        temp = xxx(1:length(y));
        temp2 = temp .* y;
        R(i) = sum(temp2) / length(x);
        %R(i) = sum(xxx(1:length(y)).*y) / length(x);
end
[maxR, numberR] = max(R);

C = xcorr2(x, y);
[maxC, numberC] = max(C);

result = [];
for i = 1:length(x)
    RR = corrcoef(x,circshift(yy, i-1, 2));
    result(i) = RR(2,1);
end
[maxRR, numberRR] = max(result);

RRR = correlation (x,y);
