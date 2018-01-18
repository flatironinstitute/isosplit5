function run_tests

% Note, if you run "compile_mex_isosplit5" from the matlab/ directory then
% you can run the pure C++ version via isosplit5_mex. The below version is
% primarily matlab, but uses C++ for the low-level jisotonic5 call.

% add the necessary paths
path0=fileparts(mfilename('fullpath')); %directory of this script
addpath([path0,'/matlab']); % provides isosplit5
addpath([path0,'/matlab/visualization']); % provides view_clusters()

% Generate the data
X=generate_example_data();

% Run the clustering
labels=isosplit5(X);

% Display the results
figure;
view_clusters(X,labels);

function X=generate_example_data
X1=randn(2,400);
X2=randn(2,400); X2(1,:)=X2(1,:)+4; X2(2,:)=X2(2,:)+4;
X3=randn(2,200); X3(1,:)=X3(1,:)+8;
X=cat(2,X1,X2,X3);
labels=cat(2,ones(1,size(X1,2)*1),ones(1,size(X2,2))*2,ones(1,size(X3,2))*3);
%figure;
%view_clusters(X,labels);