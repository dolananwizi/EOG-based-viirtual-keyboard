%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% function for preprocessing section
% 
% by Arrijal Hanif -  2017
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function [dtv,dth,tt,dur] = preprocessing(data_,numpola_,fs)

data = data_;
numpola = numpola_;

%% Range of the analytical data

% fs = 200; % 250 for cyton, 200 for ganglion
fr = fs/2;

if(numpola == 1 || numpola == 2)
    tick0 = 0; % in second - first tick recording get started
    tickN = 20; % in second - last tick
    overtime = 4; % in second - additional ticks for avoiding any biases
elseif(numpola == 3)
    tick0 = 0;
    tickN = 40;
    overtime = 5;
elseif(numpola == 4)
    tick0 = 0;
    tickN = 30;
    overtime = 4;
end

rangedt = (((tick0+overtime)*fs)+1):((tickN+overtime)*fs); % data length during recording
tt = (0:((tickN-tick0)*fs)-1)/fs;
duration = tickN-tick0; % duration during recording

%% Channel Divider
for i=1:4
    data_ch{i} = data(i,:);
end

%% filtering
% filter
[b,a] = butter(2,[0.5 5]/fr);
[bn,an] = butter(2,[49 51]/fr,'stop');

bc = conv(b,bn);
ac = conv(a,an);

for i=1:4
%     filtdata{i} = filter(b,a,data_ch{i});
    filtdata{i} = filter(bc,ac,data_ch{i}); % including notch filter
end

%% Channel verical and Horizontal divider
dtv_ = (filtdata{1}) - (filtdata{2});
dth_ = (filtdata{3}) - (filtdata{4});

dtv = dtv_(rangedt);
dth = dth_(rangedt);

dur  = duration;

end

