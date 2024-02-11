function dx=P4_MovRyT(t,x)
%----Definicion de Parámetros---------
m = 10;    % Masa
r=0.05;    % Radio
k=100;     % Constante del resorte

%----Definicion de Matrices----
A= [0 1; -(2*k*r^2*x(1))/(3*m*r^2) 0]; 
%----Descomponer el vector de estado----
theta = x(1);
theta_dot = x(2);

%----Definir las ecuaciones diferenciales----
theta_dot2 = -(2*k*r^2*theta) / (3*m*r^2);

dx=zeros(2,1);
dx(1:2)=[theta_dot; theta_dot2];



