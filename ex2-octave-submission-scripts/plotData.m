function plotData(X, y)
%PLOTDATA Plots the data points X and y into a new figure 
%   PLOTDATA(x,y) plots the data points with + for the positive examples
%   and o for the negative examples. X is assumed to be a Mx2 matrix.

% Create New Figure
figure; hold on;

% ====================== YOUR CODE HERE ======================
% Instructions: Plot the positive and negative examples on a
%               2D plot, using the option 'k+' for the positive
%               examples and 'ko' for the negative examples.
%
% wrong answer ����һ������Ļ� legend ��������
%iterNum = length(y);
%for iter = 1:iterNum
%  if (y(iter) == 1)
%    plot(X(iter,1),X(iter,2),'k+;hh;');
%  else
%    plot(X(iter,1),X(iter,2),'ko;xx;');
%  endif
%end

% Find Indices of Positive and Negative Examples
pos = find(y==1); neg = find(y == 0);
% Plot Examples
% �Ȼ�y == 1 ��ͼ,��Ӧlegend��һ���ַ���
% �ڻ�y == 1��ͼ,��Ӧlegend�ڶ����ַ���
plot(X(pos, 1), X(pos, 2), 'g+','MarkerSize', 7);
plot(X(neg, 1), X(neg, 2), 'ro','MarkerSize', 7);





% =========================================================================



hold off;

end
