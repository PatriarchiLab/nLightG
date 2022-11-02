clear all; clc; 


%% DBH147 
% Pdata_HC_right = import_ppd('E:\Q_Alex\projects\nLight\data\04_lateralization\147_HCr_iso_stimRight-2022-08-08-110632.ppd');
% Pdata_HC_left = import_ppd('E:\Q_Alex\projects\nLight\data\04_lateralization\147_HCl_iso_stimRight-2022-08-08-110631.ppd');
% NIdata = load('E:\Q_Alex\projects\nLight\data\04_lateralization\VRdata_DBH147_isoflurane_stimRight_20220808112929.mat');

% Pdata_HC_right = import_ppd('E:\Q_Alex\projects\nLight\data\04_lateralization\147_HCr_iso_stimLeft-2022-08-08-151139.ppd');
% Pdata_HC_left = import_ppd('E:\Q_Alex\projects\nLight\data\04_lateralization\147_HCl_iso_stimLeft-2022-08-08-151138.ppd');
% NIdata = load('E:\Q_Alex\projects\nLight\data\04_lateralization\VRdata_DBH147_isoflurane_stimLeft_20220808153437.mat');


%% DBH148 
% Pdata_HC_right = import_ppd('E:\Q_Alex\projects\nLight\data\04_lateralization\148_HCr_iso_stimRight-2022-08-08-132036.ppd');
% Pdata_HC_left = import_ppd('E:\Q_Alex\projects\nLight\data\04_lateralization\148_HCl_iso_stimRight-2022-08-08-132036.ppd');
% NIdata = load('E:\Q_Alex\projects\nLight\data\04_lateralization\VRdata_DBH148_isoflurane_stimRight_20220808134843.mat');

% Pdata_HC_right = import_ppd('E:\Q_Alex\projects\nLight\data\04_lateralization\148_HCr_iso_stimLeft-2022-08-08-154312.ppd');
% Pdata_HC_left = import_ppd('E:\Q_Alex\projects\nLight\data\04_lateralization\148_HCl_iso_stimLeft-2022-08-08-154313.ppd');
% NIdata = load('E:\Q_Alex\projects\nLight\data\04_lateralization\VRdata_DBH148_isoflurane_stimLeft_20220808160610.mat');

%% DBH154 
Pdata_HC_right = import_ppd('E:\Q_Alex\projects\nLight\data\04_lateralization\154_HCr_iso_stimRight-2022-08-08-124853.ppd');
Pdata_HC_left = import_ppd('E:\Q_Alex\projects\nLight\data\04_lateralization\154_HCl_iso_stimRight-2022-08-08-124852.ppd');
NIdata = load('E:\Q_Alex\projects\nLight\data\04_lateralization\VRdata_DBH154_isoflurane_stimRight_20220808131150.mat');

% Pdata_HC_right = import_ppd('E:\Q_Alex\projects\nLight\data\04_lateralization\154_HCr_iso_stimLeft-2022-08-08-164429.ppd');
% Pdata_HC_left = import_ppd('E:\Q_Alex\projects\nLight\data\04_lateralization\154_HCl_iso_stimLeft-2022-08-08-164429.ppd');
% NIdata = load('E:\Q_Alex\projects\nLight\data\04_lateralization\VRdata_DBH154_isoflurane_stimLeft_20220808170751.mat');



%% DBH182 
% Pdata_HC_right = import_ppd('E:\Q_Alex\projects\nLight\data\04_lateralization\182_HCr_iso_stimRight-2022-09-02-102946.ppd');
% Pdata_HC_left = import_ppd('E:\Q_Alex\projects\nLight\data\04_lateralization\182_HCl_iso_stimRight-2022-09-02-102945.ppd');
% NIdata = load('E:\Q_Alex\projects\nLight\data\04_lateralization\VRdata_DBH182_stimRight_isoflurane_20220902110310.mat');

% Pdata_HC_right = import_ppd('E:\Q_Alex\projects\nLight\data\04_lateralization\182_HCr_iso_stimLeft-2022-09-02-124254.ppd');
% Pdata_HC_left = import_ppd('E:\Q_Alex\projects\nLight\data\04_lateralization\182_HCl_iso_stimLeft-2022-09-02-124253.ppd');
% NIdata = load('E:\Q_Alex\projects\nLight\data\04_lateralization\VRdata_DBH182_stimLeft_isoflurane_20220902131611.mat');


%% DBH185 
% Pdata_HC_right = import_ppd('E:\Q_Alex\projects\nLight\data\04_lateralization\185_HCr_iso_stimRight-2022-09-02-111504.ppd');
% Pdata_HC_left = import_ppd('E:\Q_Alex\projects\nLight\data\04_lateralization\185_HCl_iso_stimRight-2022-09-02-111503.ppd');
% NIdata = load('E:\Q_Alex\projects\nLight\data\04_lateralization\VRdata_DBH185_stimRight_isoflurane_20220902114751.mat');

% Pdata_HC_right = import_ppd('E:\Q_Alex\projects\nLight\data\04_lateralization\185_HCr_iso_stimLeft-2022-09-02-132459.ppd');
% Pdata_HC_left = import_ppd('E:\Q_Alex\projects\nLight\data\04_lateralization\185_HCl_iso_stimLeft-2022-09-02-132458.ppd');
% NIdata = load('E:\Q_Alex\projects\nLight\data\04_lateralization\VRdata_DBH185_stimLeft_isoflurane_20220902135812.mat');

%% DBH87
% Pdata_HC_right = import_ppd('E:\Q_Alex\projects\nLight\data\04_lateralization\87_HCr_iso_stimRight-2022-09-02-115900.ppd');
% Pdata_HC_left = import_ppd('E:\Q_Alex\projects\nLight\data\04_lateralization\87_HCl_iso_stimRight-2022-09-02-115859.ppd');
% NIdata = load('E:\Q_Alex\projects\nLight\data\04_lateralization\VRdata_DBH87_stimRight_isoflurane_20220902123203.mat');

% Pdata_HC_right = import_ppd('E:\Q_Alex\projects\nLight\data\04_lateralization\87_HCr_iso_stimLeft-2022-09-02-140418.ppd');
% Pdata_HC_left = import_ppd('E:\Q_Alex\projects\nLight\data\04_lateralization\87_HCl_iso_stimLeft-2022-09-02-140417.ppd');
% NIdata = load('E:\Q_Alex\projects\nLight\data\04_lateralization\VRdata_DBH87_stimLeft_isoflurane_20220902143739.mat');



%% define some variables
SFq	= 3000;                     % NI sampling rate, in Hz

fitorder	= 1;                % order of the fit to correct for photometry bleaching
smoothwindow_photometry	= 100;	% time window to smooth photometry data by moving average, in ms

post_stim 	= 120;               % time to crop after each stimulus, in s
pre_stim	= 20;               % time to crop before each stimulus, in s
stimdur  	= 4;              	% duration of the stimulus train, in s
peak_window	= 1;                % time window to measure the change signal, in s




%% process NI data for synchronization and extract information about optogenetic stimulation
NI_trig_idx   = find(rescale(NIdata.data.values(2, 1:end-1), 0, 1) < 0.5 & rescale(NIdata.data.values(2, 2:end), 0, 1) > 0.5)+1;        % find first and last trigger for data synchronization
NIdata.data.values = NIdata.data.values(:, NI_trig_idx(1):NI_trig_idx(end));                                                            % extract NI data from first to last trigger
opto_stim = NIdata.data.values(7, :);                                                                                                   % extract data of optogenetic stimulation
opto_stim_ds    = dwnsmp(opto_stim, SFq, Pdata_HC_right.sampling_rate); clear opto_stim;                                                      % downsample opto-stim data to sampling rate of photometry data
opto_stim_ds = smooth(opto_stim_ds, Pdata_HC_right.sampling_rate);                                                                            % smooth opto-stim data to receive a continous pulse
opto_stim_ds = rescale(opto_stim_ds, 0, 1);                                                                                             % re-scale opto data between 0 and 1



%% process Photometry data for synchronization
Opto_trig_idx   = find(Pdata_HC_right.digital_1(1:end-1) < 0.5 & Pdata_HC_right.digital_1(2:end) > 0.5)+1;              % find first and last trigger for data synchronization
Pdata_HC_right.analog_1 = Pdata_HC_right.analog_1(Opto_trig_idx(1):Opto_trig_idx(end));                                 % extract photometry data excited at 470 nm from first to last trigger          
Pdata_HC_right.analog_2 = Pdata_HC_right.analog_2(Opto_trig_idx(1):Opto_trig_idx(end));                                 % extract photometry data excited at 405 nm from first to last trigger   

[p_d1] = polyfit([1:length(Pdata_HC_right.analog_1)],Pdata_HC_right.analog_1',fitorder);                                % perform polynomial fit of 470 nm excited trace
HCr_y_d1 = polyval(p_d1,[1:length(Pdata_HC_right.analog_1)]);                                                           % create fitted curve for 470 nm excited trace
Pdata_HC_right.analog_1_c = Pdata_HC_right.analog_1./HCr_y_d1';                                                        	% divide 470 nm excited trace by polynomial fit to correct for bleaching

[p_d2] = polyfit([1:length(Pdata_HC_right.analog_2)],Pdata_HC_right.analog_2',fitorder);                                % perform polynomial fit of 405 nm excited trace
HCr_y_d2 = polyval(p_d2,[1:length(Pdata_HC_right.analog_2)]);                                                           % create fitted curve for 405 nm excited trace
Pdata_HC_right.analog_2_c = Pdata_HC_right.analog_2./HCr_y_d2';                                                        	% divide 405 nm excited trace by polynomial fit to correct for bleaching

Pdata_HC_right.diff = Pdata_HC_right.analog_1_c-Pdata_HC_right.analog_2_c;                                              % calculate difference between 470 nm and 405 nm channel as actual signal 
Pdata_HC_right.diff_s = movmean(Pdata_HC_right.diff, Pdata_HC_right.sampling_rate./1000.*smoothwindow_photometry);    	% smooth data using a moving average filter of previously defined window




Opto_trig_idx   = find(Pdata_HC_left.digital_1(1:end-1) < 0.5 & Pdata_HC_left.digital_1(2:end) > 0.5)+1;                % find first and last trigger for data synchronization
Pdata_HC_left.analog_1 = Pdata_HC_left.analog_1(Opto_trig_idx(1):Opto_trig_idx(end));                                   % extract photometry data excited at 470 nm from first to last trigger          
Pdata_HC_left.analog_2 = Pdata_HC_left.analog_2(Opto_trig_idx(1):Opto_trig_idx(end));                                   % extract photometry data excited at 405 nm from first to last trigger   

[p_d1] = polyfit([1:length(Pdata_HC_left.analog_1)],Pdata_HC_left.analog_1',fitorder);                                  % perform polynomial fit of 470 nm excited trace
HCr_y_d1 = polyval(p_d1,[1:length(Pdata_HC_left.analog_1)]);                                                            % create fitted curve for 470 nm excited trace
Pdata_HC_left.analog_1_c = Pdata_HC_left.analog_1./HCr_y_d1';                                                        	% divide 470 nm excited trace by polynomial fit to correct for bleaching

[p_d2] = polyfit([1:length(Pdata_HC_left.analog_2)],Pdata_HC_left.analog_2',fitorder);                                  % perform polynomial fit of 405 nm excited trace
HCr_y_d2 = polyval(p_d2,[1:length(Pdata_HC_left.analog_2)]);                                                            % create fitted curve for 405 nm excited trace
Pdata_HC_left.analog_2_c = Pdata_HC_left.analog_2./HCr_y_d2';                                                         	% divide 405 nm excited trace by polynomial fit to correct for bleaching

Pdata_HC_left.diff = Pdata_HC_left.analog_1_c-Pdata_HC_left.analog_2_c;                                                	% calculate difference between 470 nm and 405 nm channel as actual signal 
Pdata_HC_left.diff_s = movmean(Pdata_HC_left.diff, Pdata_HC_left.sampling_rate./1000.*smoothwindow_photometry);        	% smooth data using a moving average filter of previously defined window








%% plot raw data
figure('color', [1 1 1]); 
ax1 = subplot(4, 1, 1); hold on;
plot([1:length(opto_stim_ds)]./Pdata_HC_right.sampling_rate, rescale(opto_stim_ds, min([Pdata_HC_right.analog_1; Pdata_HC_right.analog_2 ]), max([Pdata_HC_right.analog_1; Pdata_HC_right.analog_2 ])), 'r-', 'color', [1 0 0 0.25]); hold on;
plot([1:length(Pdata_HC_right.analog_1)]./Pdata_HC_right.sampling_rate, Pdata_HC_right.analog_1 , 'k-', 'color', [46, 184, 46]./255)
plot([1:length(Pdata_HC_right.analog_2)]./Pdata_HC_right.sampling_rate,Pdata_HC_right.analog_2 , 'k--', 'color', [31, 122, 31]./255)

ax2 = subplot(4, 1, 2); hold on;
plot([1:length(opto_stim_ds)]./Pdata_HC_right.sampling_rate, rescale(opto_stim_ds, min(Pdata_HC_right.diff), max(Pdata_HC_right.diff)), 'r-', 'color', [1 0 0 0.25]); hold on;
plot([1:length(Pdata_HC_right.diff )]./Pdata_HC_right.sampling_rate, Pdata_HC_right.diff , 'k-'); 

linkaxes([ax1 ax2],'x')

xlim([1 length(Pdata_HC_left.diff )]./Pdata_HC_right.sampling_rate)
 

ax3 = subplot(4, 1, 3); hold on;
plot([1:length(opto_stim_ds)]./Pdata_HC_left.sampling_rate, rescale(opto_stim_ds, min([Pdata_HC_left.analog_1; Pdata_HC_left.analog_2 ]), max([Pdata_HC_left.analog_1; Pdata_HC_left.analog_2 ])), 'r-', 'color', [1 0 0 0.25]); hold on;
plot([1:length(Pdata_HC_left.analog_1)]./Pdata_HC_left.sampling_rate, Pdata_HC_left.analog_1 , 'k-', 'color', [46, 184, 46]./255)
plot([1:length(Pdata_HC_left.analog_2)]./Pdata_HC_left.sampling_rate,Pdata_HC_left.analog_2 , 'k--', 'color', [31, 122, 31]./255)

ax4 = subplot(4, 1, 4); hold on;
plot([1:length(opto_stim_ds)]./Pdata_HC_left.sampling_rate, rescale(opto_stim_ds, min(Pdata_HC_left.diff), max(Pdata_HC_left.diff)), 'r-', 'color', [1 0 0 0.25]); hold on;
plot([1:length(Pdata_HC_left.diff )]./Pdata_HC_left.sampling_rate, Pdata_HC_left.diff , 'k-'); 

linkaxes([ax3 ax4],'x')

xlim([1 length(Pdata_HC_left.diff )]./Pdata_HC_left.sampling_rate)





% detect opto triggers and extract data
trig_opto   = find(opto_stim_ds(1:end-1) < 0.5 & opto_stim_ds(2:end) > 0.5)+1;     % find first and last trigger for data synchronization


for i_opto = 1:length(trig_opto)
    
    cur_trig = trig_opto(i_opto);   
    
    % data from right Hippocampus
    trials_opto_HC_right(i_opto, :)             = Pdata_HC_right.diff(cur_trig-(pre_stim*Pdata_HC_right.sampling_rate):cur_trig+(post_stim*Pdata_HC_right.sampling_rate)); 
    trials_opto_HC_right_delta(i_opto, :)       = trials_opto_HC_right(i_opto, :)-median(Pdata_HC_right.diff(cur_trig-Pdata_HC_right.sampling_rate:cur_trig-1));
   
    trials_opto_HC_right_470(i_opto, :)        	= Pdata_HC_right.analog_1_c(cur_trig-(pre_stim*Pdata_HC_right.sampling_rate):cur_trig+(post_stim*Pdata_HC_right.sampling_rate)); 
    trials_opto_HC_right_delta_470(i_opto, :)  	= trials_opto_HC_right_470(i_opto, :)-median(Pdata_HC_right.analog_1_c(cur_trig-Pdata_HC_right.sampling_rate:cur_trig-1));
    
    trials_opto_HC_right_405(i_opto, :)        	= Pdata_HC_right.analog_2_c(cur_trig-(pre_stim*Pdata_HC_right.sampling_rate):cur_trig+(post_stim*Pdata_HC_right.sampling_rate)); 
    trials_opto_HC_right_delta_405(i_opto, :)  	= trials_opto_HC_right_405(i_opto, :)-median(Pdata_HC_right.analog_2_c(cur_trig-Pdata_HC_right.sampling_rate:cur_trig-1));
   
    % data from left Hippocampus
    trials_opto_HC_left(i_opto, :)             = Pdata_HC_left.diff(cur_trig-(pre_stim*Pdata_HC_left.sampling_rate):cur_trig+(post_stim*Pdata_HC_left.sampling_rate)); 
    trials_opto_HC_left_delta(i_opto, :)       = trials_opto_HC_left(i_opto, :)-median(Pdata_HC_left.diff(cur_trig-Pdata_HC_left.sampling_rate:cur_trig-1));
   
    trials_opto_HC_left_470(i_opto, :)        	= Pdata_HC_left.analog_1_c(cur_trig-(pre_stim*Pdata_HC_left.sampling_rate):cur_trig+(post_stim*Pdata_HC_left.sampling_rate)); 
    trials_opto_HC_left_delta_470(i_opto, :)  	= trials_opto_HC_left_470(i_opto, :)-median(Pdata_HC_left.analog_1_c(cur_trig-Pdata_HC_left.sampling_rate:cur_trig-1));
    
    trials_opto_HC_left_405(i_opto, :)        	= Pdata_HC_left.analog_2_c(cur_trig-(pre_stim*Pdata_HC_left.sampling_rate):cur_trig+(post_stim*Pdata_HC_left.sampling_rate)); 
    trials_opto_HC_left_delta_405(i_opto, :)  	= trials_opto_HC_left_405(i_opto, :)-median(Pdata_HC_left.analog_2_c(cur_trig-Pdata_HC_left.sampling_rate:cur_trig-1));
   
end









cmin = prctile([trials_opto_HC_right_delta(:);  trials_opto_HC_right_delta_470(:); trials_opto_HC_right_delta_405(:); trials_opto_HC_left_delta(:);  trials_opto_HC_left_delta_470(:); trials_opto_HC_left_delta_405(:)], 1);
cmax = prctile([trials_opto_HC_right_delta(:);  trials_opto_HC_right_delta_470(:); trials_opto_HC_right_delta_405(:); trials_opto_HC_left_delta(:);  trials_opto_HC_left_delta_470(:); trials_opto_HC_left_delta_405(:)], 99);
climit = max(abs([cmin cmax])); climit = climit+climit/5;



f2 = figure('color', [1 1 1]);

ax1 = subplot(3, 4, 1); title('470 nm excitation'); hold on;
imagesc([-pre_stim:1/Pdata_HC_left.sampling_rate:post_stim],1:length(trig_opto), trials_opto_HC_left_delta_470); colorbar;
ylabel('trials [no]'); 
caxis([-climit climit]); colormap(redblue(500));

ax2 = subplot(3, 4, 5); title('405 nm excitation'); hold on;
imagesc([-pre_stim:1/Pdata_HC_left.sampling_rate:post_stim],1:length(trig_opto), trials_opto_HC_left_delta_405); colorbar;
ylabel('trials [no]'); 
caxis([-climit climit]); colormap(redblue(500));

ax3 = subplot(3, 4, 9); title('diff'); hold on;
imagesc([-pre_stim:1/Pdata_HC_left.sampling_rate:post_stim],1:length(trig_opto), trials_opto_HC_left_delta); colorbar;
ylabel('trials [no]'); 
caxis([-climit climit]); colormap(redblue(500));

linkaxes([ax1, ax2, ax3])
xlim([-pre_stim post_stim]); ylim([1-0.5 length(trig_opto)+0.5])

ax4 = subplot(3, 4, 2);
c.color_area = [0, 0, 255]./255; c.color_line =  [0, 0, 255]./255; c.x_axis = [-pre_stim:1/Pdata_HC_left.sampling_rate:post_stim]; c.error = 'std'; c.handle     = gcf; c.alpha      = 0.5; c.line_width = 2;
plot_areaerrorbar(trials_opto_HC_left_delta_470(:, 1:size(c.x_axis, 2)), c); hold on; ylabel('flurescence [rel.]')

ax5 = subplot(3, 4, 6);
c.color_area = [153, 51, 255]./255; c.color_line =  [153, 51, 255]./255; c.x_axis = [-pre_stim:1/Pdata_HC_left.sampling_rate:post_stim]; c.error = 'std'; c.handle     = gcf; c.alpha      = 0.5; c.line_width = 2;
plot_areaerrorbar(trials_opto_HC_left_delta_405(:, 1:size(c.x_axis, 2)), c); hold on; ylabel('flurescence [rel.]')

ax6 = subplot(3, 4, 10);
c.color_area = [0, 230, 0]./255; c.color_line =  [0, 230, 0]./255; c.x_axis = [-pre_stim:1/Pdata_HC_left.sampling_rate:post_stim]; c.error = 'std'; c.handle     = gcf; c.alpha      = 0.5; c.line_width = 2;
plot_areaerrorbar(trials_opto_HC_left_delta(:, 1:size(c.x_axis, 2)), c); hold on; ylabel('flurescence [rel.]')

linkaxes([ax4, ax5, ax6])
xlim([-pre_stim post_stim]); ylim([cmin+cmin/10 cmax+cmax/10]);  ylim([-0.01 0.03])



ax7 = subplot(3, 4, 3); title('470 nm excitation'); hold on;
imagesc([-pre_stim:1/Pdata_HC_right.sampling_rate:post_stim],1:length(trig_opto), trials_opto_HC_right_delta_470); colorbar;
ylabel('trials [no]'); 
caxis([-climit climit]); colormap(redblue(500));

ax8 = subplot(3, 4, 7); title('405 nm excitation'); hold on;
imagesc([-pre_stim:1/Pdata_HC_right.sampling_rate:post_stim],1:length(trig_opto), trials_opto_HC_right_delta_405); colorbar;
ylabel('trials [no]'); 
caxis([-climit climit]); colormap(redblue(500));

ax9 = subplot(3, 4, 11); title('diff'); hold on;
imagesc([-pre_stim:1/Pdata_HC_right.sampling_rate:post_stim],1:length(trig_opto), trials_opto_HC_right_delta); colorbar;
ylabel('trials [no]'); 
caxis([-climit climit]); colormap(redblue(500));

linkaxes([ax7, ax8, ax9])
xlim([-pre_stim post_stim]); ylim([1-0.5 length(trig_opto)+0.5])
 
ax10 = subplot(3, 4, 4);
c.color_area = [0, 0, 255]./255; c.color_line =  [0, 0, 255]./255; c.x_axis = [-pre_stim:1/Pdata_HC_right.sampling_rate:post_stim]; c.error = 'std'; c.handle     = gcf; c.alpha      = 0.5; c.line_width = 2;
plot_areaerrorbar(trials_opto_HC_right_delta_470(:, 1:size(c.x_axis, 2)), c); hold on; ylabel('flurescence [rel.]')

ax11 = subplot(3, 4, 8);
c.color_area = [153, 51, 255]./255; c.color_line =  [153, 51, 255]./255; c.x_axis = [-pre_stim:1/Pdata_HC_right.sampling_rate:post_stim]; c.error = 'std'; c.handle     = gcf; c.alpha      = 0.5; c.line_width = 2;
plot_areaerrorbar(trials_opto_HC_right_delta_405(:, 1:size(c.x_axis, 2)), c); hold on; ylabel('flurescence [rel.]')

ax12 = subplot(3, 4, 12);
c.color_area = [0, 230, 0]./255; c.color_line =  [0, 230, 0]./255; c.x_axis = [-pre_stim:1/Pdata_HC_right.sampling_rate:post_stim]; c.error = 'std'; c.handle     = gcf; c.alpha      = 0.5; c.line_width = 2;
plot_areaerrorbar(trials_opto_HC_right_delta(:, 1:size(c.x_axis, 2)), c); hold on; ylabel('flurescence [rel.]')

linkaxes([ax10, ax11, ax12])
xlim([-pre_stim post_stim]); ylim([cmin+cmin/10 cmax+cmax/10]); ylim([-0.01 0.03])







mean_response_HC_left = mean(trials_opto_HC_left_delta); 
HCleft_response = median(mean_response_HC_left(pre_stim.*Pdata_HC_left.sampling_rate+stimdur.*Pdata_HC_left.sampling_rate-peak_window.*Pdata_HC_left.sampling_rate:pre_stim.*Pdata_HC_left.sampling_rate+stimdur.*Pdata_HC_left.sampling_rate)).*100;
disp(['max response HC left = ' num2str(HCleft_response) ' %'])

mean_response_HC_right = mean(trials_opto_HC_right_delta); 
HCright_response = median(mean_response_HC_right(pre_stim.*Pdata_HC_right.sampling_rate+stimdur.*Pdata_HC_right.sampling_rate-peak_window.*Pdata_HC_right.sampling_rate:pre_stim.*Pdata_HC_right.sampling_rate+stimdur.*Pdata_HC_right.sampling_rate)).*100;
disp(['max response HC right = ' num2str(HCright_response) ' %'])

