clc;
% close all;

num_of_trials = 50; % The number of trials being looked at (506 total)

% Initialize arrays and counters
type_array = zeros(num_of_trials,1); % Array of 'types' of events, given my imported data (initialized)
type_array = string(type_array);

events_array = zeros(num_of_trials,1); % Array of event markers, taken from 'types'(initialized)
events_array = string(events_array);

i = 1;

% Obtain all event markers
while i <= num_of_trials % loop through all the data points
    type_array(i,:) = EEG.event(i).type; % event 'type' from data
    events_array(i,:) = extractBetween(type_array(i,:), "<ecode>","</ecode>") % take out marker
    i = i + 1;
end

type_array;
events_array;

% Remove instructions and test block event markers
start_i = find(events_array == "start") % Index where exp starts
events_array = events_array(start_i+6:end)
