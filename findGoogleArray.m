function G = findGoogleArray(A,q) %�������� ��� ���������� ��� ������ Google.
 format long;
[m,n]=size(A);
for i=1:n
    for j=1:n
    G(i,j)=q/n + (A(j,i)*(1-q))/findN(A,j,n); %� ����� ��� ��� ����� ��� ������ Google.
    end
end
end

function a=findN(A,j,n) %������� �� �������� ��� ������ j.
sum=0;
for i=1:n
    sum=sum+A(j,i);
end
a=sum;
end