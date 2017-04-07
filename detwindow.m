%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% calibration 2
% Algoritm for determining the window length
% update 1.0.3
% by Arrijal Hanif - 2017
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function windowlength = detwindow(data_,fs,thvalue_)

data = data_;
thvalue = thvalue_;

lendata = length(data);
longdata = lendata/fs; % in seconds
nn = longdata/5;

firstdt = 1;
lastdt = 1000;
j =  1;

for i = 1 : nn
    [yh,xh] = max(data_(firstdt:lastdt));
    [yl,xl] = min(data_(firstdt:lastdt));
    
    if(abs(yh) > thvalue && abs(yl) > thvalue)
        windowlength_(j) = abs(xl-xh);
        j = j + 1;
    end
    
    firstdt = firstdt + 1000;
    lastdt = lastdt + 1000;
end

% version 1
windowlength = (min(windowlength_)/fs) - 0.25;
windowlength = (round(windowlength*100))/100;

end