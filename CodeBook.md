The original data were collected from the UCI Machine Learning Repository and 
represent data collected from the accelerometers from the Samsung Galaxy S 
smartphone. The measurements come from the accelerometer and gyroscope 3-axial
raw signals. A seperate measurement was recorded for each direction, denoted with
the letters x, y, z.
The acceleration signal was separated into body and gravity acceleration signals.
Subsequently, the body linear acceleration and angular velocity were derived
in time to obtain Jerk signals. Also the magnitude of these three-dimensional
signals were calculated using the Euclidean norm. Finally, a Fast Fourier Transform
(FFT) was applied to some of these signals. For an exact description of the
original variables see:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

The original dataset was processed (see README file for exact steps) and concluded 
to a final dataset which contains average measurements of specific variables for 
each subject and activity. The variables of the final dataset are described below.
As a general rule, variables with the prefix "time" refer to time domain signals, 
while variables starting with "freq" indicate frequency domain signals produced by
applying a Fast Fourier Transform (FFT) to the original signals. Also, 
"Accelaration" refers to measurements from the accelerometer and "Gyroscope" 
refers to measurements from the gyroscope. The suffix x, y or z indicates the
direction. Furthermore, "Jerk" refers to Jerk signals and "Magnitude" refers to 
the magnitude of the signals calculated using the Euclidean norm.

Finally, every variable contains the average of the corresponding initial measurement
per subject and specific activity. The variables have no unit since the original 
values were normalized and bounded within [-1,1].


subject

    Description: Unique identification of the subject who performed the activity
    Data Type: integer
    Values: 1..30
activity:
    Description: The name of the activity
    Data Type: factor
    Values: LAYING, SITTING, STANDING, WALKING, WALKING_DOWNSTAIRS, WALKING_UPSTAIRS
timeBodyAcceleration_mean_X
    Description: Average value for the mean body acceleration signal on the x direction
    Data Type: number
    Values: 0.2216..0.3015
timeBodyAcceleration_mean_Y
    Description: Average value for the mean body acceleration signal on the y direction
    Data Type: number
    Values: -0.040514..-0.001308
timeBodyAcceleration_mean_Z
    Description: Average value for the mean body acceleration signal on the z direction
    Data Type: number
    Values: -0.15251..-0.07538
timeBodyAcceleration_std_X
    Description: Average value for the standard deviation of the body acceleration 
                 signal on the x direction
    Data Type: number
    Values: -0.9961..0.6269
timeBodyAcceleration_std_Y
    Description: Average value for the standard deviation of the body acceleration 
                 signal on the y direction
    Data Type: number
    Values: -0.99024..0.61694
timeBodyAcceleration_std_Z
    Description: Average value for the standard deviation of the body acceleration 
                 signal on the z direction
    Data Type: number
    Values: -0.9877..0.6090
timeGravityAcceleration_mean_X
    Description: Average value for the mean gravity acceleration signal on the x direction
    Data Type: number
    Values: -0.6800..0.9745
timeGravityAcceleration_mean_Y
    Description:  Average value for the mean gravity acceleration signal on the y direction
    Data Type: number
    Values: -0.47989..0.95659
timeGravityAcceleration_mean_Z
    Description:  Average value for the mean gravity acceleration signal on the z direction
    Data Type: number
    Values: -0.49509..0.95787
timeGravityAcceleration_std_X
    Description: Average value for the standard deviation of the gravity acceleration 
                 signal on the x direction
    Data Type: number
    Values: -0.9968..-0.8296
timeGravityAcceleration_std_Y
    Description: Average value for the standard deviation of the gravity acceleration 
                 signal on the y direction
    Data Type: number
    Values: -0.9942..-0.6436
timeGravityAcceleration_std_Z
    Description: Average value for the standard deviation of the gravity acceleration 
                 signal on the z direction
    Data Type: number
    Values: -0.9910..-0.6102
timeBodyAccelerationJerk_mean_X
    Description: Average value for the mean Jerk signal from the body acceleration
                 on the x direction
    Data Type: number
    Values: 0.04269..0.13019
timeBodyAccelerationJerk_mean_Y
    Description: Average value for the mean Jerk signal from the body acceleration
                 on the y direction
    Data Type: number
    Values: -0.0386872..0.0568186
timeBodyAccelerationJerk_mean_Z
    Description: Average value for the mean Jerk signal from the body acceleration
                 on the z direction
    Data Type: number
    Values: -0.067458..0.038053
timeBodyAccelerationJerk_std_X
    Description: Average value for the standard deviation of the Jerk signal from
                 the body acceleration on the x direction
    Data Type: number
    Values: -0.9946..0.5443
timeBodyAccelerationJerk_std_Y
    Description: Average value for the standard deviation of the Jerk signal from
                 the body acceleration on the y direction
    Data Type: number
    Values: -0.9895..0.3553
timeBodyAccelerationJerk_std_Z
    Description: Average value for the standard deviation of the Jerk signal from
                 the body acceleration on the y direction
    Data Type: number
    Values: -0.99329..0.03102
timeBodyGyroscope_mean_X
    Description: Average value for the mean body angular velocity signal on the x
                 direction
    Data Type: number
    Values: -0.20578..0.19270
timeBodyGyroscope_mean_Y
    Description: Average value for the mean body angular velocity signal on the y
                 direction
    Data Type: number
    Values: -0.20421..0.02747
timeBodyGyroscope_mean_Z
    Description: Average value for the mean body angular velocity signal on the z
                 direction
    Data Type: number
    Values: -0.07245..0.17910
timeBodyGyroscope_std_X
    Description: Average value for the standard deviation of the body angular
                 velocity signal on the x direction
    Data Type: number
    Values: -0.9943..0.2677
timeBodyGyroscope_std_Y
    Description: Average value for the standard deviation of the body angular
                 velocity signal on the y direction
    Data Type: number
    Values: -0.9942..0.4765
timeBodyGyroscope_std_Z
    Description: Average value for the standard deviation of the body angular
                 velocity signal on the y direction
    Data Type: number
    Values: -0.9855..0.5649
timeBodyGyroscopeJerk_mean_X
    Description: Average value for the mean Jerk signal from the body angular
                 velocity on the x direction
    Data Type: number
    Values: -0.15721..-0.02209
timeBodyGyroscopeJerk_mean_Y
    Description: Average value for the mean Jerk signal from the body angular
                 velocity on the y direction
    Data Type: number
    Values: -0.07681..-0.01320
timeBodyGyroscopeJerk_mean_Z
    Description: Average value for the mean Jerk signal from the body angular
                 velocity on the z direction
    Data Type: number
    Values: -0.092500..-0.006941
timeBodyGyroscopeJerk_std_X
    Description: Average value for the standard deviation of the Jerk signal from
                 the body angular velocity on the x direction
    Data Type: number
    Values: -0.9965..0.1791
timeBodyGyroscopeJerk_std_Y
    Description: Average value for the standard deviation of the Jerk signal from
                 the body angular velocity on the y direction
    Data Type: number
    Values: -0.9971..0.2959
timeBodyGyroscopeJerk_std_Z
    Description: Average value for the standard deviation of the Jerk signal from
                 the body angular velocity on the z direction
    Data Type: number
    Values: -0.9954..0.1932
timeBodyAccelerationMagnitude_mean
    Description: Average value for the mean magnitude of the body acceleration
                 signal
    Data Type: number
    Values: -0.9865..0.6446
timeBodyAccelerationMagnitude_std
    Description: Average value for the standard deviation of the  magnitude of
                 the body acceleration signal
    Data Type: number
    Values: -0.9865..0.4284
timeGravityAccelerationMagnitude_mean
    Description: Average value for the mean magnitude of the gravity acceleration
                 signal
    Data Type: number
    Values: -0.9865..0.6446
timeGravityAccelerationMagnitude_std
    Description: Average value for the standard deviation of the  magnitude of
                 the gravity acceleration signal
    Data Type: number
    Values: -0.9865..0.4284
timeBodyAccelerationJerkMagnitude_mean
    Description: Average value for the mean magnitude of the Jerk signal from the
                 body acceleration
    Data Type: number
    Values:  -0.9928..0.4345
timeBodyAccelerationJerkMagnitude_std
    Description: Average value for the standard deviation of the magnitude of the
                 Jerk signal from the body acceleration
    Data Type: number
    Values: -0.9946..0.4506
timeBodyGyroscopeMagnitude_mean
    Description: Average value for the mean magnitude of the body angular velocity
                 signal
    Data Type: number
    Values: -0.9807..0.4180
timeBodyGyroscopeMagnitude_std
    Description: Average value for the standard deviation of the magnitude of the
                 body angular velocity signal
    Data Type: number
    Values: -0.9814..0.3000
timeBodyGyroscopeJerkMagnitude_mean
    Description: Average value for the mean magnitude of the Jerk signal from the
                 body angular velocity
    Data Type: number
    Values: -0.99732..0.08758
timeBodyGyroscopeJerkMagnitude_std
    Description: Average value for the standard deviation of the magnitude of the
                 Jerk signal from the body angular velocity
    Data Type: number
    Values: -0.9977..0.2502
freqBodyAcceleration_mean_X
    Description: Average value for the mean of the FFT on body acceleration signal
                 on the x direction
    Data Type: number
    Values: -0.9952..0.5370
freqBodyAcceleration_mean_Y
    Description: Average value for the mean of the FFT on body acceleration signal
                 on the y direction
    Data Type: number
    Values: -0.98903..0.52419
freqBodyAcceleration_mean_Z
    Description: Average value for the mean of the FFT on body acceleration signal
                 on the z direction
    Data Type: number
    Values: -0.9895..0.2807
freqBodyAcceleration_std_X
    Description: Average value for the standard deviation of the FFT on body
                 acceleration signal on the x direction
    Data Type: number
    Values: -0.9966..0.6585
freqBodyAcceleration_std_Y
    Description: Average value for the standard deviation of the FFT on body
                 acceleration signal on the y direction
    Data Type: number
    Values: -0.99068..0.56019
freqBodyAcceleration_std_Z
    Description: Average value for the standard deviation of the FFT on body
                 acceleration signal on the z direction
    Data Type: number
    Values: -0.9872..0.6871
freqBodyAccelerationJerk_mean_X
    Description: Average value for the mean of the FFT on Jerk signal from the
                 body acceleration on the x direction
    Data Type: number
    Values: -0.9946..0.4743
freqBodyAccelerationJerk_mean_Y
    Description: Average value for the mean of the FFT on Jerk signal from the
                 body acceleration on the y direction
    Data Type: number
    Values: -0.9894..0.2767
freqBodyAccelerationJerk_mean_Z
    Description: Average value for the mean of the FFT on Jerk signal from the
                 body acceleration on the z direction
    Data Type: number
    Values: -0.9920..0.1578
freqBodyAccelerationJerk_std_X
    Description: Average value for the standard deviation of the FFT on Jerk signal
                 from the body acceleration on the x direction
    Data Type: number
    Values: -0.9951..0.4768
freqBodyAccelerationJerk_std_Y
    Description: Average value for the standard deviation of the FFT on Jerk signal
                 from the body acceleration on the y direction
    Data Type: number
    Values: -0.9905..0.3498
freqBodyAccelerationJerk_std_Z
    Description: Average value for the standard deviation of the FFT on Jerk signal
                 from the body acceleration on the z direction
    Data Type: number
    Values: -0.993108..-0.006236
freqBodyGyroscope_mean_X
    Description: Average value for the mean of the FFT on body angular velocity
                 signal on the x direction
    Data Type: number
    Values: -0.9931..0.4750
freqBodyGyroscope_mean_Y
    Description: Average value for the mean of the FFT on body angular velocity
                 signal on the y direction
    Data Type: number
    Values: -0.9940..0.3288
freqBodyGyroscope_mean_Z
    Description: Average value for the mean of the FFT on body angular velocity
                 signal on the z direction
    Data Type: number
    Values: -0.9860..0.4924
freqBodyGyroscope_std_X
    Description: Average value for the standard deviation of the FFT on body
                 angular velocity signal on the x direction
    Data Type: number
    Values: -0.9947..0.1966
freqBodyGyroscope_std_Y
    Description: Average value for the standard deviation of the FFT on body
                 angular velocity signal on the y direction
    Data Type: number
    Values: -0.9944..0.6462
freqBodyGyroscope_std_Z
    Description: Average value for the standard deviation of the FFT on body
                 angular velocity signal on the z direction
    Data Type: number
    Values: -0.9867..0.5225
freqBodyAccelerationMagnitude_mean
    Description: Average value for the mean of the FFT on magnitude of the body
                 acceleration signal
    Data Type: number
    Values: -0.9868..0.5866
freqBodyAccelerationMagnitude_std
    Description: Average value for the standard deviation of the FFT on magnitude
                 of the body acceleration signal
    Data Type: number
    Values: -0.9876..0.1787
freqBodyAccelerationJerkMagnitude_mean
    Description: Average value for the mean of the FFT on magnitude of the Jerk
                 signal from the body acceleration
    Data Type: number
    Values: -0.9940..0.5384
freqBodyAccelerationJerkMagnitude_std
    Description: Average value for the standard deviation of the FFT on magnitude
                 of the Jerk signal from the body acceleration
    Data Type: number
    Values: -0.9944..0.3163
freqBodyGyroscopeMagnitude_mean
    Description: Average value for the mean of the FFT on magnitude of the body
                 angular velocity signal
    Data Type: number
    Values: -0.9865..0.2040
freqBodyGyroscopeMagnitude_std
    Description: Average value for the standard deviation of the FFT on magnitude
                 of the body angular velocity signal
    Data Type: number
    Values: -0.9815..0.2367
freqBodyGyroscopeJerkMagnitude_mean
    Description: Average value for the mean of the FFT on magnitude of the Jerk
                 signal from the body angular velocity
    Data Type: number
    Values: -0.9976..0.1466
freqBodyGyroscopeJerkMagnitude_std
    Description: Average value for the standard deviation of the FFT on magnitude
                 of the Jerk signal from the body angular velocity
    Data Type: number
    Values: -0.9976..0.2878

