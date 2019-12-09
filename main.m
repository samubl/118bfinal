function main
    [tBody, gBody] = preprocessing('train/X_train.txt', 'train/y_train.txt');
    runKMeans(2, tBody, 'tBody')
    runKMeans(6, tBody, 'tBody')
    runKMeans(2, gBody, 'gBody')
    runKMeans(6, gBody, 'gBody')
    
