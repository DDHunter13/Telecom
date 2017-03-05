function [coef]=correlation(x,y)
%��������� ������� �������� ����������� ���� �������� X � Y. ���� ��
%������� �������� ����������� � ��������� ��� �������� ������.
%������� ������:
    %x - ������ ������ ������� �������
    %y - ������ ������ ������� �������
    %p - ������ ������� ������������� (�� ������������ - ������ ������ ������)
%�������� ������:
    %coef - ����������� �������� ���������� �������� X � Y
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

