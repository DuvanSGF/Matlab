p = [3 0 -2 0 1 5];
q = polyder(p)

%% Estructuras

cliente.id = 1;
cliente.name = 'mafe';
cliente.lastname = 'rodriguez';
cliente.city = 'Bogota'; 
cliente.email = 'mafe@outlook.com'


celda(1)= {'Duvan Mejia'}
celda(2) = {eye(4)}
A = [false false true true]
B = [false true false true]


for v = 1.0:-0.2:0.0
    t = 2 * v;
   disp(v);
   end7
   
   
   
A = ones(2,3);
B = rand(3,4,5);
if isequal(size(A),size(B))
   C = [A; B];
else
   disp('A and B are not the same size.')
   C = [];
end