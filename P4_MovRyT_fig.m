%----Condiciones iniciales----
theta = 0;        % Posición inicial
theta_dot = 2;    % Velocidad angular inicial
%----Funcion ode45 que resuelve el sistema de movimiento traslacional----
[t,x]=ode45(@P4_MovRyT,[0 20],[theta; theta_dot]);
%----Se crea la figura donde se va a graficar el x con respecto a t----
%    x y t son parametros que retorna la funcion ode45

figure(1);
plot(t,x(:,1));
grid on
title('Posición angular vs Tiempo');
xlabel('Tiempo (s)');
ylabel('Posición angular (rad)');
