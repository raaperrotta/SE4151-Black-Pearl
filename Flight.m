function [H60,P8] = flight(time)
% FLIGHT Flight Support Subsystem Model Algorithms
%   
% Inputs:
%   time: Current simulation time.
% Outputs:
%   H60: Updated H60 position as a two element array
%   P8: Updated P8 position as a two element array
% Persistent Variables:
%   trackedPiratePos: An array of coordinate pairs that stores the last N
%     pirate postions given to the function. Any rows not containing
%     position data will contain NaNs.
%   H60Pos: Position of the H60 upon last call to this function.
%   P8Pos: Position of the P8 upon last call to this function.
%   lastTime: Simulation time upon last call to this function.
% 
% Last Revised:
%   30 July 2014


end

% F.2.1 Manage System Memory
function out = subfunction1(in)

memLength = 8; % Number of Pirate positions to remember

% Persistent variables don't get cleared when the function finishes
% executing, like most variables, but also aren't visible or editable by
% other functions the way global variables are.
persistent H60Pos P8Pos lastTime

if isempty(H60Pos)
    
end
out = in;

end

% F.2.2 Determine H60 Trajectory
function out = subfunction2(in)
out = in;
end

% F.2.3 Calculate H60 Position
function out = subfunction3(in)
out = in;
end

% F.2.4 Determine P8 Direct Flight Path
function out = subfunction4(in)
out = in;
end

% F.2.5 P8 Flight Trajectory
function out = subfunction5(in)
out = in;
end

% F.2.6 Calculate P8 Position
function out = subfunction6(in)
out = in;
end
