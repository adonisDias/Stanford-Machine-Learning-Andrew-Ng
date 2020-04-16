# QUESTAO 1
A = [1 2; 3 4; 5 6]
B = [1 2 3; 4 5 6]

C = A' + B; #Correto
C = B * A; #Correto
C = A + B; #Errado pois não possuem as mesmas colunas e linhas
C = B' * A; #Errado pois o total de Colunas da primeira matriz deve ser igual ao total das linhas da segunda



# QUESTAO 2
A = [16  2   3   13;
     5   11  10  8;
     9   7   6   12;
     4   14  15  1];

#primeira coluna indica as linhas e a sugunda coluna indica as colunas.     
B = A(:, 1:2);


# QUESTAO 3
V = zeros(10, 1);
for i = 1:10
  for j = 1:10
    v(i) = v(i) + A(i, j) * a(j)
  end
end

V = A * x

# QUESTAO 4
V = ones(7, 1)
W = ones(7, 1)

>> V'
ans =

   1   1   1   1   1   1   1

>> V' * W
error: 'W' undefined near line 1 column 6
>> W = ones(7, 1)
W =

   1
   1
   1
   1
   1
   1
   1

>> V' * W
ans =  7


#QUESTAO 5
for i = 1:7
  for j = 1:7
    A(i, j) = log(X(i, j));
    B(i, j) = X(i, j) ^ 2;
    C(i, j) = X(i, j) + 1;
    D(i, j) = X(i, j) / 4;
  end
end

 ??>> X= ones(7,7)
X =

   1   1   1   1   1   1   1
   1   1   1   1   1   1   1


   1   1   1   1   1   1   1
   1   1   1   1   1   1   1
   1   1   1   1   1   1   1
   1   1   1   1   1   1   1
   1   1   1   1   1   1   1

>> B = X ^ 2;
>> B
B =

   7   7   7   7   7   7   7
   7   7   7   7   7   7   7
   7   7   7   7   7   7   7
   7   7   7   7   7   7   7
   7   7   7   7   7   7   7
   7   7   7   7   7   7   7
   7   7   7   7   7   7   7
   
>> B = X .^ 2;
>> B
B =

   1   1   1   1   1   1   1
   1   1   1   1   1   1   1
   1   1   1   1   1   1   1
   1   1   1   1   1   1   1
   1   1   1   1   1   1   1
   1   1   1   1   1   1   1
   1   1   1   1   1   1   1   

     
     
     