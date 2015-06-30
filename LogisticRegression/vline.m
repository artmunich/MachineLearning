function h = vline(x,style,linewidth)
% vline(x,style,linewidth)
%
% Plot vertical line at x
% Inputs: 
%   x = scalar or vector of x-values
%   style = string, e.g., '--k' for plot style       
%
% Andreas Mavrommatis 2013
%
% APM 2013

if nargin < 2
    style = 'b';
    linewidth = 1;
elseif nargin < 3
    linewidth = 1;
end
hold on
ax = axis;
if numel(x) == 1
    h = plot([x x], [ax(3) ax(4)],style,'linewidth',linewidth);
else
    for i = 1:length(x)
        if i == 1
            h = plot([x(i) x(i)], [ax(3) ax(4)],style,'linewidth',linewidth);
        else
            h = plot([x(i) x(i)], [ax(3) ax(4)],style,'linewidth',linewidth);
        end
    end
end
