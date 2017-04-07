%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
% Checking events of feature extraction
% 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 


function [resultbarfinal,linedetection] = checkfex2(databar,nbar,thvalue,windowlength,overlap_,duration)

resultbar = []; 
barstack = databar(1:nbar);
stopcounter = 0;

linedetection = [];
b = 0; % counter for line detection
overlap = ((100-overlap_)/100)*windowlength;
linedetection = [0,0];

for i = nbar-1 : length(databar)-1 
    
    indexbar = mod(i-(nbar-1),nbar); % | 0 | 1 | 2 |
    barstack(indexbar+1) = databar(i+1);
    
% %     for debug
%     i
%     indexbar
%     barstack(indexbar+1) = 7; 
%     barstack
%     barstack(indexbar+1) = databar(i+1); 
%     barstack
%     onbarstack = [barstack(((indexbar+1)+1):end),barstack((0+1):(indexbar-1)+1)]
% %     enddebug
    
    if(stopcounter == 0)
        if(barstack(indexbar+1) ~= 0)
           onbarstack = [barstack(((indexbar+1)+1):end),barstack((0+1):(indexbar-1)+1)];
           if(~isempty(find(onbarstack == -(barstack(indexbar+1)))))
              resultbar = [resultbar;i,barstack(indexbar+1)];
%               resultbar = [resultbar;i+1,barstack(indexbar+1)]  % for debug
              
              detectiontime3 = ((i)*overlap) + windowlength; %offset(i)
              detectiontime1 = ((i-(nbar-1)))*overlap; %offset(i-(nbar-1))
              detectiontime2 = (detectiontime3+detectiontime1)/2; %offset(i-(nbar-2))
              
%               ivalue(i) = 0;
%               ivalue(i-(nbar-1)) = 0;             
%               ivalue(i-(nbar-2)) = -onbarstack*thvalue;
              
              linedetection(b+1,1:2) = [detectiontime1 0];
              linedetection(b+2,1:2) = [detectiontime2 -(barstack(indexbar+1))*150];
              linedetection(b+3,1:2) = [detectiontime3 0];
                           
%               conditioning
              b = b + 3;
              barstack = zeros(1:nbar);
              stopcounter = nbar*2;
           end
        end
    else
        stopcounter = stopcounter - 1;
    end
    
end

linedetection = [0,0;linedetection;duration,0];
plot(linedetection(:,1),linedetection(:,2));

resultbarfinal = resultbar;

%% new fex data


%% new data bar
% lengthdatabar = length(databar);
% databar = [];
% 
% for j = 1:length(resultbar)
%     databar(resultbar(j)) = resultbar(j,2)*thvalue;
% end
% 
% databar(lengthdatabar) = 0;
% newdatabar = databar;

end
