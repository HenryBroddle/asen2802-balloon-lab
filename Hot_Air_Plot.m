clc; close; clear all;

R = 0.287; % Gas Constant of air (KJ / (kg * K))
m_Balloon = 0.0273; % kg
V_Balloon = 0.113; % m^3

Altitude = linspace(1,10500,10500);
[T_Env,a,P_Env,Rho_Env] = atmoscoesa(Altitude);

T_Balloon = ((1 ./ T_Env) - ((R .* m_Balloon) ./ ((P_Env ./ 1000) .* V_Balloon))) .^ -1;

Max_Altitude = 0;
counter = 0;
for i = 1:10500
    if(T_Balloon(i) > 522 && counter == 0)
        Max_Altitude = i;
        counter = counter + 1;
    end
    if (T_Balloon(i) > 522)
        T_Balloon(i) = NaN;
    end
end

plot(Altitude, T_Balloon, 'LineWidth', 2)
xlabel('Altitude [m]')
ylabel('Temperature of Balloon [K]')
title('Temperature of Balloon vs Altitude')
hold on
xline(Max_Altitude, '--b')
yline(522, '--r')
legend('Temperature of Balloon', 'Max Altitude', 'Max Temperature', 'location', 'best');