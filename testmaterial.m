clc;

% Import .txt file
filename = 'easy_words.txt';
T = readtable(filename, 'ReadVariableNames',false);

% Convert table to string-type array
A = table2array(T);
A = string(A);

% Remove words
A(:,1) = [];

% Create Array
key = zeros(size(A,1),1); % Initialize array
key = string(key); 
pattern = "*"; % Marker for correct answer
i = 1; % Initialize counter

% Create an array of the correct answers for each question
while i <= size(A,1)
    question = A(i,1:5);
    TF = contains(question,pattern);
    match = question(TF);
    key(i,:) = extractBetween(match, "*",".");
    
    i = i + 1;
end

key = [A(:,6),key]

