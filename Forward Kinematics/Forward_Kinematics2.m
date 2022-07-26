clear all
clc

% FORWARD KINEMATICS CALCULATOR/EXPERIMENTATION

% Know the coordinates of a point after homogeneous transformation

fprintf('\nInitial Point =')
P = [3;0;0;1] 

fprintf('Angle of Rotation =')
theta = 0                                                               

fprintf('Translation Lengths in x,y,z directions =')
Tx = 1
Ty = 0
Tz = 2

fprintf('Homogeneous Transformation Matrix for rotation around Z axis')
HT = [cosd(theta) -sind(theta) 0 Tx; sind(theta) cosd(theta) 0 Ty; 0 0 1 Tz; 0 0 0 1]

fprintf('\nCoordinates of P after Homogeneous Transformation')
P_HT = HT*P 

