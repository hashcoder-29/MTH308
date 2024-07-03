clc; clear all; close all;
a = 1;
b = 2;
sum = a + b
a^2;
s = sqrt(a)

%matrix
A = [1 2]
B = [3 4; 5 6]
C = [1 2 3; 4 5 6]


% linspace (equispaced)
aa = 0;
bb = 1;
num = 5;
grid1 = linspace(aa,bb,num)

% defined spacing
cc = 0;
dd = 1;
spacing = 0.2;
grid2 = cc:spacing:dd

% matrices
D = [1 2 3; 3 4 5];
E = [44 55 66; 11 22 33];
F = [1 2;3 4;5 6];
sum1 = D + E
product1 = D.*E  % element wise multiplication
product2 = E*F   % usual multiplication
division1 = D./E % element wise division

% matrices with all elements 1
I1 = ones(3)
I2 = ones(1,3)
I3 = ones(2,5)

% matrices with all elements 0
Z1 = zeros(3)
Z2 = zeros(2,3)

% identity matrix
E1 = eye(3)

disp(A)

% diagonal matrix
diag(A)
diag(A,1)  % super diagonal
diag(A,-1) % sub diagonal

% vector % plot
x = linspace(0,10,50);   % grid
y = sin(10*x);           % function
plot(x,y,'linewidth',2); % plot

% determinant
S = [1 2 6; 3 4 5; 6 8 9];
det(S)
% accessing any element of a matrix

S(2,3)