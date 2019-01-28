
% addpath EEGLAB
addpath('C:\Users\shawn\Desktop\eeglab15rc1')
eeglab

% import EEG from xdf file

EEG = pop_loadxdf('C:\Users\shawn\Desktop\Presentation\exp_reading\code\exp_reading_S1.xdf' , 'streamtype', 'EEG', 'exclude_markerstreams', {});
EEG = pop_select( EEG, 'nochannel',{'Trig1' 'EX3' 'EX4' 'EX5' 'EX6' 'EX7' 'EX8'});

pop_saveset(EEG,'filename','exp_reading_S1');

%--------------------------------------------------------------------------
%           EEG Preprocessing
%--------------------------------------------------------------------------

EEG = pop_loadset('exp_reading_S1.set');
