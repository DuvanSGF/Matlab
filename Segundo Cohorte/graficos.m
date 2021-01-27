% Tasa de I
c = [ 2019-4 2018 2019 2020 2021]
v = [4.5 4.3 4.2 3.8 1.8]
% Desempleo
a = [ 2019-4 2018 2019 2020 2021]
d = [10.9 9.8 10.8 11.4 14.2]
plot(a,d, 'b--')

title('Tasa de interes VS Desempleo ')
xlabel('Año ')
ylabel('[%]')

% plottools
% axis([ 0 2021 0 5]) 

grid


%% 

x = 112:680;
y = sind(x);
z = cosd(x);

a = 5:0.1:5;
b = 5:0.1:5; 
[X,Y] = meshgrid(a,b);
c = X .* exp(-X.^2 - Y.^2);
mesh(a,b,c)


guide