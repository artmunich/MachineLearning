%residual error analysis
clear;close all;clc
data=load('ex1data1.txt');
x=data(:,1);
y=data(:,2);
fittype='poly1';
f=fit(x,y,fittype);
re=y-feval(f,x);
plot(x,re,'rx','markersize',10)
hold on
hline(0,'-k',1.5)
hline(-5,'--k',1)
hline(5,'--k',1)
xlabel('\fontsize{14}x')
ylabel('\fontsize{14}Residual Error')

print(gcf,'-dpng','re.png')
