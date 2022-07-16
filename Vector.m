clear all
clc

% You give desired length and angle, it calculates the coordinates

L1 = 5;
theta1 = 60;
x1 = L1*cosd(theta1);
y1 = L1*sind(theta1);
P1 = [x1;y1]

fprintf('-------------------------------------------------------------\n')

% You give desired coordinates, it calculates length & angle of the vector

x2 = 4.3301;
y2 = 2.50;
P2 = [x2;y2];
L2 = sqrt(x2^2 + y2^2)
theta2 = atand(y2/x2)

fprintf('-------------------------------------------------------------\n')

% You give two desired points, it calculates distance b/w the two points

PAx = 8.6603
PAy = 5

PBx = 4.3301
PBy = 2.5

Distance = sqrt((PBx-PAx)^2 + (PBy-PAy)^2)







