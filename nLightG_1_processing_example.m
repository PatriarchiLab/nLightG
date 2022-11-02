clear all;  clc; 


%% DBH87 - right
Pdata_LC = import_ppd(  'E:\Q_Alex\projects\nLight\data\02_stimRates\87_LCr_10Hz-2022-08-31-150345.ppd');
Pdata_HC = import_ppd(  'E:\Q_Alex\projects\nLight\data\02_stimRates\87_HCr_10Hz-2022-08-31-150346.ppd');
NIdata = load(          'E:\Q_Alex\projects\nLight\data\02_stimRates\VRdata_DBH87_right_10mW_10Hz_20220831152628.mat');
Pupildata = load(       'E:\Q_Alex\projects\nLight\data\02_stimRates\video0093 15-03-47_ds_DLC_tracking.mat');





%% define some variables
SFq	= 3000;                     % NI sampling rate, in Hz

fitorder	= 4;                % order of the fit to correct for photometry bleaching
smoothwindow_photometry	= 100;	% time window to smooth photometry data by moving average, in ms

post_stim 	= 60;               % time to crop after each stimulus, in s
pre_stim	= 15;               % time to crop before each stimulus, in s
stimdur  	= 4;              	% duration of the stimulus train, in s
peak_window	= 1;                % time window to measure the change signal, in s



%% process NI data for synchronization and extract information about optogenetic stimulation
NI_trig_idx   = find(rescale(NIdata.data.values(2, 1:end-1), 0, 1) < 0.5 & rescale(NIdata.data.values(2, 2:end), 0, 1) > 0.5)+1;        % find first and last trigger for data synchronization
NIdata.data.values = NIdata.data.values(:, NI_trig_idx(1):NI_trig_idx(end));                                                            % extract NI data from first to last trigger
opto_stim = NIdata.data.values(7, :);                                                                                                   % extract data of optogenetic stimulation
opto_stim_ds    = dwnsmp(opto_stim, SFq, Pdata_LC.sampling_rate); clear opto_stim;                                                      % downsample opto-stim data to sampling rate of photometry data
opto_stim_ds = smooth(opto_stim_ds, Pdata_LC.sampling_rate);                                                                            % smooth opto-stim data to receive a continous pulse
opto_stim_ds = rescale(opto_stim_ds, 0, 1);                                                                                             % re-scale opto data between 0 and 1


%% process Photometry data for synchronization - Locus Coeruleus
Opto_trig_idx   = find(Pdata_LC.digital_1(1:end-1) < 0.5 & Pdata_LC.digital_1(2:end) > 0.5)+1;              % find first and last trigger for data synchronization
Pdata_LC.analog_1 = Pdata_LC.analog_1(Opto_trig_idx(1):Opto_trig_idx(end));                                 % extract photometry data excited at 470 nm from first to last trigger          
Pdata_LC.analog_2 = Pdata_LC.analog_2(Opto_trig_idx(1):Opto_trig_idx(end));                                 % extract photometry data excited at 405 nm from first to last trigger   

[p_d1] = polyfit([1:length(Pdata_LC.analog_1)],Pdata_LC.analog_1',fitorder);                                % perform polynomial fit of 470 nm excited trace
LC_y_d1 = polyval(p_d1,[1:length(Pdata_LC.analog_1)]);                                                     	% create fitted curve for 470 nm excited trace
Pdata_LC.analog_1_c = Pdata_LC.analog_1./LC_y_d1';                                                        	% divide 470 nm excited trace by polynomial fit to correct for bleaching

[p_d2] = polyfit([1:length(Pdata_LC.analog_2)],Pdata_LC.analog_2',fitorder);                                % perform polynomial fit of 405 nm excited trace
LC_y_d2 = polyval(p_d2,[1:length(Pdata_LC.analog_2)]);                                                     	% create fitted curve for 405 nm excited trace
Pdata_LC.analog_2_c = Pdata_LC.analog_2./LC_y_d2';                                                         	% divide 405 nm excited trace by polynomial fit to correct for bleaching

Pdata_LC.analog_1_s = movmean(Pdata_LC.analog_1_c, Pdata_LC.sampling_rate./1000.*smoothwindow_photometry); 	% smooth data using a moving average filter of previously defined window
Pdata_LC.analog_2_s = movmean(Pdata_LC.analog_2_c, Pdata_LC.sampling_rate./1000.*smoothwindow_photometry);	% smooth data using a moving average filter of previously defined window

Pdata_LC.diff = Pdata_LC.analog_1_c-Pdata_LC.analog_2_c;                                                    % calculate difference between 470 nm and 405 nm channel as actual signal 



% detect opto triggers and extract data
trig_opto   = find(opto_stim_ds(1:end-1) < 0.5 & opto_stim_ds(2:end) > 0.5)+1;     % find first and last trigger for data synchronization

for i_opto = 1:length(trig_opto)
    cur_trig = trig_opto(i_opto);   
    
    trials_opto_LC_470(i_opto, :)           = Pdata_LC.analog_1(cur_trig-(pre_stim*Pdata_LC.sampling_rate):cur_trig+(post_stim*Pdata_LC.sampling_rate)); 
    trials_opto_LC_470_delta(i_opto, :)     = trials_opto_LC_470(i_opto, :)-median(Pdata_LC.analog_1(cur_trig-Pdata_LC.sampling_rate:cur_trig-1));
   
    trials_opto_LC_405(i_opto, :)           = Pdata_LC.analog_2(cur_trig-(pre_stim*Pdata_LC.sampling_rate):cur_trig+(post_stim*Pdata_LC.sampling_rate)); 
    trials_opto_LC_405_delta(i_opto, :)     = trials_opto_LC_405(i_opto, :)-median(Pdata_LC.analog_2(cur_trig-Pdata_LC.sampling_rate:cur_trig-1));

    trials_opto_LC_470_c(i_opto, :)       	= Pdata_LC.analog_1_c(cur_trig-(pre_stim*Pdata_LC.sampling_rate):cur_trig+(post_stim*Pdata_LC.sampling_rate)); 
    trials_opto_LC_470_delta_c(i_opto, :)	= trials_opto_LC_470_c(i_opto, :)-median(Pdata_LC.analog_1_c(cur_trig-Pdata_LC.sampling_rate:cur_trig-1));
   
    trials_opto_LC_405_c(i_opto, :)       	= Pdata_LC.analog_2_c(cur_trig-(pre_stim*Pdata_LC.sampling_rate):cur_trig+(post_stim*Pdata_LC.sampling_rate)); 
    trials_opto_LC_405_delta_c(i_opto, :) 	= trials_opto_LC_405_c(i_opto, :)-median(Pdata_LC.analog_2_c(cur_trig-Pdata_LC.sampling_rate:cur_trig-1));

    trials_opto_LC_470_s(i_opto, :)       	=  Pdata_LC.analog_1_s(cur_trig-(pre_stim*Pdata_LC.sampling_rate):cur_trig+(post_stim*Pdata_LC.sampling_rate)); 
    trials_opto_LC_470_delta_s(i_opto, :) 	= trials_opto_LC_470_s(i_opto, :)-median(Pdata_LC.analog_1_s(cur_trig-Pdata_LC.sampling_rate:cur_trig-1));
   
    trials_opto_LC_405_s(i_opto, :)      	=  Pdata_LC.analog_2_s(cur_trig-(pre_stim*Pdata_LC.sampling_rate):cur_trig+(post_stim*Pdata_LC.sampling_rate)); 
    trials_opto_LC_405_delta_s(i_opto, :)	= trials_opto_LC_405_s(i_opto, :)-median(Pdata_LC.analog_2_s(cur_trig-Pdata_LC.sampling_rate:cur_trig-1));

    trials_opto_LC(i_opto, :)               = Pdata_LC.diff(cur_trig-(pre_stim*Pdata_LC.sampling_rate):cur_trig+(post_stim*Pdata_LC.sampling_rate)); 
    trials_opto_LC_delta(i_opto, :)         = trials_opto_LC(i_opto, :)-median(Pdata_LC.diff(cur_trig-Pdata_LC.sampling_rate:cur_trig-1));
      
end








%% plot raw data
figure('color', [1 1 1]); 
ax1 = subplot(4, 1, 1); hold on;
plot([1:length(opto_stim_ds)]./Pdata_LC.sampling_rate, rescale(opto_stim_ds, min([Pdata_LC.analog_1; Pdata_LC.analog_2 ]), max([Pdata_LC.analog_1; Pdata_LC.analog_2 ])), 'r-', 'color', [1 0 0 0.25]); hold on;
plot([1:length(Pdata_LC.analog_2)]./Pdata_LC.sampling_rate,Pdata_LC.analog_2 , 'k-', 'color', [153, 51, 255]./255)
plot([1:length(Pdata_LC.analog_1)]./Pdata_LC.sampling_rate, LC_y_d2 , 'k-')
plot([1:length(Pdata_LC.analog_1)]./Pdata_LC.sampling_rate, Pdata_LC.analog_1 , 'k-', 'color', [46, 184, 46]./255)
plot([1:length(Pdata_LC.analog_1)]./Pdata_LC.sampling_rate, LC_y_d1, 'k-')

ax2 = subplot(4, 1, 2); hold on;
plot([1:length(opto_stim_ds)]./Pdata_LC.sampling_rate, rescale(opto_stim_ds, min([Pdata_LC.analog_1_c; Pdata_LC.analog_2_c ]), max([Pdata_LC.analog_1_c; Pdata_LC.analog_2_c ])), 'r-', 'color', [1 0 0 0.25]); hold on;
plot([1:length(Pdata_LC.analog_2)]./Pdata_LC.sampling_rate,Pdata_LC.analog_2_c , 'k-', 'color', [153, 51, 255]./255); 
plot([1:length(Pdata_LC.analog_1)]./Pdata_LC.sampling_rate, Pdata_LC.analog_1_c , 'k-', 'color', [46, 184, 46]./255)

ax3 = subplot(4, 1,  3); hold on;
plot([1:length(opto_stim_ds)]./Pdata_LC.sampling_rate, rescale(opto_stim_ds, min([Pdata_LC.analog_1_c; Pdata_LC.analog_2_c ]), max([Pdata_LC.analog_1_c; Pdata_LC.analog_2_c ])), 'r-', 'color', [1 0 0 0.25]); hold on;
plot([1:length(Pdata_LC.analog_2)]./Pdata_LC.sampling_rate,Pdata_LC.analog_2_s , 'k-', 'color', [153, 51, 255]./255); 
plot([1:length(Pdata_LC.analog_1)]./Pdata_LC.sampling_rate, Pdata_LC.analog_1_s , 'k-', 'color', [46, 184, 46]./255)

ax4 = subplot(4, 1,  4); hold on;
plot([1:length(opto_stim_ds)]./Pdata_LC.sampling_rate, rescale(opto_stim_ds, min(Pdata_LC.diff), max(Pdata_LC.diff)), 'r-', 'color', [1 0 0 0.25]); hold on;
plot([1:length(Pdata_LC.diff)]./Pdata_LC.sampling_rate, Pdata_LC.diff , 'k-'); 

linkaxes([ax1 ax2 ax3 ax4],'x'); xlim([1 length(Pdata_LC.diff)]./Pdata_LC.sampling_rate)




figure('color', [1 1 1]); 
ax1 = subplot(7, 2, 1); hold on;
title('470 nm excitation - raw'); hold on;
imagesc([-pre_stim:1/Pdata_LC.sampling_rate:post_stim],1:length(trig_opto), trials_opto_LC_470_delta); colorbar;
ylabel('trials [no]'); 
xlim([-pre_stim post_stim]); ylim([1-0.5 length(trig_opto)+0.5])
colormap(redblue(500)); caxis([-0.15 0.15]);

ax2 = subplot(7, 2, 3); hold on;
title('405 nm excitation - raw'); hold on;
imagesc([-pre_stim:1/Pdata_LC.sampling_rate:post_stim],1:length(trig_opto), trials_opto_LC_405_delta); colorbar;
ylabel('trials [no]'); 
xlim([-pre_stim post_stim]); ylim([1-0.5 length(trig_opto)+0.5])
colormap(redblue(500)); caxis([-0.15 0.15]);

cmin = prctile([trials_opto_LC_470_delta_c(:);  trials_opto_LC_405_delta_c(:); trials_opto_LC_470_delta_s(:);  trials_opto_LC_405_delta_s(:); trials_opto_LC_delta(:); ], 1);
cmax = prctile([trials_opto_LC_470_delta_c(:);  trials_opto_LC_405_delta_c(:); trials_opto_LC_470_delta_s(:);  trials_opto_LC_405_delta_s(:); trials_opto_LC_delta(:); ], 99);
climit = max(abs([cmin cmax])); climit = climit+climit/5;

ax3 = subplot(7, 2, 5); hold on;
title('470 nm excitation - corrected'); hold on;
imagesc([-pre_stim:1/Pdata_LC.sampling_rate:post_stim],1:length(trig_opto), trials_opto_LC_470_delta_c); colorbar;
ylabel('trials [no]'); 
colormap(redblue(500)); caxis([-climit climit]);

ax4 = subplot(7, 2, 7); hold on;
title('405 nm excitation - corrected'); hold on;
imagesc([-pre_stim:1/Pdata_LC.sampling_rate:post_stim],1:length(trig_opto), trials_opto_LC_405_delta_c); colorbar;
ylabel('trials [no]'); 
colormap(redblue(500)); caxis([-climit climit]);

ax5 = subplot(7, 2, 9); hold on;
title('470 nm excitation - corrected'); hold on;
imagesc([-pre_stim:1/Pdata_LC.sampling_rate:post_stim],1:length(trig_opto), trials_opto_LC_470_delta_s); colorbar;
ylabel('trials [no]'); 
colormap(redblue(500)); caxis([-climit climit]);

ax6 = subplot(7, 2, 11); hold on;
title('405 nm excitation - corrected'); hold on;
imagesc([-pre_stim:1/Pdata_LC.sampling_rate:post_stim],1:length(trig_opto), trials_opto_LC_405_delta_s); colorbar;
ylabel('trials [no]'); 
colormap(redblue(500)); caxis([-climit climit]);


ax7 = subplot(7, 2, 13); hold on;
title('diff '); hold on;
imagesc([-pre_stim:1/Pdata_LC.sampling_rate:post_stim],1:length(trig_opto), trials_opto_LC_delta); colorbar;
ylabel('trials [no]'); 
colormap(redblue(500)); caxis([-climit climit]);


linkaxes([ax3, ax4, ax5, ax6, ax7])
xlim([-pre_stim post_stim]); ylim([1-0.5 length(trig_opto)+0.5])




ax8 = subplot(7, 2, 2); hold on;
c.color_area = [0, 0, 255]./255; c.color_line =  [0, 0, 255]./255; c.x_axis = [-pre_stim:1/Pdata_HC.sampling_rate:post_stim]; c.error = 'std'; c.handle     = gcf; c.alpha      = 0.5; c.line_width = 2;
plot_areaerrorbar(trials_opto_LC_470_delta(:, 1:size(c.x_axis, 2)), c); hold on; ylabel('flurescence [rel.]')
ylim([-0.1 0.1])

ax9 = subplot(7, 2, 4); hold on;
c.color_area = [153, 51, 255]./255; c.color_line =  [153, 51, 255]./255; 
plot_areaerrorbar(trials_opto_LC_405_delta(:, 1:size(c.x_axis, 2)), c); hold on; ylabel('flurescence [rel.]')
ylim([-0.1 0.1])

ax10 = subplot(7, 2, 6); hold on;
c.color_area = [0, 0, 255]./255; c.color_line =  [0, 0, 255]./255; 
plot_areaerrorbar(trials_opto_LC_470_delta_c(:, 1:size(c.x_axis, 2)), c); hold on; ylabel('flurescence [rel.]')
ylim([-0.01 0.04])

ax11 = subplot(7, 2, 8); hold on;
c.color_area = [153, 51, 255]./255; c.color_line =  [153, 51, 255]./255;   c.handle     = gcf; 
plot_areaerrorbar(trials_opto_LC_405_delta_c(:, 1:size(c.x_axis, 2)), c); hold on;
ylim([-0.01 0.04])

ax12 = subplot(7, 2, 10); hold on;
c.color_area = [0, 0, 255]./255; c.color_line =  [0, 0, 255]./255; 
plot_areaerrorbar(trials_opto_LC_470_delta_s(:, 1:size(c.x_axis, 2)), c); hold on; ylabel('flurescence [rel.]')
ylim([-0.01 0.04])

ax13 = subplot(7, 2, 12); hold on;
c.color_area = [153, 51, 255]./255; c.color_line =  [153, 51, 255]./255;   c.handle     = gcf; 
plot_areaerrorbar(trials_opto_LC_405_delta_s(:, 1:size(c.x_axis, 2)), c); hold on;
ylim([-0.01 0.04])

ax14 = subplot(7, 2, 14); hold on;
c.color_area = [100, 100, 100]./255; c.color_line =  [100, 100, 100]./255; 
plot_areaerrorbar(trials_opto_LC_delta(:, 1:size(c.x_axis, 2)), c); hold on; ylabel('flurescence [rel.]')
ylim([-0.01 0.04])


linkaxes([ax8, ax9, ax10, ax11, ax12, ax13, ax14],'x'); xlim([-pre_stim post_stim])






