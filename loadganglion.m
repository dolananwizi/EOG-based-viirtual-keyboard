%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
% Database - data latihan/test Ganglion
% Fungsi untuk memanggil kanal yang telah dipotong
% note : Hanya untuk data latihan/test (Pasca Pengambilan yang sebenarnya)
% by Arrijal Hanif - 2017
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function data = loadganglion(numsub,numpola,numdata)

%% subject 8
if(numsub == 1)
    if(numpola == 1)
        if(numdata == 1)
            timestart = 6827; % lihat waktu data mulai di rekam -- detik ke 
            load s7-p-1-1.txt;
            dtraw = s7_p_1_1(timestart:end,2:5)';    
        elseif(numdata == 2)
            timestart = 4610; % lihat waktu data mulai di rekam -- detik ke 
            load s7-p-1-2.txt;
            dtraw = s7_p_1_2(timestart:end,2:5)';
        end
        data = dtraw;
    elseif(numpola == 2)
        if(numdata == 1)
            timestart =  3845; % lihat waktu data mulai di rekam -- detik ke 
            load s7-p-2-1.txt;
            dtraw = s7_p_2_1(timestart:end,2:5)';
        elseif(numdata == 2)
            timestart =  3119; % lihat waktu data mulai di rekam -- detik ke 
            load s7-p-2-2.txt;
            dtraw = s7_p_2_2(timestart:end,2:5)';
        end
        data = dtraw;
    elseif(numpola == 3)
        if(numdata == 1)
            timestart = 2428; % lihat waktu data mulai di rekam -- detik ke 
            load s7-p-3-1.txt;
            dtraw = s7_p_3_1(timestart:end,2:5)';
        elseif(numdata == 2)
            timestart = 3807; % lihat waktu data mulai di rekam -- detik ke 
            load s7-p-3-2.txt;
            dtraw = s7_p_3_2(timestart:end,2:5)';
        end
        data = dtraw;
    elseif(numpola == 4)
        if(numdata == 1)
            timestart = 2717; % lihat waktu data mulai di rekam -- detik ke 
            load s7-wink.txt;
            dtraw = s7_wink(timestart:end,2:5)';
        elseif(nunmdata == 2)
            error('myApp:argChk','Data is not available')
        end
        data = dtraw;
    end
    
%% subject 8
elseif(numsub == 2)
    if(numpola == 1)
        if(numdata == 1)
            timestart = 4972; % lihat waktu data mulai di rekam -- detik ke 
            load s8-p-1-1.txt;
            dtraw = s8_p_1_1(timestart:end,2:5)';    
        elseif(numdata == 2)
            timestart = 751; % lihat waktu data mulai di rekam -- detik ke 
            load s8-p-1-2.txt;
            dtraw = s8_p_1_2(timestart:end,2:5)';
        end
        data = dtraw;
    elseif(numpola == 2)
        if(numdata == 1)
            timestart =  795; % lihat waktu data mulai di rekam -- detik ke 
            load s8-p-2-1.txt;
            dtraw = s8_p_2_1(timestart:end,2:5)';
        elseif(numdata == 2)
            timestart =  4361; % lihat waktu data mulai di rekam -- detik ke 
            load s8-p-2-2.txt;
            dtraw = s8_p_2_2(timestart:end,2:5)';
        end
        data = dtraw;
    elseif(numpola == 3)
        if(numdata == 1)
            timestart = 7949; % lihat waktu data mulai di rekam -- detik ke 
            load s8-p-3-2.txt;
            dtraw = s8_p_3_2(timestart:end,2:5)';
        elseif(numdata == 2)
            timestart = 926; % lihat waktu data mulai di rekam -- detik ke 
            load s8-p-3-3.txt;
            dtraw = s8_p_3_3(timestart:end,2:5)';
        end
        data = dtraw;
    elseif(numpola == 4)
        if(numdata == 1)
            timestart = 3935; % lihat waktu data mulai di rekam -- detik ke 
            load s8-wink.txt;
            dtraw = s8_wink(timestart:end,2:5)';
        elseif(numdata == 2)
            timestart = 860; % lihat waktu data mulai di rekam -- detik ke 
            load s8-blink.txt;
            dtraw = s8_blink(timestart:end,2:5)';
        end
        data = dtraw;
    end
  

%% subject 9
elseif(numsub == 3) 
    if(numpola == 1)
        if(numdata == 1)
            timestart = 13563; % lihat waktu data mulai di rekam -- detik ke 
            load s9-p-1-1.txt;
            dtraw = s9_p_1_1(timestart:end,2:5)';    
        elseif(numdata == 2)
            timestart = 2120; % lihat waktu data mulai di rekam -- detik ke 
            load s9-p-1-2.txt;
            dtraw = s9_p_1_2(timestart:end,2:5)';
        end
        data = dtraw;
    elseif(numpola == 2)
        if(numdata == 1)
            timestart =  1341; % lihat waktu data mulai di rekam -- detik ke 
            load s9-p-2-1.txt;
            dtraw = s9_p_2_1(timestart:end,2:5)';
        elseif(numdata == 2)
            timestart =  1087; % lihat waktu data mulai di rekam -- detik ke 
            load s9-p-2-2.txt;
            dtraw = s9_p_2_2(timestart:end,2:5)';
        end
        data = dtraw;
    elseif(numpola == 3)
        if(numdata == 1)
            timestart = 866; % lihat waktu data mulai di rekam -- detik ke 
            load s9-p-3-1.txt;
            dtraw = s9_p_3_1(timestart:end,2:5)';
        elseif(numdata == 2)
            timestart = 1033; % lihat waktu data mulai di rekam -- detik ke 
            load s9-p-3-2.txt;
            dtraw = s9_p_3_2(timestart:end,2:5)';
        end
        data = dtraw;
    elseif(numpola == 4)
        if(numdata == 1)
            timestart = 1021; % lihat waktu data mulai di rekam -- detik ke 
            load s9-wink.txt;
            dtraw = s9_wink(timestart:end,2:5)';
        elseif(numdata == 2)
            timestart = 2225; % lihat waktu data mulai di rekam -- detik ke 
            load s9-blink.txt;
            dtraw = s9_blink(timestart:end,2:5)';
        end
        data = dtraw;
    end

%% subject 10
elseif(numsub == 4) 
    if(numpola == 1)
        if(numdata == 1)
            timestart = 2140; % lihat waktu data mulai di rekam -- detik ke 
            load s10-p-1-1.txt;
            dtraw = s10_p_1_1(timestart:end,2:5)';    
        elseif(numdata == 2)
            timestart = 26117; % lihat waktu data mulai di rekam -- detik ke 
            load s10-p-1-2.txt;
            dtraw = s10_p_1_2(timestart:end,2:5)';
        end
        data = dtraw;
    elseif(numpola == 2)
        if(numdata == 1)
            timestart =  984; % lihat waktu data mulai di rekam -- detik ke 
            load s10-p-2-1.txt;
            dtraw = s10_p_2_1(timestart:end,2:5)';
        elseif(numdata == 2)
            timestart =  8900; % lihat waktu data mulai di rekam -- detik ke 
            load s10-p-2-2.txt;
            dtraw = s10_p_2_2(timestart:end,2:5)';
        end
        data = dtraw;
    elseif(numpola == 3)
        if(numdata == 1)
            timestart = 2112; % lihat waktu data mulai di rekam -- detik ke 
            load s10-p-3-1.txt;
            dtraw = s10_p_3_1(timestart:end,2:5)';
        elseif(numdata == 2)
            timestart = 18431; % lihat waktu data mulai di rekam -- detik ke 
            load s10-p-3-2.txt;
            dtraw = s10_p_3_2(timestart:end,2:5)';
        end
        data = dtraw;
    elseif(numpola == 4)
        if(numdata == 1)
            timestart = 45259; % lihat waktu data mulai di rekam -- detik ke 
            load s10-wink.txt;
            dtraw = s10_wink(timestart:end,2:5)';
        elseif(numdata == 'no data')
            timestart = 2225; % lihat waktu data mulai di rekam -- detik ke 
            load s10-blink.txt;
            dtraw = s10_blink(timestart:end,2:5)';
        end
        data = dtraw;
    end
    
%% subject 11
elseif(numsub == 5) 
    if(numpola == 1)
        if(numdata == 1)
            timestart = 1853; % lihat waktu data mulai di rekam -- detik ke 
            load s11-p-1-1.txt;
            dtraw = s11_p_1_1(timestart:end,2:5)';    
        elseif(numdata == 2) % sementar pake data yang s11-p-1-1
            timestart = 1853; % lihat waktu data mulai di rekam -- detik ke 
            load s11-p-1-1.txt;
            dtraw = s11_p_1_1(timestart:end,2:5)';
        end
        data = dtraw;
    elseif(numpola == 2)
        if(numdata == 1)
            timestart =  2924; % lihat waktu data mulai di rekam -- detik ke 
            load s11-p-2-1.txt;
            dtraw = s11_p_2_1(timestart:end,2:5)';
        elseif(numdata == 2)
            timestart =  1135; % lihat waktu data mulai di rekam -- detik ke 
            load s11-p-2-2.txt;
            dtraw = s11_p_2_2(timestart:end,2:5)';
        end
        data = dtraw;
    elseif(numpola == 3)
        if(numdata == 1)
            timestart = 2050; % lihat waktu data mulai di rekam -- detik ke 
            load s11-p-3-1.txt;
            dtraw = s11_p_3_1(timestart:end,2:5)';
        elseif(numdata == 2)
            timestart = 1447; % lihat waktu data mulai di rekam -- detik ke 
            load s11-p-3-2.txt;
            dtraw = s11_p_3_2(timestart:end,2:5)';
        end
        data = dtraw;
    elseif(numpola == 4)
        if(numdata == 1)
            timestart = 1310; % lihat waktu data mulai di rekam -- detik ke 
            load s11-wink.txt;
            dtraw = s11_wink(timestart:end,2:5)';
        elseif(numdata == 2)
            timestart = 17368; % lihat waktu data mulai di rekam -- detik ke 
            load s11-blink.txt;
            dtraw = s11_blink(timestart:end,2:5)';
        end
        data = dtraw;
    end    
       
end

end