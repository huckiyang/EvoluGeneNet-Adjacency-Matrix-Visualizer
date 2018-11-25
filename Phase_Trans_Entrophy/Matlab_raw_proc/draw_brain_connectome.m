mx_raw = csvread('PTEfile/PTE/PTE1_pfc05_t75.csv');
mx_raw = mx_raw(2:65,2:65);
load('chan_loc_xy');
load('ch_label.mat');
chan_loc_xy = [chan_loc_xy(:,2) chan_loc_xy(:,1)];
% label = {label(1:5)'};
Color(mx_raw,chan_loc_xy, label)
% Color(mx_raw(1:5,1:5),chan_loc_xy(1:5,:) ,label(1:5))
% Color_ori(mx_raw(10:15,10:15))