
fileName = 'KukaHexapod_Commands.mat';

hexAngleCmds_deg = out.hexAngleCmds_deg;
hexPositionCmds_mm = out.hexPositionCmds_mm;
kukaJointPositionCmds_deg = out.kukaJointPositionCmds_deg;

save(fileName, 'hexAngleCmds_deg', 'hexPositionCmds_mm', 'kukaJointPositionCmds_deg')