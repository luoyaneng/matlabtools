function [X, mu, s] = standardizeCols(X, mu, s)
% Make each column of X be zero mean and unit variance 
% ie., var(X(:,j))=1
% If mu and s are omitted, it computed from X and returned for use at test time

% This file is from matlabtools.googlecode.com


if nargin < 2, mu = []; s = []; end
[X,mu] = centerCols(X,mu);
[X,s] = mkUnitVariance(X,s);

end
