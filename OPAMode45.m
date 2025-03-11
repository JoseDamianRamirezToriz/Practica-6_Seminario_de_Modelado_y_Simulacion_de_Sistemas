%--- Condiciones iniciales ---%
x0 = [0, 0]; % [iL(0), Vc(0)]

%--- Tiempo de simulación ---%
tspan = [0, 2]; % Simulación de 0.01ms

%--- Resolver el sistema con ODE45 ---%
[t, x] = ode45(@OPAM, tspan, x0);

%--- Graficar los resultados ---%
figure(1);
plot(t, x(:, 1), 'Y', 'LineWidth', 1.5); % Voltaje en 
hold on;


% Configurar fondo negro y colores
set(gca, 'Color', 'k', 'XColor', 'b', 'YColor', 'b', 'GridColor', 'b');

title('Voltaje de Salida del Circuito', 'Color', 'b');
xlabel('Tiempo (s)', 'Color', 'b');
ylabel('Voltaje', 'Color', 'b');
legend({'V_C (V)'}, 'TextColor', 'b', 'EdgeColor', 'b');

grid on;