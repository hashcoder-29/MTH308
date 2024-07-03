clear;
clearvars;
f2=@(x1,x2) (1/2)*x1*x2^2+2*x1-5*x2+8;
f1=@(x1,x2) 4*x1^2-20*x1+ (1/4)*x2^2+8;
d11=@(x1,x2) 8*x1-20;
d12=@(x1,x2) 0.5*x2;
d21=@(x1,x2) 0.5*x2^2+2;
d22=@(x1,x2) x1*x2-5;
c=0;
x_0=[0;0];
while(c==0)
    x=input("Please enter the initial esitimate in row vector ");
    x1=x(1);
    x2=x(2);
    b=[f1(x(1),x(2)); f2(x(1),x(2))];

    D=[d11(x1,x2) d12(x1,x2); d21(x1,x2) d22(x1,x2)];
    if(f1(x1,x2)==0 && f2(x1,x2)==0)
        fprintf("\n %f is root.",x_0)
        c=2;
        break;
    end
    if(det(D)==0)
        fprintf("\n please re-enter the initial esitimate");
        continue;
    else
        c=1;
    end
end
n=input("\n total no. of iterations : ");
e=input("\n accuracy : ");
k=1;
while(c==1 && k<=n)
    x_0=x;
    y=D\b;
    x=x-y;
    
    b=[f1(x(1),x(2)); f2(x(1),x(2))];
    D=[d11(x(1),x(2)), d12(x(1),x(2)); d21(x(1),x(2)), d22(x(1),x(2))];
    if(b(1)==0 && b(2)==0)
        fprintf("\n %14.8f is root",x);
        c=2;
    end
    if(norm(x-x_0,inf)<=e)
        fprintf("\n root is");
                disp(x);

        fprintf("\n with accuracy of %14.8f ",e);
        c=2;
    end
    k=k+1;
end
if k==n+1
    fprintf("\n Maximum number of iteraton reached.  The method fail after %d iterations.\n", n);
end
fprintf("The iterations are given as:\n\n");