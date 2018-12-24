# Code Book

This code book covers the dataset found in the Tidy_data.txt file available in this repository.

The information on the source dataset is available at http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones.

See README.md for an overview of the repository and the list of transformations the source data has been subjected to to produce the Tidy_data.txt dataset.

## Data
The tidy_data.txt data file is a text file, containing space-separated values.

The first row contains the names of the variables, which are listed and described in the Variables section, and the following rows contain the values of these variables.

## Variables
Each row contains, for a given subject and activity, 79 averaged signal measurements.

## Identifiers
Subject

Subject identifier, integer, ranges from 1 to 30.

## Activity

Activity identifier, string with 6 possible values:

WALKING: subject was walking
WALKING_UPSTAIRS: subject was walking upstairs
WALKING_DOWNSTAIRS: subject was walking downstairs
SITTING: subject was sitting
STANDING: subject was standing
LAYING: subject was laying

## Average of measurements

All measurements are floating-point values, normalised and bounded within [-1,1].

Prior to normalisation, acceleration measurements (variables containing Accelerometer) were made in g's (9.81 m.s⁻²) and gyroscope measurements (variables containing Gyroscope) were made in radians per second (rad.s⁻¹).

Magnitudes of three-dimensional signals (variables containing Magnitude) were calculated using the Euclidean norm.

The measurements are classified in two domains:

Time-domain signals (variables prefixed by timeDomain), resulting from the capture of accelerometer and gyroscope raw signals.

Frequency-domain signals (variables prefixed by frequencyDomain), resulting from the application of a Fast Fourier Transform (FFT) to some of the time-domain signals.

### Time-domain signals
Average time-domain body acceleration in the X, Y and Z directions:

TimeDomain Body Accelerometer Mean X
TimeDomain Body Accelerometer Mean Y
TimeDomain Body Accelerometer Mean Z

Standard deviation of the time-domain body acceleration in the X, Y and Z directions:

TimeDomain Body Accelerometer StandardDeviation X
TimeDomain Body Accelerometer StandardDeviation Y
TimeDomain Body Accelerometer StandardDeviation Z

Average time-domain gravity acceleration in the X, Y and Z directions:

TimeDomain Gravity Accelerometer Mean X
TimeDomain Gravity Accelerometer Mean Y
TimeDomain Gravity Accelerometer Mean Z

Standard deviation of the time-domain gravity acceleration in the X, Y and Z directions:

TimeDomain Gravity Accelerometer StandardDeviation X
TimeDomain Gravityv Accelerometer StandardDeviation Y
TimeDomain Gravity Accelerometer StandardDeviation Z

Average time-domain body acceleration jerk (derivation of the acceleration in time) in the X, Y and Z directions:

TimeDomain Body Accelerometer Jerk Mean X
TimeDomain Body Accelerometer Jerk Mean Y
TimeDomain Body Accelerometer Jerk Mean Z

Standard deviation of the time-domain body acceleration jerk (derivation of the acceleration in time) in the X, Y and Z directions:

TimeDomain Body Accelerometer Jerk StandardDeviation X
TimeDomain Body Accelerometer Jerk StandardDeviation Y
TimeDomain Body Accelerometer Jerk StandardDeviation Z

Average time-domain body angular velocity in the X, Y and Z directions:

TimeDomain Body Gyroscope Mean X
TimeDomain Body Gyroscope Mean Y
TimeDomain Body Gyroscope Mean Z

Standard deviation of the time-domain body angular velocity in the X, Y and Z directions:

TimeDomain Body Gyroscope StandardDeviation X
TimeDomain Body Gyroscope StandardDeviationY
TimeDomain Body Gyroscope StandardDeviation Z

Average time-domain body angular velocity jerk (derivation of the angular velocity in time) in the X, Y and Z directions:

TimeDomain Body Gyroscope Jerk Mean X
TimeDomain Body Gyroscope Jerk Mean Y
TimeDomain Body Gyroscope Jerk Mean Z

Standard deviation of the time-domain body angular velocity jerk (derivation of the angular velocity in time) in the X, Y and Z directions:

TimeDomain Body Gyroscope Jerk StandardDeviation X
TimeDomain Body Gyroscope Jerk StandardDeviation Y
TimeDomain Body Gyroscope Jerk StandardDeviation Z

Average and standard deviation of the time-domain magnitude of body acceleration:

TimeDomain Body Accelerometer Magnitude Mean
TimeDomain Body Accelerometer Magnitude StandardDeviation

Average and standard deviation of the time-domain magnitude of gravity acceleration:

TimeDomain Gravity Accelerometer Magnitude Mean
TimeDomain Gravity Accelerometer Magnitude StandardDeviation

Average and standard deviation of the time-domain magnitude of body acceleration jerk (derivation of the acceleration in time):

TimeDomain Body Accelerometer Jerk Magnitude Mean
TimeDomain Body Accelerometer Jerk Magnitude StandardDeviation

Average and standard deviation of the time-domain magnitude of body angular velocity:

TimeDomain Body Gyroscope Magnitude Mean
TimeDomain Body Gyroscope Magnitude StandardDeviation

Average and standard deviation of the time-domain magnitude of body angular velocity jerk (derivation of the angular velocity in time):

TimeDomain Body Gyroscope Jerk Magnitude Mean
TimeDomain Body Gyroscope Jerk Magnitude StandardDeviation

###Frequency-domain signals

Average frequency-domain body acceleration in the X, Y and Z directions:

FrequencyDomain Body Accelerometer Mean X
FrequencyDomain Body Accelerometer Mean Y
FrequencyDomain Body Accelerometer Mean Z

Standard deviation of the frequency-domain body acceleration in the X, Y and Z directions:

FrequencyDomain Body Accelerometer StandardDeviation X
FrequencyDomain Body Accelerometer StandardDeviation Y
FrequencyDomain Body Accelerometer StandardDeviation Z

Weighted average of the frequency components of the frequency-domain body acceleration in the X, Y and Z directions:

FrequencyDomain Body Accelerometer Mean Frequency X
FrequencyDomain Body Accelerometer Mean Frequency Y
FrequencyDomain Body Accelerometer Mean Frequency Z

Average frequency-domain body acceleration jerk (derivation of the acceleration in time) in the X, Y and Z directions:

FrequencyDomain Body Accelerometer Jerk Mean X
FrequencyDomain Body Accelerometer Jerk Mean Y
FrequencyDomain Body Accelerometer Jerk Mean Z

Standard deviation of the frequency-domain body acceleration jerk (derivation of the acceleration in time) in the X, Y and Z directions:

FrequencyDomain Body Accelerometer Jerk Standard Deviation X
FrequencyDomain Body Accelerometer Jerk StandardDeviation Y
FrequencyDomain Body Accelerometer Jerk StandardDeviation Z

Weighted average of the frequency components of the frequency-domain body acceleration jerk (derivation of the acceleration in time) in the X, Y and Z directions:

FrequencyDomain Body Accelerometer Jerk Mean Frequency X
FrequencyDomain Body Accelerometer Jerk Mean Frequency Y
FrequencyDomain Body Accelerometer Jerk Mean Frequency Z

Average frequency-domain body angular velocity in the X, Y and Z directions:

FrequencyDomain Body Gyroscope Mean X
FrequencyDomain Body Gyroscope Mean Y
FrequencyDomain Body Gyroscope Mean Z

Standard deviation of the frequency-domain body angular velocity in the X, Y and Z directions:

FrequencyDomain Body Gyroscope StandardDeviation X
FrequencyDomain Body Gyroscope StandardDeviation Y
FrequencyDomain Body Gyroscope StandardDeviation Z

Weighted average of the frequency components of the frequency-domain body angular velocity in the X, Y and Z directions:

FrequencyDomain Body Gyroscope Mean Frequency X
FrequencyDomain Body Gyroscope Mean Frequency Y
FrequencyDomain Body Gyroscope Mean Frequency Z

Average, standard deviation, and weighted average of the frequency components of the frequency-domain magnitude of body acceleration:

FrequencyDomain Body Accelerometer Magnitude Mean
FrequencyDomain Body Accelerometer Magnitude StandardDeviation
FrequencyDomain Body Accelerometer Magnitude Mean Frequency

Average, standard deviation, and weighted average of the frequency components of the frequency-domain magnitude of body acceleration jerk (derivation of the acceleration in time):

FrequencyDomain Body Accelerometer Jerk Magnitude Mean
FrequencyDomain Body Accelerometer Jerk Magnitude StandardDeviation
FrequencyDomain Body Accelerometer Jerk Magnitude Mean Frequency

Average, standard deviation, and weighted average of the frequency components of the frequency-domain magnitude of body angular velocity:

FrequencyDomain Body Gyroscope Magnitude Mean
FrequencyDomain Body Gyroscope Magnitude StandardDeviation
FrequencyDomain Body Gyroscope Magnitude Mean Frequency

Average, standard deviation, and weighted average of the frequency components of the frequency-domain magnitude of body angular velocity jerk (derivation of the angular velocity in time):

FrequencyDomain Body Gyroscope Jerk Magnitude Mean
FrequencyDomain Body Gyroscope Jerk Magnitude StandardDeviation
FrequencyDomain Body Gyroscope Jerk Magnitude Mean Frequency