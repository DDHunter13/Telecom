function [coef]=correlation(x,y)
%Процедура расчета взаимной коррреляции двух векторов X и Y. Нули во
%входных векторах игнорирутся и считаются как пропуски данных.
%Входные данные:
    %x - вектор данных первого сигнала
    %y - вектор данных второго сигнала
    %p - вектор весовых коэффициентов (не обязательный - подать пустой вектор)
%Выходные данные:
    %coef - коэффициент взаимной корреляции векторов X и Y
time_x=find(x);
time_y=find(y);
mx=sum(x(time_x))/length(time_x);
my=sum(y(time_y))/length(time_y);
time=intersect(time_x,time_y);

temp1=(x(time)-mx);
temp2=(y(time)-my);


Kxy=sum(temp1.*temp2);

sigma_x=sqrt(sum(temp1.^2));
sigma_y=sqrt(sum(temp2.^2));

coef=Kxy/(sigma_x*sigma_y);
end

