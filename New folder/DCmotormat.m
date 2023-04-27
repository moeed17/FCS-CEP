
J = 0.01 %kg m2
b = 0.1 %Nms
Kt = 0.01 %Nm/A
Kb = 0.01 
R = 1 %ohm
L = 0.5 %H


figure(1)
plot(out.t,out.v);
xlabel('time');ylabel('angular speed');ylim([0 0.11])

figure(2)
plot(out.t,out.d);
xlabel('time');ylabel('angular distance');