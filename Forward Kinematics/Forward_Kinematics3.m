clear all
clc

% FORWARD KINEMATICS CALCULATOR/EXPERIMENTATION

% Know the coordinates of a point in two different frames

fprintf('Coordinates of a point in Frame1 =')
P1 = [3;0;0;1] 

fprintf('Angle of Rotation (considering around z-axis) =')
theta = 0                                                               

fprintf('Translation Lengths in x,y,z directions =')
Tx = 1
Ty = 0
Tz = 2

fprintf('Relation between Frame0 and Frame1 (having considered rotation around z-axis)')
H01 = [cosd(theta) -sind(theta) 0 Tx; sind(theta) cosd(theta) 0 Ty; 0 0 1 Tz; 0 0 0 1]

fprintf('\nCoordinates of P1 in Frame0')
P0 = H01*P1 

