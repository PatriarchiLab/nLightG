clear all;  clc;


P_files = { 'E:\Q_Alex\data\current\nLight\batchII\20220809_nLightG_147_148_stimRates\147_LC_40Hz-2022-08-09-121855.ppd';
    'E:\Q_Alex\data\current\nLight\batchII\20220809_nLightG_147_148_stimRates\148_LC_40Hz-2022-08-09-130718.ppd';
    'E:\Q_Alex\data\current\nLight\batchII\20220815_nLightG_153_154_stimRates\154_LC_40Hz-2022-08-15-140336.ppd';
    'E:\Q_Alex\data\current\nLight\batchIII\20220830_182_185_stimRates\182_LCl_40Hz-2022-08-30-123736.ppd';
    'E:\Q_Alex\data\current\nLight\batchIII\20220830_182_185_stimRates\185_LCr_40Hz-2022-08-30-132911.ppd';
    'E:\Q_Alex\data\current\nLight\batchIII\20220831_87_stimRates\87_LCr_40Hz-2022-08-31-124615.ppd'};

NI_files = {'E:\Q_Alex\data\current\nLight\batchII\20220809_nLightG_147_148_stimRates\VRdata_DBH147_left_10mW_40Hz_20220809124134.mat';
'E:\Q_Alex\data\current\nLight\batchII\20220809_nLightG_147_148_stimRates\VRdata_DBH148_left_10mW_40Hz_20220809132959.mat';
'E:\Q_Alex\data\current\nLight\batchII\20220815_nLightG_153_154_stimRates\VRdata_DBH154_10mW_40Hz_20220815142640.mat';
'E:\Q_Alex\data\current\nLight\batchIII\20220830_182_185_stimRates\VRdata_DBH182_left_10mW_40Hz_20220830130103.mat';
'E:\Q_Alex\data\current\nLight\batchIII\20220830_182_185_stimRates\VRdata_DBH185_right_10mW_40Hz_20220830135151.mat';
'E:\Q_Alex\data\current\nLight\batchIII\20220831_87_stimRates\VRdata_DBH87_right_10mW_40Hz_20220831130943.mat'};



stimdur = 4;                    % in s
peak_window = 1;                % in s
fitorder = 1;


%% define some variables
SFq = 3000;                     % in Hz
twindow = 30;                   % in s
smoothwindow_photometry = 100;  % in ms

all_diff = []; all_470 = []; all_405 = []; 

for iFile = 1:size(NI_files, 1)
    
    NIdata      =  	load(NI_files{iFile});
    Pdata_LC    =   import_ppd(P_files{iFile});
    
    %% process NI data for synchronization and extract information about optogenetic stimulation
    NI_trig_idx   = find(rescale(NIdata.data.values(2, 1:end-1), 0, 1) < 0.5 & rescale(NIdata.data.values(2, 2:end), 0, 1) > 0.5)+1;        % find first and last trigger for data synchronization
    NIdata.data.values = NIdata.data.values(:, NI_trig_idx(1):NI_trig_idx(end));                                                            % extract NI data from first to last trigger
    opto_stim = NIdata.data.values(7, :);                                                                                                   % extract data of optogenetic stimulation
    opto_stim_ds    = dwnsmp(opto_stim, SFq, Pdata_LC.sampling_rate); clear opto_stim;                                                      % downsample opto-stim data to sampling rate of photometry data
    opto_stim_ds = smooth(opto_stim_ds, Pdata_LC.sampling_rate);                                                                            % smooth opto-stim data to receive a continous pulse
    opto_stim_ds = rescale(opto_stim_ds, 0, 1);                                                                                             % re-scale opto data between 0 and 1
    trig_opto   = find(opto_stim_ds(1:end-1) < 0.5 & opto_stim_ds(2:end) > 0.5)+1;
    
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
    
    Pdata_LC.diff = Pdata_LC.analog_1_c-Pdata_LC.analog_2_c;                                                    % calculate difference between 470 nm and 405 nm channel as actual signal
    Pdata_LC.diff_s = movmean(Pdata_LC.diff, Pdata_LC.sampling_rate./1000.*smoothwindow_photometry);            % smooth data using a moving average filter of previously defined window
    
    
    
    
    %% plot raw data
    figure('color', [1 1 1]);
    ax1 = subplot(3, 1, 1); hold on;
    plot([1:length(opto_stim_ds)]./Pdata_LC.sampling_rate, rescale(opto_stim_ds, min([Pdata_LC.analog_1; Pdata_LC.analog_2 ]), max([Pdata_LC.analog_1; Pdata_LC.analog_2 ])), 'r-', 'color', [1 0 0 0.25]); hold on;
    plot([1:length(Pdata_LC.analog_1)]./Pdata_LC.sampling_rate, Pdata_LC.analog_1 , 'k-', 'color', [46, 184, 46]./255)
    plot([1:length(Pdata_LC.analog_2)]./Pdata_LC.sampling_rate,Pdata_LC.analog_2 , 'k-', 'color', [89, 0, 179]./255)

    
    ax2 = subplot(3, 1, 2); hold on;
    plot([1:length(opto_stim_ds)]./Pdata_LC.sampling_rate, rescale(opto_stim_ds, min([Pdata_LC.analog_1_c; Pdata_LC.analog_2_c ]), max([Pdata_LC.analog_1_c; Pdata_LC.analog_2_c ])), 'r-', 'color', [1 0 0 0.25]); hold on;
    plot([1:length(Pdata_LC.analog_1)]./Pdata_LC.sampling_rate, Pdata_LC.analog_1_c +0.03, 'k-', 'color', [46, 184, 46]./255)
    plot([1:length(Pdata_LC.analog_2)]./Pdata_LC.sampling_rate,Pdata_LC.analog_2_c , 'k-', 'color', [89, 0, 179]./255)
    
    ax3 = subplot(3, 1, 3); hold on;
    plot([1:length(opto_stim_ds)]./Pdata_LC.sampling_rate, rescale(opto_stim_ds, min(Pdata_LC.diff), max(Pdata_LC.diff)), 'r-', 'color', [1 0 0 0.25]); hold on;
    plot([1:length(Pdata_LC.diff )]./Pdata_LC.sampling_rate, Pdata_LC.diff , 'k-');
    
    linkaxes([ax1 ax2 ax3],'x')
    
    xlim([1 length(Pdata_LC.diff )]./Pdata_LC.sampling_rate)
    % xlim([180 240])
    
    

    
    figure('color', [1 1 1]);
    ax1 = subplot(3, 1, 1); title('405 vs 470')
    plot(Pdata_LC.analog_2_c-1, Pdata_LC.analog_1_c-1, 'k.'); hold on;
    xlabel('405 nm'); ylabel('470 nm'); axis square;
    lsline
    ax3 = subplot(3, 1, 2); title('470 vs dF/F')
    plot(Pdata_LC.analog_1_c-1, Pdata_LC.diff_s, 'k.'); hold on;
    xlabel('470 nm'); ylabel('dF/F'); axis square;
    lsline
    ax2 = subplot(3, 1, 3); title('405 vs dF/F')
    plot(Pdata_LC.analog_2_c-1, Pdata_LC.diff_s, 'k.'); hold on;
    xlabel('405 nm'); ylabel('dF/F'); axis square;
    lsline
    
    linkaxes([ax1, ax3, ax3])


    
    [r, p] = corrcoef(Pdata_LC.analog_1_c, Pdata_LC.analog_2_c);    r_12(iFile) = r(2);
    [r, p] = corrcoef(Pdata_LC.analog_1_c, Pdata_LC.diff_s);        r_1s(iFile) = r(2);
    [r, p] = corrcoef(Pdata_LC.analog_2_c, Pdata_LC.diff_s);        r_2s(iFile) = r(2);
    
    all_diff = vertcat(all_diff, zscore(Pdata_LC.diff_s));
    all_470 = vertcat(all_470, zscore(Pdata_LC.analog_1_c));
    all_405 = vertcat(all_405, zscore(Pdata_LC.analog_2_c));


end




    

    
% Create buns and obtain counts
Xedges=linspace(-5,5,100);
Yedges=linspace(-5,5,100);

figure('color', [1 1 1]);

subplot(3, 1, 1); hold on;
N = histcounts2(all_405,all_470,Xedges,Yedges); N_smooth = N;
[X,Y] = meshgrid(mean([Xedges(1:end-1);Xedges(2:end)],1),mean([Yedges(1:end-1);Yedges(2:end,1)],1));
contourf(X,Y,N_smooth',100, 'LineColor','none'); xlim([-4 4]); ylim([-5 5]); axis square; 
colorbar; xlim([-5 5]); ylim([-5 5])
set(gca,'ColorScale','log')

subplot(3, 1, 2); hold on;
N = histcounts2(all_470,all_diff,Xedges,Yedges); N_smooth = N;
[X,Y] = meshgrid(mean([Xedges(1:end-1);Xedges(2:end)],1),mean([Yedges(1:end-1);Yedges(2:end,1)],1));
contourf(X,Y,N_smooth',100, 'LineColor','none'); xlim([-4 4]); ylim([-5 5]); axis square; 
colorbar; xlim([-5 5]); ylim([-5 5])
set(gca,'ColorScale','log')

subplot(3, 1, 3); hold on;
N = histcounts2(all_405,all_diff,Xedges,Yedges); N_smooth = N;
[X,Y] = meshgrid(mean([Xedges(1:end-1);Xedges(2:end)],1),mean([Yedges(1:end-1);Yedges(2:end,1)],1));
contourf(X,Y,test,100, 'LineColor','none'); xlim([-4 4]); ylim([-5 5]); axis square; 
colorbar; xlim([-5 5]); ylim([-5 5])
set(gca,'ColorScale','log') 

[r, p] = corrcoef(all_405,all_470)
[r, p] = corrcoef(all_470,all_diff)
[r, p] = corrcoef(all_405,all_diff)



figure('color', [1 1 1]);

plot(0.8:0.4./(length(r_12)-1):1.2, r_12, 'ko'); hold on;
errorbar(1, mean(r_12), std(r_12), 'ko', 'LineWidth', 2)

plot(1.8:0.4./(length(r_1s)-1):2.2, r_1s, 'bo'); 
errorbar(2, mean(r_1s), std(r_1s), 'bo', 'LineWidth', 2)

plot(2.8:0.4./(length(r_2s)-1):3.2, r_2s, 'mo');
errorbar(3, mean(r_2s), std(r_2s), 'mo', 'LineWidth', 2)

plot([0 4], [0 0], 'k--'); xlim([0 4]); ylim([-1 1])

