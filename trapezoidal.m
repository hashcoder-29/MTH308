clc;
clear;
% Taking the data inputs
x=input("Enter the x-coordinates of the data points as row vector: ");
f=input("Enter the y-coordinates of the data points as row vector: ");
N1=length(x);
N2=length(f);
p=0;
while (p==0)
    if N1~=N2
        fprintf("Please check the number of data points and re-enter.");
        x=input("Enter the x-coordinates of the data points as row vector: ");
        f=input("Enter the y-coordinates of the data points as row vector: ");
        N1=length(x);
        N2=length(f);
    else 
        N=N1;
        p=1;
        fprintf("\n The data is given in a table as: \n\n ");
        D=['        x    ' '       f(x)    '];
        disp(D);
        disp(cell2mat(compose('%14.8f', [x ; f]')));
    end
end
sum=0;
for(K=2:N)
    sum=sum+((f(K-1)+f(K))*0.5)/(x(K)-x(K-1));
end
fprintf("\n Integral : %f",sum);