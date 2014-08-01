% MATLAB initialization for SE4151 Simulation

% Get folder where this script lives
mainDir = fileparts(mfilename('fullpath'));
% % Break it apart into folder names
% mainDir = regexp(mainDir,filesep,'split');
% % Put it back together without the last one
% mainDir = fullfile(mainDir{1:end-1});

% Tell MATLAB to look in these folders and all their subfolders when
% looking for functions and other resources.
addpath(genpath(mainDir))
% % Make the Simulation main directory the active directory
% cd(mainDir)
