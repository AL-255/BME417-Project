% Read tracking values into a matrix
BipTrackodd = readmatrix('BipTrackodd.csv');
BipTrackeven = readmatrix('BipTrackeven.csv');
BipTrack = combineoddeven(BipTrackodd, BipTrackeven);
writematrix(BipTrack, 'BipTrack.csv');

GanTrackodd = readmatrix('GanTrackodd.csv');
GanTrackeven = readmatrix('GanTrackeven.csv');
GanTrack = combineoddeven(GanTrackodd, GanTrackeven);
writematrix(GanTrack, 'GanTrack.csv');