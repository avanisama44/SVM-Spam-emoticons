clear ; close all; clc;
n=10;
X = zeros(n,1900);

file_contents = readFile('email53');
word_indices  = processEmail(file_contents);
features      = emailFeatures(word_indices);
% for row = 1:10
% str1='email';
% str2=int2str(row);
% s=strcat(str1,str2)
% 
% 
% X(row,:)=features;
% % Print Stats
% end
% X
% save('train.mat','X','-v7.3');
% y=ones(n,1);
% m = matfile('train.mat','Writable',true);
% m.y=y;
% whos('-file','train.mat')
