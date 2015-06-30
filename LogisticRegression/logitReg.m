%Plot the logistic function
%Author: Xiaowei Huai
%2051/06/30

clear;close all;clc;
t=-10:0.01:10;
ft=1./(1+exp(-t));


figure();
plot(t,ft,'b-','LineWidth',1.5)
hline(0.5,'k',1.5)
vline(0,'k',1.5)
grid on
box on

%Here I would like Y-axis tick label be just 0,0.5 and 1.
font(14)
set(gca,'ylim',[0,1])
set(gca,'YTick',[0,0.5,1])
set(gca,'YTickLabel',{'0','0.5','1'})

set(gca,'xlim',[-6,6])
set(gca,'XTick',[-6,-4,-2,0,2,4,6])
set(gca,'XTickLabel',{'-6','-4','-2','0','2','4','6'})

labels('t','\sigma(t)',14)
title('The Logistic Function')
print(gcf,'-dpng','logitReg.png')