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


%Traza Diagonal y el resto ceros en la matriz
v = [1 2 3 4]
M2 = diag(v)

% Matriz triangula inferior
M = [1 2 3 4; 5 6 7 8; 9 10 11 12]
tril(M)

% Matriz triangula superior
triu(M)

% Cuadrado de todos los numeros en la Matriz
sqrt(M)

%Ahora, elimine la tercera columna.
M(:,3) = []

%Hallar el determinate  de la Matriz
d = det(M)

%Guardamos el polinomio
p = [1 -1 -26 -24]

% Calculamos la raiz
roots(p)

%Evaluo el polinomio cuando p = 1
polyval(p,1)


w=[5 6 7 8]


%Evalúa el polinomio p en todos los valores del vector
disp(w)

polyval(p,w)

disp(v)
roots(v)

% Crea un polinomio q que tenga por 
% raices los elementos del vector v
q = poly(v)
conv(p,q)

%% Division de un polinomio
deconv 
S = conv(p,q)
deconv (S,q)

disp(w)
cross(v,w)

dot(v,w)
 v.*w
 
 disp(v)
 disp(w
 
 % Producto Transpuesto
 V = v.'
 W = w.'
 
 V.*W
 %Define el vector x = (-10,-9,-8,...,6,7,8) 
 %y el vector y que sea el cuadrado de cada elemento
 
 x = [-10,-9,-8, 6, 7 ,8]
 y = p
 
 
 A = [1 3 5; 2 4 7];
B = [-5 8 11; 3 9 21; 4 0 8];

C = A*B
disp(x)
y = x,x.^2

D = rad2deg(R)

h = cosd(180)
D = rad2deg(h)