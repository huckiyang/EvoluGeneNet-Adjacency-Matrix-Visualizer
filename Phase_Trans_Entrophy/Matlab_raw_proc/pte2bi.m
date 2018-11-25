%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% -----------  after running PTEpy code --------------------- %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
PTEpath = '/Users/jiangzifan/Desktop/ECG data PFC/PTEfile/PTE/';
bipath = '/Users/jiangzifan/Desktop/ECG data PFC/PTEfile/bi/bi_';
listing = dir(PTEpath);
len = length(listing);
for i =4:len
    temp = listing(i);
    PTEraw_filepath = [PTEpath , temp.name];
    PTE1_raw = csvread(PTEraw_filepath);
    PTE1_raw = PTE1_raw(2:65,2:65);
    PTE1_bi = PTE1_raw > otsuthresh(reshape(PTE1_raw,[4096,1]));
    csvwrite([bipath temp.name], PTE1_bi);
end