M=[486,495,486,481,487,490,500,501,506,498,482,497,498,499,500,510,509,492,493,485,495,504,491,498,500,499,497,506,506,509,489,486,490,490,489,495,497,492,481,501,509,506,503,504,480,487,491,499,483,487,495,500,502,498,492];
I=1:55;

histfit(data)

data=[I',M'] %Traspuestas%
histfit(data)

pd = fitdist(r,'Normal')

pie(M)

filename='C:\Users\Mr Mejia\Desktop\ejecricio.csv' %Guardamos%

csvwrite(filename,data)

csvwrite(filename,data)


histfit(M)

M = data(:,2)
pie(M)
title('Grafico de Torta')



