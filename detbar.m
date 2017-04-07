% using for each subject
% determine center of every bar

function bartime = detbar(windowlength,overlap,duration)

% numwindow = floor((duration-windowlength)*100/((100-overlap)*windowlength));
numwindow = floor((duration-windowlength)/(((100-overlap)/100)*windowlength));
bart = zeros(1,numwindow+1);

for i = 0:numwindow
   bart(i+1) = (((100-overlap)/100)*windowlength*i)+(windowlength/2); 
end

bartime = bart;