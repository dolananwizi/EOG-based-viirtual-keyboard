%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% calibration 1
% Algoritm for determining the threshold
% update 1.0.0
% by Arrijal Hanif - 2017
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function thvalue = detthreshold(data_,fs)

data = data_;

lendata = length(data);
longdata = lendata/fs; % in seconds
nn = longdata/5;

firstdt = 1;
lastdt = 1000;

for i = 1 : nn
    ymax = max(data_(firstdt:lastdt));
    ymin = min(data_(firstdt:lastdt));
    
    if(ymax >= abs(ymin))
        thvalue_(i) = ymax;
    else
        thvalue_(i) = ymin;
    end
        
    firstdt = firstdt + 1000;
    lastdt = lastdt + 1000;
end

thvalue = max(thvalue_)*0.33;

end