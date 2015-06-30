%scatterdata.m
clear;close all;clc
m = csvread('data.csv');
scatter(m(:,1),m(:,2),'filled')
axis([0 80 0 140])
xlabel('\fontsize{14}x');ylabel('\fontsize{14}y')
box on;grid on;
print(gcf,'-dpng','scatterdata.png')