clear all
clc

% 2-DOF 2D Manipulator Calculations. 
% Two revolute joints (rotation in degrees). Note: Calculations are shown
% and done as per first joint1 rotates and then joint2.

% FRAME0(BASE FRAME) = F0 = JOINT1
% FRAME1 = F1 = JOINT2

L1 = 5;                                                                     % length of 1st arm
theta1 = 0                                                                  % angle subtended by 1st arm (before any rotation)
joint1 = 30                                                                 % desried angle of rotation of 1st arm
x1 = L1*cosd(theta1); 
y1 = L1*sind(theta1);
fprintf('Position of L1 in FRAME0, before any joint1 rotation = [x1;y1;0;1]')
L1_F0 = [x1;y1;0;1]

fprintf('Rotation Matrix for joint1 rotation around z-axis')
R01 = [cosd(joint1) -sind(joint1) 0 0; sind(joint1) cosd(joint1) 0 0; 0 0 1 0; 0 0 0 1]

fprintf('Position of L1 in FRAME0, after joint1 rotation = R01*L1_F0')
P1 = R01*L1_F0

fprintf('--------------------------------------------------------------\n')

L2 = 3;                                                                     % length of 2nd arm
theta2 = 0                                                                  % angle subtended by 2nd arm (before any rotation)
joint2 = 120                                                                 % desried angle of rotation of 2nd arm
x2 = L2*cosd(theta2);
y2 = L2*sind(theta2);
fprintf('Position of L2 in FRAME1, before any joint2 rotation = [x2;y2;0;1]')
L2_F1 = [x2;y2;0;1]

fprintf('Rotation Matrix for joint2 rotation around z-axis')
R12 = [cosd(joint2) -sind(joint2) 0 0; sind(joint2) cosd(joint2) 0 0; 0 0 1 0; 0 0 0 1]

fprintf('--------------------------------------------------------------\n')

theta1F = theta1 + joint1;                                                  % final angle subtended by 1st arm (after the joint1 rotation)
fprintf('Relation b/w FRAME0 and FRAME1 (for joint1 rotation by 30)')
H01 = [cosd(theta1F) -sind(theta1F) 0 P1(1,1); sind(theta1F) cosd(theta1F) 0 P1(2,1); 0 0 1 P1(3,1); 0 0 0 1]

fprintf('Position of L2 in FRAME0, after joint1 rotation but before joint2 rotation = H01*L2_F1')
L2_F0 = H01*L2_F1

fprintf('Position of L2 in FRAME1, after joint2 rotation = R12*L2_F1')
L2_F1 = R12*L2_F1

fprintf('--------------------------------------------------------------\n')

fprintf('Position of L2 in FRAME0, after joint2 rotation = H01*L2_F1')
P2 = H01*L2_F1

