function h = hline(y,style,linewidth)
% h = hline(y,style,linewidth)
%
% Plot horizontal line at y.
% Inputs: 
%   y = scalar or vector of y-values
%   style = string, e.g., '--k' for plot style       
%
% Andreas Mavrommatis 2013

if nargin < 2
    style = 'b';
    linewidth = 1;
end
hold on
ax = axis;
if numel(y) == 1
    h = plot([ax(1) ax(2)], [y y], style,'linewidth',linewidth);
else
    for i = 1:length(y)
        if i == 1
            h = plot([ax(1) ax(2)], [y(i) y(i)], style,'linewidth',linewidth);
        else
            h = plot([ax(1) ax(2)], [y(i) y(i)], style,'linewidth',linewidth);
        end
    end
end
