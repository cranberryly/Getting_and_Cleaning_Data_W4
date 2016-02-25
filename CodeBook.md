{\rtf1\ansi\ansicpg1252\cocoartf1348\cocoasubrtf170
{\fonttbl\f0\fswiss\fcharset0 Helvetica;}
{\colortbl;\red255\green255\blue255;}
\margl1440\margr1440\vieww14640\viewh8400\viewkind0
\deftab420
\pard\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardeftab420\ri720

\f0\fs24 \cf0 \expnd0\expndtw0\kerning0
# Code Book\
\
\pard\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\ri-2168\pardirnatural
\cf0 \kerning1\expnd0\expndtw0 ### This code book describes the variables, the data, and any transformation or work that I performed to clean up the data.\
\pard\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural
\cf0 \
\expnd0\expndtw0\kerning0
\
\pard\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardeftab420\ri720
\cf0 ## Data Information\
\
\pard\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardeftab420\ri-2163
\cf0 ### The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data.\
\pard\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardeftab420\ri720
\cf0 \
\pard\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardeftab420\ri-2156
\cf0 ### The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.\
\pard\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardeftab420\ri720
\cf0 \
\
## Attributes Information\
\
### For each record in the dataset it is provided:\
\
\pard\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardeftab420\ri-2164
\cf0 * Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.\
\pard\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardeftab420\ri-2163
\cf0 * Triaxial Angular velocity from the gyroscope.\
\pard\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardeftab420\ri720
\cf0 * A 561-feature vector with time and frequency domain variables.\
* Its activity label.\
* An identifier of the subject who carried out the experiment.\
\
\
## Output Data Fields in tidy_data.txt.\
\
* Identifiers\
### subject - The ID of the test subject\
### activity - The type of activity performed when the corresponding measurements were taken\
\
* Measurements\
### timeBodyAccelerometerMeanX\
### timeBodyAccelerometerMeanY\
### timeBodyAccelerometerMeanZ\
### timeBodyAccelerometerStdX\
### timeBodyAccelerometerStdY\
### timeBodyAccelerometerStdZ\
### timeGravityAccelerometerMeanX\
### timeGravityAccelerometerMeanY\
### timeGravityAccelerometerMeanZ\
### timeGravityAccelerometerStdX\
### timeGravityAccelerometerStdY\
### timeGravityAccelerometerStdZ\
### timeBodyAccelerometerJerkMeanX\
### timeBodyAccelerometerJerkMeanY\
### timeBodyAccelerometerJerkMeanZ\
### timeBodyAccelerometerJerkStdX\
### timeBodyAccelerometerJerkStdY\
### timeBodyAccelerometerJerkStdZ\
### timeBodyGyroscopeMeanX\
### timeBodyGyroscopeMeanY\
### timeBodyGyroscopeMeanZ\
### timeBodyGyroscopeStdX\
### timeBodyGyroscopeStdY\
### timeBodyGyroscopeStdZ\
### timeBodyGyroscopeJerkMeanX\
### timeBodyGyroscopeJerkMeanY\
### timeBodyGyroscopeJerkMeanZ\
### timeBodyGyroscopeJerkStdX\
### timeBodyGyroscopeJerkStdY\
### timeBodyGyroscopeJerkStdZ\
### timeBodyAccelerometerMagnitudeMean\
### timeBodyAccelerometerMagnitudeStd\
### timeGravityAccelerometerMagnitudeMean\
### timeGravityAccelerometerMagnitudeStd\
### timeBodyAccelerometerJerkMagnitudeMean\
### timeBodyAccelerometerJerkMagnitudeStd\
### timeBodyGyroscopeMagnitudeMean\
### timeBodyGyroscopeMagnitudeStd\
### timeBodyGyroscopeJerkMagnitudeMean\
### timeBodyGyroscopeJerkMagnitudeStd\
### frequencyBodyAccelerometerMeanX\
### frequencyBodyAccelerometerMeanY\
### frequencyBodyAccelerometerMeanZ\
### frequencyBodyAccelerometerStdX\
### frequencyBodyAccelerometerStdY\
### frequencyBodyAccelerometerStdZ\
### frequencyBodyAccelerometerJerkMeanX\
### frequencyBodyAccelerometerJerkMeanY\
### frequencyBodyAccelerometerJerkMeanZ\
### frequencyBodyAccelerometerJerkStdX\
### frequencyBodyAccelerometerJerkStdY\
### frequencyBodyAccelerometerJerkStdZ\
### frequencyBodyGyroscopeMeanX\
### frequencyBodyGyroscopeMeanY\
### frequencyBodyGyroscopeMeanZ\
### frequencyBodyGyroscopeStdX\
### frequencyBodyGyroscopeStdY\
### frequencyBodyGyroscopeStdZ\
### frequencyBodyAccelerometerMagnitudeMean\
### frequencyBodyAccelerometerMagnitudeStd\
### frequencyBodyAccelerometerJerkMagnitudeMean\
### frequencyBodyAccelerometerJerkMagnitudeStd\
### frequencyBodyGyroscopeMagnitudeMean\
### frequencyBodyGyroscopeMagnitudeStd\
### frequencyBodyGyroscopeJerkMagnitudeMean\
### frequencyBodyGyroscopeJerkMagnitudeStd\
\
* Activity Labels\
### walking (value 1): subject was walking during the test\
### walkingUpstairs (value 2): subject was walking up a staircase during the test\
\pard\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardeftab420\ri-2159
\cf0 ### walkingDownstairs (value 3): subject was walking down a staircase during the test\
\pard\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardeftab420\ri720
\cf0 ### sitting (value 4): subject was sitting during the test\
### standing (value 5): subject was standing during the test\
### laying (value 6): subject was laying down during the test\
\
\pard\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural
\cf0 \kerning1\expnd0\expndtw0 \
\
\
\
}