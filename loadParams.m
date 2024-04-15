
% Path to kuka urdf and graphics
addpath('kuka_iiwa');

% Set Test ID

% Test 1 is a sinusoidal motion of joint 4 using a simple base body
% Joint 4 moves with an amplitude of  45 deg and a period of  30 seconds

% Test 2 is a sinsoidal motion of joints 3, 4, and 6 ursing a large chief base body
% Joint 3 moves with an amplitude of 115 deg and a period of 120 seconds
% Joint 4 moves with an amplitude of  45 deg and a period of  30 seconds
% Joint 6 moves with an amplitude of  30 deg and a period of  10 seconds

TestID = 2;


endTime = 600;

if TestID == 1
    BASE_TYPE = 0;  % 0 = Simple base plate
                    % 1 = Rectangular chief

    Kuka_mass_pct = 0.2;  % Percent contribution of Kuka arm to total mass

elseif TestID == 2
    BASE_TYPE = 1;  % 0 = Simple base plate
                    % 1 = Rectangular chief

    Kuka_mass_pct = 0.1;  % Percent contribution of Kuka arm to total mass
end

% Define variables for use in the varient subsystem block 
VSS_SimpleBasePlate   = Simulink.Variant('BASE_TYPE==0');
VSS_RectangularChief  = Simulink.Variant('BASE_TYPE==1');

% Mass property definition
kuka_total_mass = 22.5;   %kg
base_mass = kuka_total_mass/Kuka_mass_pct;  %kg calculated based on Kuka pct