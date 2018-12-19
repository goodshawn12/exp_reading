clc;
% close all;

type_array = zeros(5,1);
type_array = string(type_array);

events_array = zeros(5,1);
events_array = string(events_array);

i = 1;
while i <= 5
    type_array(i,:) = EEG.event(i).type;
    events_array(i,:) = extractBetween(type_array(i,:), "<ecode>","</ecode>")
    i = i + 1;
end

type_array
events_array
