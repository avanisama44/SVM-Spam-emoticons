clear ; close all; clc;
n=617;
Xtest = zeros(n,1904);


for row = 1:617
str1='email';
str2=int2str(row);
s=strcat(str1,str2);
file_contents = readFile(s);
word_indices  = processEmail(file_contents);
features      = emailFeatures(word_indices);

Xtest(row,:)=features;
% Print Stats
end
save('test.mat','Xtest','-v7.3');
ytest(1:163,1)=ones(163,1);
ytest(164:617,1)=zeros(454,1);
m = matfile('test.mat','Writable',true);
m.ytest=ytest;
whos('-file','test.mat')
