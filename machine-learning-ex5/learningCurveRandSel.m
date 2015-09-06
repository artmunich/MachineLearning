function [error_train, error_val] = ...
    learningCurveRandSel(X, y, Xval, yval, lambda)
%LEARNINGCURVERANDSEL Generates the train and cross validation set errors 
%needed to plot a learning curve
%   [error_train, error_val] = ...
%       LEARNINGCURVERANDSEL(X, y, Xval, yval, lambda) returns the train and
%       cross validation set errors for a learning curve. In particular, 
%       it returns two vectors of the same length - error_train and 
%       error_val. Then, error_train(i) contains the training error for
%       i examples (and similarly for error_val(i)).
%
m = size(X,1);
error_train = zeros(m, 1);
error_val   = zeros(m, 1);
ntrial = 20;

for i = 1:m
    for j = 1:ntrial
        sel = randperm(size(X,1),i);
        X_sel = X(sel,:);
        y_sel = y(sel);
        X_sel_val = Xval(sel,:);
        y_sel_val = yval(sel);

        theta = trainLinearReg(X_sel,y_sel,lambda); 
        error_train(i) = error_train(i) + ...
                         linearRegCostFunction(X_sel,y_sel,theta,0);
        error_val(i) = error_val(i) + ...
                       linearRegCostFunction(X_sel_val,y_sel_val,theta,0);
    end
end
error_train = error_train / ntrial;
error_val = error_val /ntrial;
