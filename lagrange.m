%interpolación polinomial
disp('INTERPOLACION DE LAGRANGE');
disp('-------------------------');
n=input('Ingrese el grado:');
xr=input('Ingrese el valor a estimar:');
disp('Ingrese los puntos muestrales');
disp('-----------------------------');
x=zeros(1,n+1);
y=zeros(1,n+1);
for i=1:n+1
    x(i)=input(sprintf('x(%d)=', i));
    y(i)=input(sprintf('y(%d)=', i));
end
yr=0;
for i=1:n+1
    j=1;
    NL=1;
    DL=1;
    while(j<=n+1)
        if (i~=j) || (j~=n+1)
            if (i==j)
                j=j+1;
            end
             NL=NL*(xr-x(j));
            DL=DL*(x(i)-x(j));
        end
        j=j+1;
    end
    yr=yr+(NL/DL)*y(i);
end
disp(yr);

