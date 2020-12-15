%% Solucion del parcial
%% Duvan Mejia Cortes - 20181169878
%% Ejercicio 1 
x = input("Ingrese la altura: ");
a = input("Ingresa el angulo Alpha: ");
t = tand(a);
d = (x/t);
disp("La distancia del barco y la costa es de: ");
disp(d + " m.");

%% Ejercicio 2
% Amplitud 10 y frecuencia 100Hz
subplot(2,1,1)
t=0:0.1:50; 
x=10*sin(2*pi*0.1*t);
plot(t,x,'r')
xlabel('milisegundos')
ylabel('Amplitud')
title('Amplitud 10 y frecuencia 100Hz')
ylim([-11,11])
grid on

% Amplitud 5 y frecuencia 100Hz
subplot(2,1,2)
x=5*sin(2*pi*0.1*t);
plot(t,x,'r')
ylim([-10,10])
xlabel('milisegundos')
ylabel('Amplitud')
title('Amplitud 5 y frecuencia 100Hz')
ylim([-11,11])
grid on
%% Ejercicio 3: 
%clear all;
format bank;
x = [ 3.51 4.32 2.31 4.23 3.54];
s = sum(x);
p = mean(x);
disp(p);

%% Ejercicio 4:
%clear all;
x = 1002:16.2:3420;
n = numel(x);
disp(n);
d = reshape(x,[10,15]);
disp(d);
%% Ejercicio 5:
%clear all;
a = input(" Ingresa V1: ");
b = input(" Ingresa V2: ");
c = input(" Ingresa V3: ");
d = input(" Ingresa V4: ");

pa = a * 4000;
pb = b * 3500;
pc = c * 2000;
pd = d * 500;

z = [pa pb pc pd];
j = sum(z);
f = j/10000;
disp("El precio Ponderado es de: ")
disp(f);

















