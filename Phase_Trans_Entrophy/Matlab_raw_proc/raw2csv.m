subnames = ["ctrl01" ,"ctrl02", "ctrl03" ,"ctrl04", "ctrl05" ,...
    "pfc01" ,"pfc02", "pfc03" ,"pfc04" ,"pfc05"];
for j = 1:10
    subname = subnames(j);
    datadir = '/Users/jiangzifan/Desktop/ECG data PFC/data/';
    % mv to file
    cd(char(datadir + subname));
    % read in data
    load('data_derived.mat');
    % write time series to csv
    trial_len = length(proc.trial);
    for i = 1:trial_len
        trial_num = i;
        filename = subname + "_t" + num2str(trial_num)+ ".csv";
        csvwrite('/Users/jiangzifan/Desktop/ECG data PFC/PTEfile/raw/' + ...
            filename, cell2mat(proc.trial(trial_num))');
    end
end
