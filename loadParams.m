
% Path to kuka urdf and graphics
addpath('kuka_iiwa');

% Model Name
mdlName = 'KukaHexapod_Simulation';

% Set Test ID
TestID = 2;

endTime = 600;

if TestID == 1

    % Test 1 is a sinusoidal motion of joint 4 using a simple base body
    % Joint 4 moves with an amplitude of  45 deg and a period of  30 seconds
    BASE_TYPE = 0;  % 0 = Simple base plate
                    % 1 = Rectangular chief
    
    Kuka_mass_pct = 0.2;  % Percent contribution of Kuka arm to total mass

elseif TestID == 2
    % Test 2 is a sinusoidal motion of joints 1, 2, and 6 ursing a large chief base body
    % Joint 1 moves with an amplitude of 115 deg and a period of 120 seconds
    % Joint 2 moves with an amplitude of  45 deg and a period of  30 seconds
    % Joint 6 moves with an amplitude of  30 deg and a period of  10 seconds

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