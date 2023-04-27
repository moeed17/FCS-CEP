
% Import data from Excel
data= xlsread('data1');
% extract RPM and RPS data into separate columns
rps=data(1:31, 1);
rpm=data(1:31, 2);
t=data(1:31, 3);
% smoothen data with default exponential moving average
rps_avg=smooth(rps);
rpm_avg=smooth(rpm);
% plot original vs smoothened data
% RPS
figure()
plot(t,rps); hold();plot(t,rps_avg);
legend('Original', 'Moving Average'); grid();
ylim([0, 4]); title('DC Motor Step Response - RPS');
xlabel('time');
ylabel('Disc Speed(RPS)');
% RPM
figure()
plot(t,rpm); hold(); plot(t,rpm_avg);
legend('Original', 'Moving Average'); grid(); ylim([0,220]);
title('DC Motor Step Response - RPM');
xlabel('time');
ylabel('Disc Speed(RPM)'); 


