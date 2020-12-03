%%Clase 2 de Diciembre 2020
% Repaso de vectores. 
x = [3 2 0];
y = [2 -1 0];

%productocruz
cross(x,y)
%punto escalar
dot(x,y)

%Determinante
A=[1 2 3; 4 5 6; 7 8 9]
determinande_A=det(A)
%Matriz inversa
invA=inv(A)
%Valores propios: 
eig(A)
disp(A)

%Reoganizar la matriz
fliplr(A)
flipud(A)


B= reshape(x,[3,2]) %filas,Columnas
rot90(A)
%n veces
rot90(A,2)
B = [1:5]
rot90(B)

%Raiz cuadradad matroz
sqrtm(A)

%Valor Individualds 
sqrt(A)

A = rand(3,4,5)% filas , columas , cantidad
B = permute(A,[3 2 1]);% Me cambia el orden de las dimensiones en este caso filas, coulminas y cantidad
size(B)


