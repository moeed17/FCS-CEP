% 2) then run this code. and in this too the first section i.e values intiate
%    while doing above comment out the next portion of code beginning with
%    num=(kt)
% 3) run the simulink model (athar ki qismat) with these random values. donot include PID
%    block rn
% 4) do parameter estimation
% 5) rerun the simulation, update the model with estimated params
% 6) add PID block to model and see stable responses
% 7) comment out the first section of this code file and run the later part
%    of this code

%{
J = 0.01 %kg m2
b = 0.1 %Nms
Kt = 0.01 %Nm/A
Kb = 0.01 
R = 1 %ohm
L = 0.5 %H

%}

num = (Kt);
den = [(L*J) ((L*b)+(R*J)) ((L*b)+(Kb*Kt))];
sys = tf(num,den);
figure,
rlocus(sys);
grid on 

s=tf('s');
tfmotor=(Kt)/((J*s+b)*(L*s+R)+(Kt*Kb));

pzmap(sys)
grid on
