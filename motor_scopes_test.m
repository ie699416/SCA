close all; clc;

figure;
subplot(4,1,1);
plot(out.MotorCD1.time, out.MotorCD1.signals(1).values, '--r',out.MotorCD1.time, out.MotorCD1.signals(2).values, 'b');
title('Salida del Motor CD #1 y su referencia'); xlabel('tiempo (segundos)'); ylabel('Amplitud');
subplot(4,1,2);
plot(out.MotorCD2.time, out.MotorCD2.signals(1).values, '--r',out.MotorCD2.time, out.MotorCD2.signals(2).values, 'b');
title('Salida del Motor CD #2 y su referencia'); xlabel('tiempo (segundos)'); ylabel('Amplitud');
subplot(4,1,3);
plot(out.MotorCD3.time, out.MotorCD3.signals(1).values, '--r',out.MotorCD3.time, out.MotorCD3.signals(2).values, 'b');
title('Salida del Motor CD #3 y su referencia'); xlabel('tiempo (segundos)'); ylabel('Amplitud');
subplot(4,1,4);
plot(out.MotorCD4.time, out.MotorCD4.signals(1).values, '--r',out.MotorCD4.time, out.MotorCD4.signals(2).values, 'b');
title('Salida del Motor CD #4 y su referencia'); xlabel('tiempo (segundos)'); ylabel('Amplitud');
