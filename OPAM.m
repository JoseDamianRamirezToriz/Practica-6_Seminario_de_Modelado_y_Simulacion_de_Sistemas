function dx = OPAM(~, x)
    %--- Definición de los parámetros ---%
    R1 = 5e6;     % Resistor1 (Ohm)
    R2 = R1;       % Resistor2 (Ohm)
    R3 = R1;    % Resistor3 (Ohm)
    C1 = 100e-9;     % Capacitor1 (nf)
    C2 = C1;    %Capacitor2 (nf)
    V = 5;    %Voltaje de Entrada (V)


    %--- Estados del sistema ---%
    dx = zeros(2, 1);


    %--- Definición de la dinámica del sistema ---%
    dx(1)= x(2);
    dx(2)=(R2 * V - R1 * R3 * C2 * x(2)) / (R1 * R2 * R3 * C1 * C2);
end