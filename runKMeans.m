function [numIter, act_cluster_distr]=runKMeans(K, data, dataname)
%load tBody and gBody data

% split it into X and Y
X = data(:,1:3);
Y = data(:,4);

% if we just want to explore dynamic vs stationary
if (K == 2)
    Y(Y<4) = 1;
    Y(Y>3) = 2;
end

%determine and store data set information
N=size(X,1);
D=size(X,2);

%allocate space for the K mu vectors
Kmus=zeros(K,D);

%initialize cluster centers by randomly picking points from the data
rndinds=randperm(N);
Kmus=X(rndinds(1:K),:);

%specify the maximum number of iterations to allow
maxiters=1000;
numIter = 0;

for iter=1:maxiters
    %assign each data vector to closest mu vector as per Bishop (9.2)
    %do this by first calculating a squared distance matrix where the n,k entry
    %contains the squared distance from the nth data vector to the kth mu vector

    %sqDmat will be an N-by-K matrix with the n,k entry as specfied above
    sqDmat=calcSqDistances(X,Kmus);
    
    %given the matrix of squared distances, determine the closest cluster
    %center for each data vector 

    %R is the "responsibility" matrix
    %R will be an N-by-K matrix of binary values whose n,k entry is set as 
    %per Bishop (9.2)
    %Specifically, the n,k entry is 1 if point n is closest to cluster k,
    %and is 0 otherwise
    Rnk=determineRnk(sqDmat);
    
    KmusOld=Kmus;
    %plotCurrent(X,Rnk,Kmus,0,dataname);
    %pause(1)
    
    %recalculate mu values based on cluster assignments as per Bishop (9.4)
    Kmus=recalcMus(X,Rnk);

    %check to see if the cluster centers have converged.  If so, break.
    if sum(abs(KmusOld(:)-Kmus(:)))<1e-8
        %disp(iter);
        numIter = iter;
        break
    end
end

plotCurrent(X,Rnk,Kmus,1,dataname);

%% error: needs K, Rnk, Y
% intuition: for each cluster. establish the distribution of activity labels in that cluster to see how good it did
% for that cluster, (the kth row of the kxk mtx), get the actual activity label (from Y at indx of Rnk mtx), and increase that value of kxk

% init K by K mtx, where each row represents a cluster and each column represents an activity label
act_cluster_distr = zeros(K,K);

% for each datapoint in the Rnk mtx, find out what cluster it got put in, and it's actual activity label
for row=1:N
    act_label = Y(row);
    clust = 1;
    while (Rnk(row, clust) ~= 1)
        clust = clust + 1;
    end
    % increase the count for this activity in this cluster
    act_cluster_distr(clust, act_label) = act_cluster_distr(clust, act_label) + 1;
end    

