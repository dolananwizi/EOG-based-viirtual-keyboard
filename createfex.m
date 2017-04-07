%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
% Creating feature extraction
% 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 

function [ratav,ratah] = createfex(dtv,dth,duration,fs,overlap_,windowlength)

overlap = ((100-overlap_)/100)*windowlength;
fwindow = windowlength*fs;

numwindow_ = floor((duration-windowlength)*100/((100-overlap_)*windowlength));
numwindow = numwindow_ + 1;

for i=1:numwindow
    offset(i)=(i-1)*floor(overlap*fs);
    
    % for max/upside
    ratav(i)=max(dtv(offset(i)+1:offset(i)+floor(fwindow))); % sliding windows for a half (0.5 seconds)
    ratah(i)=max(dth(offset(i)+1:offset(i)+floor(fwindow)));
    
    %for min/downside
    ratav2(i)=min(dtv(offset(i)+1:offset(i)+floor(fwindow)));
    ratah2(i)=min(dth(offset(i)+1:offset(i)+floor(fwindow)));  
end

for i=1:numwindow
    if(ratav(i) > -ratav2(i))
        ratav(i) = ratav(i);
    elseif(ratav(i) < -ratav2(i))
        ratav(i) = ratav2(i);
    end
    
    if(ratah(i) > -ratah2(i))
        ratah(i) = ratah(i);
    elseif(ratah(i) < -ratah2(i))
        ratah(i) = ratah2(i);
    end
end