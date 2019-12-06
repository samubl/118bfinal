% u_k = Sum(r_nk * x_n) / Sum(r_nk)
function [Kmus] = recalcMus(X, Rnk)
    total = X' * Rnk;
    num_cols = size(X, 2)
    num = repmat(sum(Rnk, 1)',1,num_cols);
    Kmus = total' ./ num;
end
