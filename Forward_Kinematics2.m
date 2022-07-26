clear all
clc

% FORWARD KINEMATICS CALCULATOR/EXPERIMENTATION

fprintf('\nInitial Point =')
P1 = [4;3;0;1] 

fprintf('Angle of Rotation =')
theta1 = 90                                                               

Tx1 = 0;
Ty1 = 0;
Tz1 = 0;

fprintf('Homogeneous Transformation Matrix for rotation around Z axis')
H01 = [cosd(theta1) -sind(theta1) 0 Tx1; sind(theta1) cosd(theta1) 0 Ty1; 0 0 1 Tz1; 0 0 0 1]

fprintf('\nCoordinates of P1 after Homogeneous Transformation')
P1_H = H01*P1   




