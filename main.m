%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Main Ganglion Flow
%
% 5 April 2017 - Arrijal Hanif
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
clear;
fs = 200;
fig = 1;

%% Calibration Stage %%
numsub = 11;
numpola = 2;
numdata = 2;
data = loadganglion(numsub-6,numpola,numdata);

[dtv,dth,tt,duration] = preprocessing(data,numpola,fs);

overlap = 25;
thvalue = detthreshold(dth,fs);
windowlength = detwindow(dth,fs,thvalue);
% windowlength = 0.5;

%% main program stage %%
numpola = 4;
numdata = 1;
data = loadganglion(numsub-6,numpola,numdata);

[dtv,dth,tt,duration] = preprocessing(data,numpola,fs);

[ratav,ratah] = createfex(dtv,dth,duration,fs,overlap,windowlength);
[ratav,ratah] = thresholdfex(ratav,ratah,thvalue,1);
[ratavbin,ratahbin] = thresholdfex(ratav,ratah,thvalue,2);

bartime = detbar(windowlength,overlap,duration);

figure(fig);
subplot(2,1,1);
title(sprintf('Vertical Data s%d-p-%d-%d --- W=%dms O=%d',numsub,numpola,numdata,(windowlength*1000),overlap));
plotall(dtv,tt,thvalue,ratav,bartime);
subplot(2,1,2);
title(sprintf('Horizontal Data s%d-p-%d-%d --- W=%dms O=%d',numsub,numpola,numdata,(windowlength*1000),overlap));
plotall(dth,tt,thvalue,ratah,bartime);

