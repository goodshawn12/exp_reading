
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


%% ------------------------------------------------------------------------
%           Extract behavrioal data and revise EEG event markers
%--------------------------------------------------------------------------

EEG = pop_loadset('data\exp_reading_S1.set');

easy_key = answerkey('easy_words.txt');
med_key = answerkey('med_words.txt');
hard_key = answerkey('hard_words.txt');

newEventStruct = [];
nEvents = length(EEG.event);
corrString = {'Incorrect','Correct'}; % string for event name

token = cell(1,nEvents);
for it = 1:nEvents
    token(it) = extractBetween(EEG.event(it).type, "<ecode>","</ecode>"); % take out marker
end

for it = 1:nEvents
    difficulty = [];
    questionIndex =  [];
    if contains(token{it},'_')
        difficulty = extractBefore(token{it},'_');
        questionIndex = extractAfter(token{it},'_');
    end
    
    if strcmp(difficulty,'easy') || strcmp(difficulty,'med') || strcmp(difficulty,'hard')        
        
        % create new event and store info
        newEventStruct(end+1).questionIndex = str2double(questionIndex);
        newEventStruct(end).latency = EEG.event(it).latency;
        newEventStruct(end).duration = EEG.event(it).duration;
        newEventStruct(end).reactionTime = EEG.event(it+1).latency - EEG.event(it).latency;
        
        subj_ans = token{it+1};
        
        if strcmp(difficulty,'easy')
            correct_ans = easy_key(str2double(questionIndex), 2);
            newEventStruct(end).difficulty = 1;
        elseif strcmp(difficulty,'med')
            correct_ans = med_key(str2double(questionIndex), 2);
            newEventStruct(end).difficulty = 2;
        else % hard
            correct_ans = hard_key(str2double(questionIndex), 2);
            newEventStruct(end).difficulty = 3;
        end
        
        newEventStruct(end).subjectAns = str2double(subj_ans);
        newEventStruct(end).correct = strcmp(subj_ans, correct_ans);
        
        conf_level = str2double(token{it+3});
        if isnan(conf_level)
            conf_level = str2double(token{it+2});
        end
        
        newEventStruct(end).confidence = conf_level;
        newEventStruct(end).type = sprintf('%s_%s_conf%d', ...
            corrString{1+newEventStruct(end).correct}, difficulty, conf_level);
    end
end

EEG.event_old = EEG.event;
EEG.event = newEventStruct;
pop_saveset(EEG);

%% ------------------------------------------------------------------------
%           Analyze and plot behavioral data
%--------------------------------------------------------------------------

nTrial = length(newEventStruct);
reactionTime = zeros(1,nTrial);
correct = zeros(1,nTrial);
confidence = zeros(1,nTrial);
for it = 1:nTrial
    reactionTime(it) = newEventStruct(it).reactionTime;
    correct(it) = newEventStruct(it).correct;
    confidence(it) = newEventStruct(it).confidence;
end

accuracy = sum(correct)/nTrial;
figure, hist(reactionTime);
figure, hist(confidence);

figure, scatter(confidence,reactionTime)
figure, scatter(correct,reactionTime)

% plot average and standard deviation

