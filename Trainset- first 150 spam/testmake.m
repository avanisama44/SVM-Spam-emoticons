clear ; close all; clc;
n=300;
X = zeros(n,1904);


for row = 1:300
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
y(1:150,1)=ones(150,1);
y(151:300,1)=zeros(150,1);
m = matfile('train.mat','Writable',true);
m.y=y
whos('-file','train.mat')
