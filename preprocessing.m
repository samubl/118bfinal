% for each person:
% -get the means of their accelometer in the XYZ directions (cols 1,2,3), produce new data set with label
% 1 tBodyAcc-mean()-X, 2 tBodyAcc-mean()-Y, 3 tBodyAcc-mean()-Z
% -get the means of their gyroscope in the XYZ direction (cols 121-123), 
% 121: tBodyGyro-mean()-X, 122: tBodyGyro-mean()-Y, 123: tBodyGyro-mean()-Z

% get people from subject_id_train

% labels: get label enums from activity_labels
% if interested in only specific labels 
% labels 1-3 are Dynamic Movements
% labels 4-6 are Stationary actions
% suppose interested in labels 1-3 (1: WALKING, 2: WALKING_UPSTAIRS, 3: WALKING_DOWNSTAIRS)
% finds rows in y that have those labels
% find those rows in subject_id to get which person it is? (might not be important)
% find those rows in x, get the cols of interest