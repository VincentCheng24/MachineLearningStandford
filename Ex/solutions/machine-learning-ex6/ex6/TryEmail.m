clear ; close all; clc
load('SVMModel');

filename = {'spamSample1.txt', 'spamSample2.txt', 'emailSample2.txt', ...
  'emailSample2.txt'};

% Read and predict
for i = 1: length(filename)
  file_contents = readFile(filename{i});
  word_indices  = processEmail(file_contents);
  x             = emailFeatures(word_indices);
  p = svmPredict(model, x);

  fprintf('\nProcessed %s\n\nSpam Classification: %d\n', filename{i}, p);
  fprintf('(1 indicates spam, 0 indicates not spam)\n\n');
end
  