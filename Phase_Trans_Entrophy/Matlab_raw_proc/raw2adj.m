subname = 'ctrl01';
datadir = '/Users/jiangzifan/Desktop/ECG data PFC/data/';
% mv to file 
cd(datadir + subname);
% read in data 
load('data_derived.mat');
% write time series to csv
trial_num = 1;
filename = subname + "_t" + num2str(trial_num);
csvwrite('/Users/jiangzifan/Desktop/ECG data PFC/PTEfile/' + ...
    filename,cell2mat(proc.trial(trial_num))');
% -----------  after running PTEpy code --------------------- %
PTE1_raw = csvread("/Users/jiangzifan/Desktop/ECG data PFC/PTEfile/PTE1_" + ...
    subname + "_t" + num2str(trial_num) + ".csv");
PTE1_bi = PTE1_raw > otsuthresh(reshape(PTE1,[4096,1]));
csvwrite("/Users/jiangzifan/Desktop/ECG data PFC/PTEfile/bi/" + ...
    "PTE1_bi_" + subname + "_t" + num2str(trial_num) + ".csv",PTE1_bi);
