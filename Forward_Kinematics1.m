% YOU MAY NOT MODIFY THIS CODE, FOR ANY CALCULATION/EXPERIMENTATION USE 
% "Forward_Kinematics2.m" or "Forward_Kinematics3.m" FILE.

fprintf('_________________________________________________________________________________________________________________________________________________\n')


% SUPER DUPER CONCEPT! :- Point P0 & P1 in Frame0 & Frame1 respectively, 
% & H01 is the relation b/w Frame0 & Frame1 (how Frame1 appears in Frame0). 

% 1) H01*P0 gives you the new coordinates of P0 in the Frame0 when P0 is
% transformed(rotated and/or translated) about an axis in Frame0.

% 2) H01*P1 gives you the coordinates of point P1 in Frame0. 

clear all
clc

% EXPERIMENT 1

% This demonstrates an experiment, given an initial point, angle of
% rotation and translation lengths in x,y,z axis; it calculates the
% homogeneous transformation matrix and reaching point.

% Note:- Both the transformations(rotation & translation) 
% are put in a single matrix called HT matrix.
% In HT matrix in total, first by convention first rotation occurs 
% and then translation. Check this out done separately in EXPERIMENT 2.

fprintf('EXPERIMENT 1\n')

fprintf('\nInitial Point =')
P1 = [4.3301;2.5;0;1] 

fprintf('Angle of Rotation =')
theta1 = 60                                                               

Tx1 = 5;
Ty1 = 0;
Tz1 = 0;

fprintf('Homogeneous Transformation Matrix for Z axis')
HT_z = [cosd(theta1) -sind(theta1) 0 Tx1; sind(theta1) cosd(theta1) 0 Ty1; 0 0 1 Tz1; 0 0 0 1]

fprintf('\nCoordinates of P1 after Homogeneous Transformation')
P1_HT = HT_z*P1                                                             

fprintf('_________________________________________________________________________________________________________________________________________________\n')

% EXPERIMENT 2

% This demonstrates an experiment given an initial point. First rotation
% occurs, the initial point reaches a point after rotation. Then
% translation occurs and it reaches a final point.

fprintf('EXPERIMENT 2\n')

fprintf('\nInitial Point =')
P2 = [4.3301;2.5;0;1]     

fprintf('Angle of Rotation =')
theta2 = 60                                                                

fprintf('\nRotation Transformation Matrix for Z axis')
ROT_z = [cosd(theta2) -sind(theta2) 0 0; sind(theta2) cosd(theta2) 0 0; 0 0 1 0; 0 0 0 1]

fprintf('\nCoordinates of P2 after Rotation')
P2_ROT = ROT_z*P2                                                           

Tx2 = 5;
Ty2 = 0;
Tz2 = 0;

fprintf('\nTranslation Transformation Matrix')
TRAN = [1 0 0 Tx2; 0 1 0 Ty2; 0 0 1 Tz2; 0 0 0 1]

fprintf('\nCoordinates of P2 after Rotation and translation')
P2_ROT_TRAN = TRAN*P2_ROT

fprintf('_________________________________________________________________________________________________________________________________________________\n')

% EXPERIMENT 3

% This demonstrates an experiment, given an initial point and angle of
% rotation; it calculates the rotation matrix and required translation
% matrix to reach the desired goal point.

fprintf('EXPERIMENT 3\n')

Ip = [8;0;0;1]                                                              % initial point
Gp = [4;8;0;1];                                                             % goal point
ang = 30;                                                                   % angle

Rm = [cosd(ang) -sind(ang) 0 0; sind(ang) cosd(ang) 0 0; 0 0 1 0; 0 0 0 1]; % rotation matrix (for rotation around z-axis)
P_rot = Rm*Ip                                                               % position of Ip after rotation
P_rot_x = P_rot(1,1);                                                       % x coordinate of P_rot
P_rot_y = P_rot(2,1);                                                       % y coordinate of P_rot
trans_x = Gp(1,1) - P_rot_x;                                                % translation through x-axis required to reach Gp after reaching P_rot_x
trans_y = Gp(2,1) - P_rot_y;                                                % translation through y-axis required to reach Gp after reaching P_rot_y
trans_vector = [trans_x; trans_y; 0]                                        % translation vector
Tm = [1 0 0 trans_x; 0 1 0 trans_y; 0 0 1 0; 0 0 0 1];                      % translation matrix
Fp = Tm*P_rot                                                               % Final point
Hm = Tm*Rm;                                                                 % Homogeneous matrix
