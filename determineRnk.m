function responsibility = determineRnk(sqDmat)
  num_cols = size(sqDmat, 2);
  min_vect = repmat(min(sqDmat,[],2),1,num_cols);
  responsibility = (min_vect==sqDmat);
end