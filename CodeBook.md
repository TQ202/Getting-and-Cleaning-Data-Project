# Code Book

This code book describes each of the variables found in `tidyData.txt`

##Identifiers

* subject - the ID of the participant
* activitylabel - the type of activity performed when measurements were taken

##Types of Activities Performed

* WALKING - the subject was walking during the test
* WALKING_UPSTAIRS - subject was walking up a staircase during the test
* WALKING_DOWNSTAIRS - subject was walking down a staircase during the test
* SITTING - subject was sitting during the test
* STANDING - subject was standing during the test
* LAYING - subject was laying down during the test

##Measurements

Measurements prefixed with 't' denote time domain signals while those prefixed with 'f' indicate frequency domain signals. Measurements suffixed with '-x', '-y' or '-z' denote signals in the x, y and z directions respectively. These signals were used to estimate variables of the feature vector for each pattern. 

* tbodyaccmeanx
* tbodyaccmeany
* tbodyaccmeanz
* tbodyaccstdx
* tbodyaccstdy
* tbodyaccstdz
* tgravityaccmeanx
* tgravityaccmeany
* tgravityaccmeanz
* tgravityaccstdx
* tgravityaccstdy
* tgravityaccstdz
* tbodyaccjerkmeanx
* tbodyaccjerkmeany
* tbodyaccjerkmeanz
* tbodyaccjerkstdx
* tbodyaccjerkstdy
* tbodyaccjerkstdz
* tbodygyromeanx
* tbodygyromeany
* tbodygyromeanz
* tbodygyrostdx
* tbodygyrostdy
* tbodygyrostdz
* tbodygyrojerkmeanx
* tbodygyrojerkmeany
* tbodygyrojerkmeanz
* tbodygyrojerkstdx
* tbodygyrojerkstdy
* tbodygyrojerkstdz
* tbodyaccmagmean
* tbodyaccmagstd
* tgravityaccmagmean
* tgravityaccmagstd
* tbodyaccjerkmagmean
* tbodyaccjerkmagstd
* tbodygyromagmean
* tbodygyromagstd
* tbodygyrojerkmagmean
* tbodygyrojerkmagstd
* fbodyaccmeanx
* fbodyaccmeany
* fbodyaccmeanz
* fbodyaccstdx
* fbodyaccstdy
* fbodyaccstdz
* fbodyaccmeanfreqx
* fbodyaccmeanfreqy
* fbodyaccmeanfreqz
* fbodyaccjerkmeanx
* fbodyaccjerkmeany
* fbodyaccjerkmeanz
* fbodyaccjerkstdx
* fbodyaccjerkstdy
* fbodyaccjerkstdz
* fbodyaccjerkmeanfreqx
* fbodyaccjerkmeanfreqy
* fbodyaccjerkmeanfreqz
* fbodygyromeanx
* fbodygyromeany
* fbodygyromeanz
* fbodygyrostdx
* fbodygyrostdy
* fbodygyrostdz
* fbodygyromeanfreqx
* fbodygyromeanfreqy
* fbodygyromeanfreqz
* fbodyaccmagmean
* fbodyaccmagstd
* fbodyaccmagmeanfreq
* fbodybodyaccjerkmagmean
* fbodybodyaccjerkmagstd
* fbodybodyaccjerkmagmeanfreq
* fbodybodygyromagmean
* fbodybodygyromagstd
* fbodybodygyromagmeanfreq
* fbodybodygyrojerkmagmean
* fbodybodygyrojerkmagstd
* fbodybodygyrojerkmagmeanfreq
