function [  ] = plot_rgb(stat)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here

figure;
ylim([-1000000 1000000]);
hold on;
plot(stat(:,1),'r');
plot(stat(:,2),'g');
plot(stat(:,3),'b');
hold off;

end

