function Radar(time,map,P8pos)
% RADAR Radar Support Subsystem Model Algorithms
%   
% Inputs:
%   time: Current simulation time.
%   map: Environment represented as a grayscale image
%   P8pos: Map coordinates of the P8, which carries the radar system.
% Outputs:
%   
% Persistent Variables:
%   trackData: ?
% 
% Last Revised:
%   5 August 2014

persistent trackData

if isempty(trackData) % Was just initialized for the first time
    
end

trackID = 1;
x = 1;
y = 1;
speed = 0; % 0:Unknown, 1:Slow, 2:Fast
size = 0; % 0:Unknown, 1:Small, 2:Large

trackData(end+1,:) = [trackID,time,x,y,speed,size];

end

% F.3.0.1.1 Get Radar FOR (Field of Regard)
% F.3.0.1.2 Search for Tracks
% F.3.0.2 Analyze Tracks
% F.3.0.2.1 Determine Size
% F.3.0.2.2 Determine track position absolute
% F.3.0.2.3 Create Master Radar Track List
% F.3.0.2.4 Correlate Tracks
% F.3.0.2.5 Determine Track Velocity
% F.3.0.2.6 Build/Update track File
% F.3.0.3 Publish Track Files


