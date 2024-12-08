% Read Coordinate values into a matrix
BipoddX = readmatrix('BipoddX.csv');
BipoddY = readmatrix('BipoddY.csv');
BipevenX = readmatrix('BipevenX.csv');
BipevenY = readmatrix('BipevenY.csv');
Bipodd = combineoddeven(BipoddX, BipoddY);
Bipeven = combineoddeven(BipevenX, BipevenY);

GanoddX = readmatrix('GanoddX.csv');
GanoddY = readmatrix('GanoddY.csv');
GanevenX = readmatrix('GanevenX.csv');
GanevenY = readmatrix('GanevenY.csv');
Ganodd = combineoddeven(GanoddX, GanoddY);
Ganeven = combineoddeven(GanevenX, GanevenY);