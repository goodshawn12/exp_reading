clc;
% close all;

% Make sure eeglab is running with data imported 

num_events = 85; % The number of trials being looked at (506 total)

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
%     if events_array(i,:) == "cross"
%         events_array(i,:) = [];
%     elseif events_array(i,:) == "end_trial"
%         events_array(i,:) = [];
%     elseif events_array(i,:) == "break"
%         events_array(i,:) = [];
%     end
    i = i + 1;
end

% Remove instructions and test block event markers
start_i = find(events_array == "start") % Index where exp starts
events_array = events_array(start_i+6:end); 
assert(events_array(1) == "easy_5"); % Actual trials should start w. "easy_5"

% Remove excess event markers
i = 1; % Initialize counter
while i <= size(events_array,1)
    if events_array(i,:) == "cross"
        events_array(i,:) = [];
    elseif events_array(i,:) == "end_trial"
        events_array(i,:) = [];
    elseif events_array(i,:) == "break"
        events_array(i,:) = [];
    end
    i = i + 1;
end
events_array

act_num_events = size(events_array,1); % # of trials once xs event markers are removed

% %------------------------------------------------------------------------
% % Organize array by trial
% 
% % Initialize confidence (conf) and answer (ans) arrays
% conf_array = [];
% ans_array = [];
% 
% % Move confidence values to indep array
% j = 1; % Initialize general index
% while j <= act_num_events % loop thru trials
%     if mod(j,3) == 0
%         conf_array = [conf_array, events_array(j,:)];
%         events_array(j,:) = "remove";
%     end
%     j = j + 1;
% end
% 
% conf_array = conf_array';
% 
% % Fix general array
% j = 1; % Initialize general index
% while j <= size(events_array,1)
%     if events_array(j,:) == "remove";
%         events_array(j,:) = [];
%     end
%     j = j + 1;
% end
% 
% % Move answers to indep array
% j = 1; % Initialize general index
% while j <=size(events_array,1)
%     if mod(j,2) == 0
%         ans_array = [ans_array, events_array(j,:)];
%         events_array(j,:) = "remove";
%     end
%     j = j + 1;
% end
% 
% ans_array = ans_array';
% 
% % Fix general array
% j = 1; % Initialize general index
% while j <= size(events_array,1)
%     if events_array(j,:) == "remove";
%         events_array(j,:) = [];
%     end
%     j = j + 1;
% end
% 
% assert(size(events_array,1) == size(ans_array,1)); % Should be an answer for every trial
% assert(size(events_array,1) == size(conf_array,1)); % Should be a confidence level for every trial
% 
% trial_array = [events_array, ans_array, conf_array]
