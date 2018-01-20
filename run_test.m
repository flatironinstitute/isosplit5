function run_test
% RUN_TEST   Trivial 2D test of isosplit5_mex with plot

% ahb tweaked 1/20/18

% add the necessary paths
path0=fileparts(mfilename('fullpath'));   % directory of this script
addpath([path0,'/matlab']);               % provides isosplit5_mex
addpath([path0,'/matlab/visualization']); % provides view_clusters()

% Generate the data
X=generate_example_data();

% Run the clustering
labels=isosplit5_mex(X);

% Display the results
figure;
view_clusters(X,labels);

function X=generate_example_data
X1=randn(2,400);
X2=randn(2,400); X2(1,:)=X2(1,:)+4; X2(2,:)=X2(2,:)+4;
X3=randn(2,200); X3(1,:)=X3(1,:)+8;
X=cat(2,X1,X2,X3);
labels=cat(2,ones(1,size(X1,2)*1),ones(1,size(X2,2))*2,ones(1,size(X3,2))*3);
