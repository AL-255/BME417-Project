% Read files

PRTrackodd = readmatrix('PRTrackodd.csv');
PRTrackeven = readmatrix('PRTrackeven.csv');
BipTrackodd = readmatrix('BipTrackodd.csv');
BipTrackeven = readmatrix('BipTrackeven.csv');
GanTrackodd = readmatrix('GanTrackodd.csv');
GanTrackeven = readmatrix('GanTrackeven.csv');

PRTrack = combineoddeven(PRTrackodd, PRTrackeven);
BipTrack = combineoddeven(BipTrackodd, BipTrackeven);
GanTrack = combineoddeven(GanTrackodd, GanTrackeven);
