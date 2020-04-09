clear all
close all
clc

%%% PARTE I - OPERACOES BASICAS COM NUMEROS COMPLEXOS

% Definindo uma constante complexa
z = -2 -6*j

% Somente a parte real
real(z)

% Somente a parte imaginaria
imag(z)

% Salvando a parte real e imaginaria da constante complexa em 
% variaveis auxiliares
realz = real(z);
imagz = imag(z);

%%% Calculo do módulo

% Primeira forma
sqrt(realz^2+imagz^2)

% Segunda forma
conj(z)
sqrt(z*conj(z))

% Terceira forma
abs(z)

%%% Obtendo a fase

% Primeira forma
angle(z)

% Segunda forma
atan2(imagz, realz)


% Para converter de radianos para graus
angle(z)*180/pi
rad2deg(angle(z))

%%

%%% PARTE II - OPERACOES BASICAS COM VETORES

% Declarando vetor linha com elementos reais igualmente espaçados
a = [0:4:20]

% Declarando vetor linha com elementos fracionários igualmente espaçados
b = [15:-27/4:0]

% Gerando um vetor a partir da funçao linspace
linspace(2.5, 17.5, 12)

% Verificando passo default da criação de vetores
c = [0:10]

%%% Calculando resultado de uma função para diferentes valores 

% Primeiro: definir o vetor k
k = [0:5]

% Segundo: definir a funcao
l = exp(j*(pi/2 + 2*pi*k/2))

% Caso seja interessante saber l para 100 valores de k
% é necessario definirmos k novamente e entao chamar a funcao l de novo
k = [0:99]
l = exp(j*(pi/3 + 2*pi*k/3))

% Para acessar uma solucao em particular
l(7)

% Para acessar mais do que um valor simultaneamente
l(65:70)
%%

%%%PARTE III - GRAFICOS

% Primeiro precisamos definir uma função para plota-la
% Para tal, devemos definir o intervalo
% Neste caso o termo independente sera t
t = (0:0.005:5);

% Definir a funcao
f = sin(2*pi*t+pi/3);

% Funcao para plotar
plot(t,f)

% Os rótulos do gráfico podem ser adicionados usando comandos:
figure(1)
xlabel('t')
ylabel('f')
title('Grafico')
grid on

% Definindo uma segunda funcao
g = exp(-3*t);

% Para multiplicarmos g(t) por h(t) é necessario multiplicar
% elemento por elemento
h = f.*g;
figure(2)
plot(t,f,'-k',t,h,':k')
xlabel('t')
ylabel('Amplitude')
legend('f(t)', 'h(t)')
grid on

% Para plotar duas funcoes no mesmo grafico
hold on
plot(t,f)

% Para desabilitar duas funções no mesmo grafico
hold off
%%
%%% PARTE IV - OPERACOES BASICAS COM MATRIZES

% Para criar uma matriz identidade
eye(4)
eye(6,5)

% Para criar uma matriz de zeros
zeros(4,6)

% Para criar uma matriz de 1s
ones(6,4)

% Criar uma matriz a partir de um vetor
x = [3 5 7 9]
diag(x)

% Declarando uma matriz
a = [3 5 7; 3 7 9; 3 9 11; 3 11 13]

% Concatenando duas matrizes
b = [1; 2 ; 3; 4]
c = [b a]

% Acessar um valor especifico da matriz
c(3,3)
c(2,:)
c(:,4)

%%% PARTE V - SOLUCAO DE SISTEMA LINEAR

% Declarando as matrizes do sistema
A = [2 -3 4; -sqrt(4) 2 -sqrt(7); 4 -sqrt(8) 2]
Y = [3; 2*pi; exp(2)]

% Solucao do sistema
X = inv(A)*Y

% Demais operacoes
det(A) 		%Determinante de A;
inv(A) 		%Inversa de A;
sum(A)      %Soma os valores das colunas de A;
A'          %transposta de A;
size(A) 	%Número de linhas e de colunas de A;











