function [sq_dists] = calcSqDistances(X,Kmus)
    N = size(X,1);
    K = size(Kmus,1);
    
    sq_data = sum((X.*X),2);
    sq_centers = sum((Kmus.*Kmus),2);

    sq_dists= repmat(sq_data,1,K) - 2*X*Kmus'+ repmat(sq_centers',N,1);
end