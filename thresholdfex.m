%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% thresholding the data bar fex
% use this after using creatfexfunction
% By Arrijal Hanif - 2017
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


function [newratav,newratah] = thresholdfex(ratav,ratah,thvalue,option)

numwindow = length(ratah);

if(option == 1)
%     real value
    for i=1:numwindow
%     vertical
        if(ratav(i) >= thvalue || ratav(i) <= -thvalue)
            ratav(i) = ratav(i);
        else
            ratav(i) = 0;
        end

    %     horizontal
        if(ratah(i) >= thvalue || ratah(i) <= -thvalue)
            ratah(i) = ratah(i);
        else
            ratah(i) = 0;
        end
    end
elseif(option == 2)
%     -1 0 1
    for i=1:numwindow
    %     vertical
        if(ratav(i) >= thvalue)
%             ratav(i) = 1;
            if(ratav(i) > thvalue*6)
                ratav(i) = 0;
            else
                ratav(i) = 1; 
            end
        elseif(ratav(i) <= -thvalue)
%             ratav(i) = -1;
            if(ratav(i) < -thvalue*6)
                ratav(i) = 0;
            else
                ratav(i) = -1;
            end
        else
            ratav(i) = 0;
        end

    %     horizontal
        if(ratah(i) >= thvalue)
            ratah(i) = 1;
        elseif(ratah(i) <= -thvalue)
            ratah(i) = -1;
        else
            ratah(i) = 0;
        end
    end
end

newratav = ratav;
newratah = ratah;