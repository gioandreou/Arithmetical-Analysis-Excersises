function c = kanon(b) %������������� ��� ������ ���� �� �������� ��� ��������� ��� �� ������ 1.
format long;          %���� ������������� ���������� �� ���� �������� �� �� �������� ��� ��������� ��� ������.
m=length(b);
sum=0;
for i=1:m
   sum=sum+b(i); 
end
c=(1/sum)*b;
end

