%integración numérica
disp('---------------------');
disp('MÉTODO DEL RECTANGULO');
disp('---------------------');
% Pedir al usuario que ingrese la función
func_str = input('Ingresa la función f(x): ', 's');
% Convertir la cadena ingresada a una función
f = str2func(['@(x) ', func_str]);
disp('INGRESE LOS INTERVALOS DE INTEGRACIÓN');
disp('-------------------------------------');
a=input('a=');
b=input('b=');
disp('INGRESE EL NÚMERO DE PARTICIONES');
disp('--------------------------------');
n=input('n=');
h=(b-a)/n;
s=0;
for i=1:n
    x(i)=a+(i-1)*h;
    s=s+f(x(i));
end
I=h*s;
disp('INTEGRAL NUMÉRICO');
disp('-----------------');
disp(I);