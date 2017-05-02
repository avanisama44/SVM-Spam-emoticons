clear ; close all; clc;
n=10;
X = zeros(n,1900);


for row = 1:10
str1='email';
str2=int2str(row);
s=strcat(str1,str2);
file_contents = readFile(s);
word_indices  = processEmail(file_contents);
features      = emailFeatures(word_indices);

X(row,:)=features;
% Print Stats
end
save('train.mat','X','-v7.3');
y(1:5,1)=ones(5,1);
y(6:10,1)=zeros(5,1);
m = matfile('train.mat','Writable',true);
m.y=y
whos('-file','train.mat')
