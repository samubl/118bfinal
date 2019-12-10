# 118bfinal
## COGS 118B Fall 2019 Final Project
### Authors: 
Samuel Blake, Sneha Naren, Chelsea Challacombe

### Purpose: 
Using K-Means to Cluster 3D Accelorometer and Gryoscopic Smartphone Data from Human Activity 

### What it does: 
1. Using the 'Human Activity Recognition Using Smartphones Data Set', an attempt is made to cluster Accelerometer and Gyroscopic averages.
2. The accelerometer averages and gyroscopic averages in the X, Y, and Z directions are obtained for each sample in the training data set.
3. Since each sample in the dataset is attributed to a Human Activity Type (WALKING, WALKING_DOWNSTAIRS, WALKING_UPSTAIRS, LAYING, SITTING, STANDING), a scatterplot of these means as their activity is presented, as a goal for K-Means.
4. Next, the K-Means algorithm is run 100 times for 4 different settings.
The first setting is using the K-Means algorithm to cluster the acceleromter means into 2 clusters. The goal clustering would have the datapoints be differentitated by activities that are either dynamic or stationary activities.
The second setting is using the K-Means algorithm to cluster the acceleromter means into 6 clusters. The goal clustering would have the datapoints be differentitated by the Human Activity Types outlined above.
The third setting is is using the K-Means algorithm to cluster the gryoscopic means into 2 clusters. The goal clustering would have the datapoints be differentitated by activities that are either dynamic or stationary activities.
The fourth setting is using the K-Means algorithm to cluster the gyroscopic means into 6 clusters. The goal clustering would have the datapoints be differentitated by the Human Activity Types outlined above.
5. For each of the different settings, the average number of iterations it took for K-Means to converge (change in Kmus <= 1e-8) is output as well as an example of the distribution of activity type per found cluster for error analysis.


### How to run: 
1. Clone repo
2. Add matlab executable location to $PATH.
3. On command line, run: 
```matlab
matlab -nodesktop -nosplash -r "run('<path-to-repo>/main.m');exit"
```
