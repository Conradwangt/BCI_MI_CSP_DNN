clear all
clc
Data = load('graz_data\dataset_BCIcomp1.mat'); % ����ѵ�����ݼ�
load('graz_data\labels_data_set_iii.mat');   % ���ز������ݼ���ǩ y_test
trian_label = Data.y_train;
test_label = y_test;
s = length(trian_label);
train_output = zeros(s,2);
test_output = zeros(s,2);
for i = 1:s
    train_output(i,trian_label(i)) = 1; % label_data(i)��ֵΪ1��2
    test_output(i,test_label(i)) = 1;   % ͬ��
end
Train_label = train_output';
Test_label = test_output';
save('label.mat', 'Train_label','Test_label');