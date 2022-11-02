clear all;  clc; 


%% DBH147 - baseline
% Pdata_LC = import_ppd('E:\Q_Alex\projects\nLight\data\01_pharmacology\147L_LC_b-2022-08-05-103942.ppd');
% NIdata = load('E:\Q_Alex\projects\nLight\data\01_pharmacology\VRdata_DBH147_left_baseline_20220805111305.mat');
% DBH147 - saline
% Pdata_LC = import_ppd('E:\Q_Alex\projects\nLight\data\01_pharmacology\147L_LC_s-2022-08-05-133153.ppd');
% NIdata = load('E:\Q_Alex\projects\nLight\data\01_pharmacology\VRdata_DBH147_left_saline_20220805140512.mat');
% DBH147 - desipramine
% Pdata_LC = import_ppd('E:\Q_Alex\projects\nLight\data\01_pharmacology\147L_LC_d-2022-08-05-172530.ppd');
% NIdata = load('E:\Q_Alex\projects\nLight\data\01_pharmacology\VRdata_DBH147_left_desipramine_20220805175846.mat');

% %% DBH148 - baseline
% Pdata_LC = import_ppd('E:\Q_Alex\projects\nLight\data\01_pharmacology\148R_LC_b-2022-08-05-111724.ppd');
% NIdata = load('E:\Q_Alex\projects\nLight\data\01_pharmacology\VRdata_DBH148_right_baseline_20220805115042.mat');
% % % DBH148 - saline
% Pdata_LC = import_ppd('E:\Q_Alex\projects\nLight\data\01_pharmacology\148R_LC_s-2022-08-05-140844.ppd');
% NIdata = load('E:\Q_Alex\projects\nLight\data\01_pharmacology\VRdata_DBH148_right_saline_20220805144227.mat');
% % DBH148 - desipramine
Pdata_LC = import_ppd('E:\Q_Alex\projects\nLight\data\01_pharmacology\148R_LC_d-2022-08-05-180257.ppd');
NIdata = load('E:\Q_Alex\projects\nLight\data\01_pharmacology\VRdata_DBH148_right_desipramine_20220805183654.mat');

% %% DBH154 - baseline
% Pdata_LC = import_ppd('E:\Q_Alex\projects\nLight\data\01_pharmacology\154R_LC_b-2022-08-05-123129.ppd');
% NIdata = load('E:\Q_Alex\projects\nLight\data\01_pharmacology\VRdata_DBH154_right_baseline_20220805130511.mat');
% DBH154 - saline
% Pdata_LC = import_ppd('E:\Q_Alex\projects\nLight\data\01_pharmacology\154R_LC_s-2022-08-05-153847.ppd');
% NIdata = load('E:\Q_Alex\projects\nLight\data\01_pharmacology\VRdata_DBH154_right_saline_20220805161202.mat');
% DBH154 - desipramine
% Pdata_LC = import_ppd('E:\Q_Alex\projects\nLight\data\01_pharmacology\154R_LC_d-2022-08-05-192049.ppd');
% NIdata = load('E:\Q_Alex\projects\nLight\data\01_pharmacology\VRdata_DBH154_right_desipramine_20220805195414.mat');

% %% DBH182 - baseline
% Pdata_LC = import_ppd('E:\Q_Alex\projects\nLight\data\01_pharmacology\182_LCl_base-2022-09-01-102052.ppd');
% NIdata = load('E:\Q_Alex\projects\nLight\data\01_pharmacology\VRdata_DBH182_left_10mW_40Hz_baseline_20220901105501.mat');
% DBH182 - saline
% Pdata_LC = import_ppd('E:\Q_Alex\projects\nLight\data\01_pharmacology\182_LCl_NaCl-2022-09-01-134317.ppd');
% NIdata = load('E:\Q_Alex\projects\nLight\data\01_pharmacology\VRdata_DBH182_left_10mW_40Hz_saline_20220901142147.mat');
% DBH182 - desipramine
% Pdata_LC = import_ppd('E:\Q_Alex\projects\nLight\data\01_pharmacology\182_LCl_desi-2022-09-01-162349.ppd');
% NIdata = load('E:\Q_Alex\projects\nLight\data\01_pharmacology\VRdata_DBH182_left_10mW_40Hz_desi_20220901165732.mat');

%% DBH185 - baseline
% Pdata_LC = import_ppd('E:\Q_Alex\projects\nLight\data\01_pharmacology\185_LCr_base-2022-09-01-105811.ppd');
% NIdata = load('E:\Q_Alex\projects\nLight\data\01_pharmacology\VRdata_DBH185_right_10mW_40Hz_baseline_20220901113130.mat');
% DBH185 - saline
% Pdata_LC = import_ppd('E:\Q_Alex\projects\nLight\data\01_pharmacology\185_LCr_NaCl-2022-09-01-142657.ppd');
% NIdata = load('E:\Q_Alex\projects\nLight\data\01_pharmacology\VRdata_DBH185_right_10mW_40Hz_saline_20220901150100.mat');
% DBH185 - desipramine
% Pdata_LC = import_ppd('E:\Q_Alex\projects\nLight\data\01_pharmacology\185_LCr_desi-2022-09-01-170134.ppd');
% NIdata = load('E:\Q_Alex\projects\nLight\data\01_pharmacology\VRdata_DBH185_right_10mW_40Hz_desi_20220901173457.mat');


% %% DBH87 - baseline
% Pdata_LC = import_ppd('E:\Q_Alex\projects\nLight\data\01_pharmacology\87_LCr_base-2022-09-01-113427.ppd');
% NIdata = load('E:\Q_Alex\projects\nLight\data\01_pharmacology\VRdata_DBH87_right_10mW_40Hz_baseline_20220901120743.mat');
% DBH87 - saline
% Pdata_LC = import_ppd('E:\Q_Alex\projects\nLight\data\01_pharmacology\87_LCr_NaCl-2022-09-01-150415.ppd');
% NIdata = load('E:\Q_Alex\projects\nLight\data\01_pharmacology\VRdata_DBH87_right_10mW_40Hz_saline_20220901153822.mat');
% DBH187 - desipramine
% Pdata_LC = import_ppd('E:\Q_Alex\projects\nLight\data\01_pharmacology\87_LCr_desi-2022-09-01-173858.ppd');
% NIdata = load('E:\Q_Alex\projects\nLight\data\01_pharmacology\VRdata_DBH87_right_10mW_40Hz_desi_20220901181224.mat');






SFq	= 3000;                     % NI sampling rate, in Hz

fitorder	= 2;                % order of the fit to correct for photometry bleaching
smoothwindow_photometry	= 100;	% time window to smooth photometry data by moving average, in ms

post_stim 	= 90;               % time to crop after each stimulus, in s
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

Pdata_LC.diff = Pdata_LC.analog_1_c-Pdata_LC.analog_2_c;                                                    % calculate difference between 470 nm and 405 nm channel as actual signal 
Pdata_LC.diff_s = movmean(Pdata_LC.diff, Pdata_LC.sampling_rate./1000.*smoothwindow_photometry);            % smooth data using a moving average filter of previously defined window





%% plot raw data
figure('color', [1 1 1]); 
ax1 = subplot(2, 1, 1); hold on;
plot([1:length(opto_stim_ds)]./Pdata_LC.sampling_rate, rescale(opto_stim_ds, min([Pdata_LC.analog_1; Pdata_LC.analog_2 ]), max([Pdata_LC.analog_1; Pdata_LC.analog_2 ])), 'r-', 'color', [1 0 0 0.25]); hold on;
plot([1:length(Pdata_LC.analog_1)]./Pdata_LC.sampling_rate, Pdata_LC.analog_1 , 'k-', 'color', [46, 184, 46]./255)
plot([1:length(Pdata_LC.analog_2)]./Pdata_LC.sampling_rate,Pdata_LC.analog_2 , 'k--', 'color', [31, 122, 31]./255)

ax3 = subplot(2, 1, 2); hold on;
plot([1:length(opto_stim_ds)]./Pdata_LC.sampling_rate, rescale(opto_stim_ds, min(Pdata_LC.diff), max(Pdata_LC.diff)), 'r-', 'color', [1 0 0 0.25]); hold on;
plot([1:length(Pdata_LC.diff )]./Pdata_LC.sampling_rate, Pdata_LC.diff , 'k-'); 

linkaxes([ax1 ax3],'x')

xlim([1 length(Pdata_LC.diff )]./Pdata_LC.sampling_rate)
 






% detect opto triggers and extract data
trig_opto   = find(opto_stim_ds(1:end-1) < 0.5 & opto_stim_ds(2:end) > 0.5)+1;     % find first and last trigger for data synchronization


for i_opto = 1:length(trig_opto)
    cur_trig = trig_opto(i_opto);   
    
    % LC photometry data
    trials_opto_LC(i_opto, :)          = Pdata_LC.diff_s(cur_trig-(pre_stim*Pdata_LC.sampling_rate):cur_trig+(post_stim*Pdata_LC.sampling_rate)); 
    trials_opto_LC_delta(i_opto, :)    = trials_opto_LC(i_opto, :)-median(Pdata_LC.diff_s(cur_trig-Pdata_LC.sampling_rate:cur_trig-1));
    
    trials_opto_LC_470(i_opto, :)          = Pdata_LC.analog_1_c(cur_trig-(pre_stim*Pdata_LC.sampling_rate):cur_trig+(post_stim*Pdata_LC.sampling_rate)); 
    trials_opto_LC_470_delta(i_opto, :)    = trials_opto_LC_470(i_opto, :)-median(Pdata_LC.analog_1_c(cur_trig-Pdata_LC.sampling_rate:cur_trig-1));
   
    trials_opto_LC_405(i_opto, :)          = Pdata_LC.analog_2_c(cur_trig-(pre_stim*Pdata_LC.sampling_rate):cur_trig+(post_stim*Pdata_LC.sampling_rate)); 
    trials_opto_LC_405_delta(i_opto, :)    = trials_opto_LC_405(i_opto, :)-median(Pdata_LC.analog_2_c(cur_trig-Pdata_LC.sampling_rate:cur_trig-1));
    
end




for idx_sham = 1:100
    
 trig_sham   =  rand(100, size(trig_opto, 2));
    trig_sham   =  round(rescale(trig_sham,   pre_stim*Pdata_LC.sampling_rate+130,  length(Pdata_LC.diff)-post_stim*Pdata_LC.sampling_rate-130));
    
    for i_sham = 1:length(trig_sham)
        cur_trig = trig_sham(i_sham);
        
        % LC photometry data
        trials_sham_LC(i_sham, :)          = Pdata_LC.diff_s(cur_trig-(pre_stim*Pdata_LC.sampling_rate):cur_trig+(post_stim*Pdata_LC.sampling_rate));
        trials_sham_LC_delta(i_sham, :)    = trials_sham_LC(i_sham, :)-median(Pdata_LC.diff_s(cur_trig-Pdata_LC.sampling_rate:cur_trig-1));
        
        trials_sham_LC_470(i_sham, :)          = Pdata_LC.analog_1_c(cur_trig-(pre_stim*Pdata_LC.sampling_rate):cur_trig+(post_stim*Pdata_LC.sampling_rate));
        trials_sham_LC_470_delta(i_sham, :)    = trials_sham_LC_470(i_sham, :)-median(Pdata_LC.analog_1_c(cur_trig-Pdata_LC.sampling_rate:cur_trig-1));
        
        trials_sham_LC_405(i_sham, :)          = Pdata_LC.analog_2_c(cur_trig-(pre_stim*Pdata_LC.sampling_rate):cur_trig+(post_stim*Pdata_LC.sampling_rate));
        trials_sham_LC_405_delta(i_sham, :)    = trials_sham_LC_405(i_sham, :)-median(Pdata_LC.analog_2_c(cur_trig-Pdata_LC.sampling_rate:cur_trig-1));

    end
    
    mean_sham_LC(idx_sham, :)       = mean(trials_sham_LC_delta);

end






cmin = prctile([trials_opto_LC_470_delta(:);  trials_opto_LC_405_delta(:); trials_opto_LC_delta(:)], 1);
cmax = prctile([trials_opto_LC_470_delta(:);  trials_opto_LC_405_delta(:); trials_opto_LC_delta(:)], 99);
climit = max(abs([cmin cmax])); climit = climit+climit/5;



f2 = figure('color', [1 1 1])

ax1 = subplot(2, 3, 1); title('470 nm excitation'); hold on;
imagesc([-pre_stim:1/Pdata_LC.sampling_rate:post_stim],1:length(trig_opto), trials_opto_LC_470_delta); colorbar;
ylabel('trials [no]'); 
caxis([-climit climit]); colormap(redblue(500));

ax2 = subplot(2, 3, 2); title('405 nm excitation'); hold on;
imagesc([-pre_stim:1/Pdata_LC.sampling_rate:post_stim],1:length(trig_opto), trials_opto_LC_405_delta); colorbar;
caxis([-climit climit]); colormap(redblue(500));

ax3 = subplot(2, 3, 3); title('diff'); hold on;
imagesc([-pre_stim:1/Pdata_LC.sampling_rate:post_stim],1:length(trig_opto), trials_opto_LC_delta); colorbar;
caxis([-climit climit]); colormap(redblue(500));
ylim([1-0.5 length(trig_opto)+0.5])

linkaxes([ax1, ax2, ax3])
xlim([-pre_stim post_stim]); ylim([1-0.5 length(trig_opto)+0.5])
 

ax4 = subplot(2, 3, 4);
c.color_area = [210, 210, 210]./255; c.color_line =  [180, 180, 180]./255; c.x_axis = [-pre_stim:1/Pdata_LC.sampling_rate:post_stim]; c.error = 'std'; c.handle     = gcf; c.alpha      = 0.5; c.line_width = 2;
plot_areaerrorbar(trials_sham_LC_470_delta(:, 1:size(c.x_axis, 2)), c); hold on; ylabel('flurescence [rel.]')
c.color_area = [0, 0, 255]./255; c.color_line =  [0, 0, 255]./255; c.handle     = gcf;
plot_areaerrorbar(trials_opto_LC_470_delta(:, 1:size(c.x_axis, 2)), c); hold on; ylabel('flurescence [rel.]')

ax5 = subplot(2, 3, 5);
c.color_area = [210, 210, 210]./255; c.color_line =  [180, 180, 180]./255;  c.handle     = gcf; 
plot_areaerrorbar(trials_sham_LC_405_delta(:, 1:size(c.x_axis, 2)), c); hold on; ylabel('flurescence [rel.]')
c.color_area = [153, 51, 255]./255; c.color_line =  [153, 51, 255]./255;   c.handle     = gcf; 
plot_areaerrorbar(trials_opto_LC_405_delta(:, 1:size(c.x_axis, 2)), c); hold on;
xlabel('time [s]')

ax6 = subplot(2, 3, 6);
c.color_area = [210, 210, 210]./255; c.color_line =  [180, 180, 180]./255;  c.handle     = gcf; 
plot_areaerrorbar(trials_sham_LC_delta(:, 1:size(c.x_axis, 2)), c); hold on; ylabel('flurescence [rel.]')
c.color_area = [0, 230, 0]./255; c.color_line =  [0, 230, 0]./255; c.handle     = gcf; 
plot_areaerrorbar(trials_opto_LC_delta(:, 1:size(c.x_axis, 2)), c); hold on;
linkaxes([ax4, ax5, ax6])
xlim([-pre_stim post_stim]); ylim([cmin+cmin/10 cmax+cmax/10])





mean_response = mean(trials_opto_LC_delta);                             % calculate mean response
[maxVal, maxLoc] = max(mean_response);                                  % identify maximum of mean response

X = [1:length(mean_response(maxLoc:end))]./Pdata_LC.sampling_rate;      % create timescale for exponential fit of decay
Y = mean_response(maxLoc:end);                                          % create mean response for exponential fit of decay
tbl = table(X(:), Y(:));                                                % Convert X and Y into a table, which is the form fitnlm() likes the input data to be in.
modelfun = @(b,x) b(1) * exp(-b(2)*x(:, 1)) + b(3);                     % define the model as Y = a * exp(-b*x) + c

aGuessed = mean_response(maxLoc);                       % guess a as the peak dF/F
bGuessed = 0.05;                                        % random guess of b
cGuessed = median(mean_response(end-130:end));          % guess c as the median of the last second
beta0 = [aGuessed, bGuessed, cGuessed];                 % guess values to start with.  Just make your best guess.
    
mdl = fitnlm(tbl, modelfun, beta0);                     % exponential fit of decaying dF/F    
coefficients = mdl.Coefficients{:, 'Estimate'};         % get coefficients of exponential decay  

yFitted = coefficients(1) * exp(-coefficients(2)*X) + coefficients(3);  % create vector of fitted decay


figure('color', [1 1 1]);
TimeVec = ([1:length(mean_response)]./Pdata_LC.sampling_rate)-pre_stim;

plot(TimeVec, mean_response); hold on; plot(TimeVec(maxLoc), maxVal, 'ro')
plot(TimeVec(maxLoc:length(mean_response)), yFitted, 'r--')
xlim([-pre_stim post_stim])

% Place formula text roughly in the middle of the plot.
formulaString = sprintf('Y = %.3f * exp(-%.7f * X) + %.3f', coefficients(1), coefficients(2), coefficients(3));
text(maxLoc./130-14, maxVal,                        formulaString,                                                                                      'FontSize', 10, 'FontWeight', 'bold');  
text(maxLoc./130-14, maxVal-(maxVal./20),           ['T = 1/a = 1/' num2str(coefficients(2)) ' = ' num2str(1/coefficients(2)) ' s'],                    'FontSize', 10, 'FontWeight', 'bold');  
text(maxLoc./130-14, maxVal-(maxVal./20)*2,         ['peak dF/F = ' num2str(maxVal.*100) ' %'],                                                         'FontSize', 10, 'FontWeight', 'bold');  
text(maxLoc./130-14, maxVal-(maxVal./20)*3,         ['peak time = ' num2str((maxLoc-pre_stim.*Pdata_LC.sampling_rate)./Pdata_LC.sampling_rate) ' s'], 	'FontSize', 10, 'FontWeight', 'bold');  



