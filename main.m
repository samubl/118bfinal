function main
    % get the data
    [tBody, gBody] = preprocessing('train/X_train.txt', 'train/y_train.txt');
    
    % view the data
    viewData(2, tBody, 'tBody')
    % get the average number of iterations it takes to converge
    tBody2_avg_iter = 0;
    for i=1:100
        [num_iters, tBody2_cluster_distr] = runKMeans(2, tBody, 'tBody');
        tBody2_avg_iter = tBody2_avg_iter + num_iters;
    end
    tBody2_avg_iter = tBody2_avg_iter / 100
    tBody2_cluster_distr

    % view the data
    viewData(6, tBody, 'tBody')
    % get the average number of iterations it takes to converge
    tBody6_avg_iter = 0;
    for i=1:100
        [num_iters, tBody6_cluster_distr] = runKMeans(6, tBody, 'tBody');
        tBody6_avg_iter = tBody6_avg_iter + num_iters;
    end
    tBody6_avg_iter = tBody6_avg_iter / 100
    tBody6_cluster_distr

    % view the data
    viewData(2, gBody, 'gBody')
    % get the average number of iterations it takes to converge
    gBody2_avg_iter = 0;
    for i=1:100
        [num_iters, gBody2_cluster_distr] = runKMeans(2, gBody, 'gBody');
        gBody2_avg_iter = gBody2_avg_iter + num_iters;
    end
    gBody2_avg_iter = gBody2_avg_iter / 100
    gBody2_cluster_distr

    % view the data
    viewData(6, gBody, 'gBody')
    % get the average number of iterations it takes to converge
    gBody6_avg_iter = 0;
    for i=1:100
        [num_iters, gBody6_cluster_distr] = runKMeans(6, gBody, 'gBody');
        gBody6_avg_iter = gBody6_avg_iter + num_iters;
    end
    gBody6_avg_iter = gBody6_avg_iter / 100
    gBody6_cluster_distr
    
