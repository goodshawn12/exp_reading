clc;
% close all;

% Make sure eeglab is running with data imported 

num_events = 506; % The number of trials being looked at (506 total)

% Initialize arrays and counters
type_array = zeros(num_events,1); % Array of 'types' of events, given my imported data (initialized)
type_array = string(type_array);

events_array = zeros(num_events,1); % Array of event markers, taken from 'types'(initialized)
events_array = string(events_array);

i = 1;

% Obtain all event markers
while i <= num_events % loop through all the data points
    type_array(i,:) = EEG.event(i).type; % event 'type' from data
    events_array(i,:) = extractBetween(type_array(i,:), "<ecode>","</ecode>"); % take out marker
    
    i = i + 1;
end

events_array

