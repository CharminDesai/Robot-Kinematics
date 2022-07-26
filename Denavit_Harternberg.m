clear all
clc

% 2-DOF 2D Manipulator Calculations. 
% Two revolute joints (rotation in degrees)

L1 = 1;
L2 = 1;
j1 = 0;                                                                    % joint1 
j2 = 0;                                                                    % joint2 
j12 = j1+j2;

A01 = [cosd(j1) -sind(j1) 0 L1*cosd(j1); sind(j1) cosd(j1) 0 L1*sind(j1); 0 0 1 0; 0 0 0 1]
fprintf('Position of L1 after joint1 rotation =')
P_L1 = [A01(1,4); A01(2,4); A01(3,4); A01(4,4)]

A12 = [cosd(j2) -sind(j2) 0 L2*cosd(j2); sind(j2) cosd(j2) 0 L2*sind(j2); 0 0 1 0; 0 0 0 1];
fprintf('Position of L2 in joint1 frame =');
[A12(1,4); A12(2,4); A12(3,4); A12(4,4)];

H02 = A01*A12
fprintf('Position of L2 after joint2 rotation =')
P_L2 = [H02(1,4); H02(2,4); H02(3,4); H02(4,4)]

fprintf('-------------------------------------------------------------\n')
