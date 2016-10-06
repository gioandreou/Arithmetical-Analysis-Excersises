function G = findGoogleArray(A,q) %Υλοποιεί και επιστρέφει τον πίνακα Google.
 format long;
[m,n]=size(A);
for i=1:n
    for j=1:n
    G(i,j)=q/n + (A(j,i)*(1-q))/findN(A,j,n); %Ο τύπος που μας δίνει τον πίνακα Google.
    end
end
end

function a=findN(A,j,n) %Βρίσκει το άθροισμα της σειράς j.
sum=0;
for i=1:n
    sum=sum+A(j,i);
end
a=sum;
end