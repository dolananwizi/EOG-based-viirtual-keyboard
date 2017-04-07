% plot all [signal, bar, thvalue]


function plotall(data,tt,thvalue,databar,bart)


if(nargin == 5)
    hold on;
    bar(bart,databar,'g');
    plot(tt,data,'r');
    plot([0 length(data)/200],[thvalue thvalue],'g');
    plot([0 length(data)/200],[-thvalue -thvalue],'g');
    hold off;
elseif(nargin == 3)
    hold on;
    plot(tt,data,'r');
    plot([0 length(data)/200],[thvalue thvalue],'g');
    plot([0 length(data)/200],[-thvalue -thvalue],'g');
    hold off;
end
