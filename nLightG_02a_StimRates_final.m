clear all;  clc; 



%% DBH147 - left
% Pdata_LC = import_ppd(  'E:\Q_Alex\projects\nLight\data\02_stimRates\147_LC_1Hz-2022-08-09-103826.ppd');
% Pdata_HC = import_ppd(  'E:\Q_Alex\projects\nLight\data\02_stimRates\147_HC_1Hz-2022-08-09-103827.ppd');
% NIdata = load(          'E:\Q_Alex\projects\nLight\data\02_stimRates\VRdata_DBH147_left_10mW_1Hz_20220809110122.mat');
% Pupildata = load(       'E:\Q_Alex\projects\nLight\data\02_stimRates\video0094 10-38-22_ds_DLC_tracking.mat');

% Pdata_LC = import_ppd(  'E:\Q_Alex\projects\nLight\data\02_stimRates\147_LC_2Hz-2022-08-09-135505.ppd');
% Pdata_HC = import_ppd(  'E:\Q_Alex\projects\nLight\data\02_stimRates\147_HC_2Hz-2022-08-09-135506.ppd');
% NIdata = load(          'E:\Q_Alex\projects\nLight\data\02_stimRates\VRdata_DBH147_left_10mW_2Hz_20220809141744.mat');
% Pupildata = load(       'E:\Q_Alex\projects\nLight\data\02_stimRates\video0103 13-54-51_ds_DLC_tracking.mat');

% Pdata_LC = import_ppd(  'E:\Q_Alex\projects\nLight\data\02_stimRates\147_LC_5Hz-2022-08-09-115549.ppd');
% Pdata_HC = import_ppd(  'E:\Q_Alex\projects\nLight\data\02_stimRates\147_HC_5Hz-2022-08-09-115550.ppd');
% NIdata = load(          'E:\Q_Alex\projects\nLight\data\02_stimRates\VRdata_DBH147_left_10mW_5Hz_20220809121838.mat');
% Pupildata = load(       'E:\Q_Alex\projects\nLight\data\02_stimRates\video0098 11-55-52_ds_DLC_tracking.mat');

% Pdata_LC = import_ppd(  'E:\Q_Alex\projects\nLight\data\02_stimRates\147_LC_10Hz-2022-08-09-133208.ppd');
% Pdata_HC = import_ppd(  'E:\Q_Alex\projects\nLight\data\02_stimRates\147_HC_10Hz-2022-08-09-133209.ppd');
% NIdata = load(          'E:\Q_Alex\projects\nLight\data\02_stimRates\VRdata_DBH147_left_10mW_10Hz_20220809135446.mat');
% Pupildata = load(       'E:\Q_Alex\projects\nLight\data\02_stimRates\video0102 13-32-10_ds_DLC_tracking.mat');
% 
% Pdata_LC = import_ppd(  'E:\Q_Alex\projects\nLight\data\02_stimRates\147_LC_20Hz-2022-08-09-101522.ppd');
% Pdata_HC = import_ppd(  'E:\Q_Alex\projects\nLight\data\02_stimRates\147_HC_20Hz-2022-08-09-101523.ppd');
% NIdata = load(          'E:\Q_Alex\projects\nLight\data\02_stimRates\VRdata_DBH147_left_10mW_20Hz_20220809103803.mat');
% Pupildata = load(       'E:\Q_Alex\projects\nLight\data\02_stimRates\video0093 10-15-19_ds_DLC_tracking.mat');

% Pdata_LC = import_ppd(  'E:\Q_Alex\projects\nLight\data\02_stimRates\147_LC_40Hz-2022-08-09-121855.ppd');
% Pdata_HC = import_ppd(  'E:\Q_Alex\projects\nLight\data\02_stimRates\147_HC_40Hz-2022-08-09-121855.ppd');
% NIdata = load(          'E:\Q_Alex\projects\nLight\data\02_stimRates\VRdata_DBH147_left_10mW_40Hz_20220809124134.mat');
% Pupildata = load(       'E:\Q_Alex\projects\nLight\data\02_stimRates\video0099 12-18-47_ds_DLC_tracking.mat');



%% DBH148 - right
% Pdata_LC = import_ppd(  'E:\Q_Alex\projects\nLight\data\02_stimRates\148_LC_1Hz-2022-08-09-113019.ppd');
% Pdata_HC = import_ppd(  'E:\Q_Alex\projects\nLight\data\02_stimRates\148_HC_1Hz-2022-08-09-113020.ppd');
% NIdata = load(          'E:\Q_Alex\projects\nLight\data\02_stimRates\VRdata_DBH148_left_10mW_1Hz_20220809115307.mat');
% Pupildata = load(       'E:\Q_Alex\projects\nLight\data\02_stimRates\video0097 11-30-21_ds_DLC_tracking.mat');

% Pdata_LC = import_ppd(  'E:\Q_Alex\projects\nLight\data\02_stimRates\148_LC_2Hz-2022-08-09-144516.ppd');
% Pdata_HC = import_ppd(  'E:\Q_Alex\projects\nLight\data\02_stimRates\148_HC_2Hz-2022-08-09-144517.ppd');
% NIdata = load(          'E:\Q_Alex\projects\nLight\data\02_stimRates\VRdata_DBH148_left_10mW_2Hz_20220809150755.mat');
% Pupildata = load(       'E:\Q_Alex\projects\nLight\data\02_stimRates\video0106 14-45-05_ds_DLC_tracking.mat');

% Pdata_LC = import_ppd(  'E:\Q_Alex\projects\nLight\data\02_stimRates\148_LC_5Hz-2022-08-09-124415.ppd');
% Pdata_HC = import_ppd(  'E:\Q_Alex\projects\nLight\data\02_stimRates\148_HC_5Hz-2022-08-09-124416.ppd');
% NIdata = load(          'E:\Q_Alex\projects\nLight\data\02_stimRates\VRdata_DBH148_left_10mW_5Hz_20220809130656.mat');
% Pupildata = load(       'E:\Q_Alex\projects\nLight\data\02_stimRates\video0100 12-44-18_ds_DLC_tracking.mat');

% Pdata_LC = import_ppd(  'E:\Q_Alex\projects\nLight\data\02_stimRates\148_LC_10Hz-2022-08-09-150808.ppd');
% Pdata_HC = import_ppd(  'E:\Q_Alex\projects\nLight\data\02_stimRates\148_HC_10Hz-2022-08-09-150809.ppd');
% NIdata = load(          'E:\Q_Alex\projects\nLight\data\02_stimRates\VRdata_DBH148_left_10mW_10Hz_20220809153041.mat');
% Pupildata = load(       'E:\Q_Alex\projects\nLight\data\02_stimRates\video0107 15-07-54_ds_DLC_tracking.mat');

% Pdata_LC = import_ppd(  'E:\Q_Alex\projects\nLight\data\02_stimRates\148_LC_20Hz-2022-08-09-110639.ppd');
% Pdata_HC = import_ppd(  'E:\Q_Alex\projects\nLight\data\02_stimRates\148_HC_20Hz-2022-08-09-110640.ppd');
% NIdata = load(          'E:\Q_Alex\projects\nLight\data\02_stimRates\VRdata_DBH148_left_10mW_20Hz_20220809112914.mat');
% Pupildata = load(       'E:\Q_Alex\projects\nLight\data\02_stimRates\video0095 11-06-42_ds_DLC_tracking.mat');

% Pdata_LC = import_ppd(  'E:\Q_Alex\projects\nLight\data\02_stimRates\148_LC_40Hz-2022-08-09-130718.ppd');
% Pdata_HC = import_ppd(  'E:\Q_Alex\projects\nLight\data\02_stimRates\148_HC_40Hz-2022-08-09-130719.ppd');
% NIdata = load(          'E:\Q_Alex\projects\nLight\data\02_stimRates\VRdata_DBH148_left_10mW_40Hz_20220809132959.mat');
% Pupildata = load(       'E:\Q_Alex\projects\nLight\data\02_stimRates\video0101 13-07-20_ds_DLC_tracking.mat');


% DBH154 - right 
% Pdata_LC = import_ppd(  'E:\Q_Alex\projects\nLight\data\02_stimRates\154_LC_1Hz-2022-08-15-114239.ppd');
% Pdata_HC = import_ppd(  'E:\Q_Alex\projects\nLight\data\02_stimRates\154_HC_1Hz-2022-08-15-114240.ppd');
% NIdata = load(          'E:\Q_Alex\projects\nLight\data\02_stimRates\VRdata_DBH154_10mW_1Hz_20220815120556.mat');
% Pupildata = load(       'E:\Q_Alex\projects\nLight\data\02_stimRates\video0102 11-41-32_ds_DLC_tracking.mat');

% Pdata_LC = import_ppd(  'E:\Q_Alex\projects\nLight\data\02_stimRates\154_LC_2Hz-2022-08-15-160148.ppd');
% Pdata_HC = import_ppd(  'E:\Q_Alex\projects\nLight\data\02_stimRates\154_HC_2Hz-2022-08-15-160148.ppd');
% NIdata = load(          'E:\Q_Alex\projects\nLight\data\02_stimRates\VRdata_DBH154_10mW_2Hz_20220815162422.mat');
% Pupildata = load(       'E:\Q_Alex\projects\nLight\data\02_stimRates\video0110 16-01-33_ds_DLC_tracking.mat');

% Pdata_LC = import_ppd(  'E:\Q_Alex\projects\nLight\data\02_stimRates\154_LC_5Hz-2022-08-15-133935.ppd');
% Pdata_HC = import_ppd(  'E:\Q_Alex\projects\nLight\data\02_stimRates\154_HC_5Hz-2022-08-15-133936.ppd');
% NIdata = load(          'E:\Q_Alex\projects\nLight\data\02_stimRates\VRdata_DBH154_10mW_5Hz_20220815140216.mat');
% Pupildata = load(       'E:\Q_Alex\projects\nLight\data\02_stimRates\video0105 13-39-37_ds_DLC_tracking.mat');

% Pdata_LC = import_ppd(  'E:\Q_Alex\projects\nLight\data\02_stimRates\154_LC_10Hz-2022-08-15-153807.ppd');
% Pdata_HC = import_ppd(  'E:\Q_Alex\projects\nLight\data\02_stimRates\154_HC_10Hz-2022-08-15-153808.ppd');
% NIdata = load(          'E:\Q_Alex\projects\nLight\data\02_stimRates\VRdata_DBH154_10mW_10Hz_20220815160119.mat');
% Pupildata = load(       'E:\Q_Alex\projects\nLight\data\02_stimRates\video0109 15-38-10_ds_DLC_tracking.mat');

% Pdata_LC = import_ppd(  'E:\Q_Alex\projects\nLight\data\02_stimRates\154_LC_20Hz-2022-08-15-111624.ppd');
% Pdata_HC = import_ppd(  'E:\Q_Alex\projects\nLight\data\02_stimRates\154_HC_20Hz-2022-08-15-111625.ppd');
% NIdata = load(          'E:\Q_Alex\projects\nLight\data\02_stimRates\VRdata_DBH154_10mW_20Hz_20220815114009.mat');
% Pupildata = load(       'E:\Q_Alex\projects\nLight\data\02_stimRates\video0100 11-16-28_ds_DLC_tracking.mat');

% Pdata_LC = import_ppd(  'E:\Q_Alex\projects\nLight\data\02_stimRates\154_LC_40Hz-2022-08-15-140336.ppd');
% Pdata_HC = import_ppd(  'E:\Q_Alex\projects\nLight\data\02_stimRates\154_HC_40Hz-2022-08-15-140337.ppd');
% NIdata = load(          'E:\Q_Alex\projects\nLight\data\02_stimRates\VRdata_DBH154_10mW_40Hz_20220815142640.mat');
% Pupildata = load(       'E:\Q_Alex\projects\nLight\data\02_stimRates\video0106 14-02-44_ds_DLC_tracking.mat');


% DBH182 - left
% Pdata_LC = import_ppd(  'E:\Q_Alex\projects\nLight\data\02_stimRates\182_LCl_1Hz-2022-08-30-105428.ppd');
% Pdata_HC = import_ppd(  'E:\Q_Alex\projects\nLight\data\02_stimRates\182_HCl_1Hz-2022-08-30-105429.ppd');
% NIdata = load(          'E:\Q_Alex\projects\nLight\data\02_stimRates\VRdata_DBH182_left_10mW_1Hz_20220830111734.mat');
% Pupildata = load(       'E:\Q_Alex\projects\nLight\data\02_stimRates\video0076 10-54-25_ds_DLC_tracking.mat');

% Pdata_LC = import_ppd(  'E:\Q_Alex\projects\nLight\data\02_stimRates\182_LCl_2Hz-2022-08-30-141933.ppd');
% Pdata_HC = import_ppd(  'E:\Q_Alex\projects\nLight\data\02_stimRates\182_HCl_2Hz-2022-08-30-141935.ppd');
% NIdata = load(          'E:\Q_Alex\projects\nLight\data\02_stimRates\VRdata_DBH182_left_10mW_2Hz_20220830144222.mat');
% Pupildata = load(       'E:\Q_Alex\projects\nLight\data\02_stimRates\video0086 14-19-17_ds_DLC_tracking.mat');
 
% Pdata_LC = import_ppd(  'E:\Q_Alex\projects\nLight\data\02_stimRates\182_LCl_5Hz-2022-08-30-121328.ppd');
% Pdata_HC = import_ppd(  'E:\Q_Alex\projects\nLight\data\02_stimRates\182_HCl_5Hz-2022-08-30-121329.ppd');
% NIdata = load(          'E:\Q_Alex\projects\nLight\data\02_stimRates\VRdata_DBH182_left_10mW_5Hz_20220830123711.mat');
% Pupildata = load(       'E:\Q_Alex\projects\nLight\data\02_stimRates\video0081 12-13-33_ds_DLC_tracking.mat');

% Pdata_LC = import_ppd(  'E:\Q_Alex\projects\nLight\data\02_stimRates\182_LCl_10Hz-2022-08-30-135629.ppd');
% Pdata_HC = import_ppd(  'E:\Q_Alex\projects\nLight\data\02_stimRates\182_HCl_10Hz-2022-08-30-135630.ppd');
% NIdata = load(          'E:\Q_Alex\projects\nLight\data\02_stimRates\VRdata_DBH182_left_10mW_10Hz_20220830141908.mat');
% Pupildata = load(       'E:\Q_Alex\projects\nLight\data\02_stimRates\video0085 13-56-34_ds_DLC_tracking.mat');

% Pdata_LC = import_ppd(  'E:\Q_Alex\projects\nLight\data\02_stimRates\182_LCl_20Hz-2022-08-30-103105.ppd');
% Pdata_HC = import_ppd(  'E:\Q_Alex\projects\nLight\data\02_stimRates\182_HCl_20Hz-2022-08-30-103106.ppd');
% NIdata = load(          'E:\Q_Alex\projects\nLight\data\02_stimRates\VRdata_DBH182_left_10mW_20Hz_20220830105400.mat');
% Pupildata = load(       'E:\Q_Alex\projects\nLight\data\02_stimRates\video0075 10-31-03_ds_DLC_tracking.mat');

% Pdata_LC = import_ppd(  'E:\Q_Alex\projects\nLight\data\02_stimRates\182_LCl_40Hz-2022-08-30-123736.ppd');
% Pdata_HC = import_ppd(  'E:\Q_Alex\projects\nLight\data\02_stimRates\182_HCl_40Hz-2022-08-30-123737.ppd');
% NIdata = load(          'E:\Q_Alex\projects\nLight\data\02_stimRates\VRdata_DBH182_left_10mW_40Hz_20220830130103.mat');
% Pupildata = load(       'E:\Q_Alex\projects\nLight\data\02_stimRates\video0082 12-37-31_ds_DLC_tracking.mat');


% DBH185 - right
Pdata_LC = import_ppd(  'E:\Q_Alex\projects\nLight\data\02_stimRates\185_LCr_1Hz-2022-08-30-114638.ppd');
Pdata_HC = import_ppd(  'E:\Q_Alex\projects\nLight\data\02_stimRates\185_HCr_1Hz-2022-08-30-114638.ppd');
NIdata = load(          'E:\Q_Alex\projects\nLight\data\02_stimRates\VRdata_DBH185_right_10mW_1Hz_20220830120910.mat');
Pupildata = load(       'E:\Q_Alex\projects\nLight\data\02_stimRates\video0079 11-46-33_ds_DLC_tracking.mat');

% Pdata_LC = import_ppd(  'E:\Q_Alex\projects\nLight\data\02_stimRates\185_LCr_2Hz-2022-08-30-150842.ppd');
% Pdata_HC = import_ppd(  'E:\Q_Alex\projects\nLight\data\02_stimRates\185_HCr_2Hz-2022-08-30-150845.ppd');
% NIdata = load(          'E:\Q_Alex\projects\nLight\data\02_stimRates\VRdata_DBH185_right_10mW_2Hz_20220830153138.mat');
% Pupildata = load(       'E:\Q_Alex\projects\nLight\data\02_stimRates\video0088 15-08-15_ds_DLC_tracking.mat');

% Pdata_LC = import_ppd(  'E:\Q_Alex\projects\nLight\data\02_stimRates\185_LCr_5Hz-2022-08-30-130542.ppd');
% Pdata_HC = import_ppd(  'E:\Q_Alex\projects\nLight\data\02_stimRates\185_HCr_5Hz-2022-08-30-130542.ppd');
% NIdata = load(          'E:\Q_Alex\projects\nLight\data\02_stimRates\VRdata_DBH185_right_10mW_5Hz_20220830132852.mat');
% Pupildata = load(       'E:\Q_Alex\projects\nLight\data\02_stimRates\video0083 13-05-44_ds_DLC_tracking.mat');
 
% Pdata_LC = import_ppd(  'E:\Q_Alex\projects\nLight\data\02_stimRates\185_LCr_10Hz-2022-08-30-144534.ppd');
% Pdata_HC = import_ppd(  'E:\Q_Alex\projects\nLight\data\02_stimRates\185_HCr_10Hz-2022-08-30-144534.ppd');
% NIdata = load(          'E:\Q_Alex\projects\nLight\data\02_stimRates\VRdata_DBH185_right_10mW_10Hz_20220830150810.mat');
% Pupildata = load(       'E:\Q_Alex\projects\nLight\data\02_stimRates\video0087 14-45-36_ds_DLC_tracking.mat');

Pdata_LC = import_ppd(  'E:\Q_Alex\projects\nLight\data\02_stimRates\185_LCr_20Hz-2022-08-30-112209.ppd');
Pdata_HC = import_ppd(  'E:\Q_Alex\projects\nLight\data\02_stimRates\185_HCr_20Hz-2022-08-30-112210.ppd');
NIdata = load(          'E:\Q_Alex\projects\nLight\data\02_stimRates\VRdata_DBH185_right_10mW_20Hz_20220830114456.mat');
Pupildata = load(       'E:\Q_Alex\projects\nLight\data\02_stimRates\video0077 11-22-11_ds_DLC_tracking.mat');

% Pdata_LC = import_ppd(  'E:\Q_Alex\projects\nLight\data\02_stimRates\185_LCr_40Hz-2022-08-30-132911.ppd');
% Pdata_HC = import_ppd(  'E:\Q_Alex\projects\nLight\data\02_stimRates\185_HCr_40Hz-2022-08-30-132912.ppd');
% NIdata = load(          'E:\Q_Alex\projects\nLight\data\02_stimRates\VRdata_DBH185_right_10mW_40Hz_20220830135151.mat');
% Pupildata = load(       'E:\Q_Alex\projects\nLight\data\02_stimRates\video0084 13-29-10_ds_DLC_tracking.mat');


%% DBH87 - right
% Pdata_LC = import_ppd(  'E:\Q_Alex\projects\nLight\data\02_stimRates\87_LCr_1Hz-2022-08-31-105505.ppd');
% Pdata_HC = import_ppd(  'E:\Q_Alex\projects\nLight\data\02_stimRates\87_HCr_1Hz-2022-08-31-105506.ppd');
% NIdata = load(          'E:\Q_Alex\projects\nLight\data\02_stimRates\VRdata_DBH87_right_10mW_1Hz_20220831111821.mat');
% Pupildata = load(       'E:\Q_Alex\projects\nLight\data\02_stimRates\video0090 10-54-57_ds_DLC_tracking.mat');

% Pdata_LC = import_ppd(  'E:\Q_Alex\projects\nLight\data\02_stimRates\87_LCr_2Hz-2022-08-31-152647.ppd');
% Pdata_HC = import_ppd(  'E:\Q_Alex\projects\nLight\data\02_stimRates\87_HCr_2Hz-2022-08-31-152648.ppd');
% NIdata = load(          'E:\Q_Alex\projects\nLight\data\02_stimRates\VRdata_DBH87_right_10mW_2Hz_20220831154919.mat');
% Pupildata = load(       'E:\Q_Alex\projects\nLight\data\02_stimRates\video0094 15-26-29_ds_DLC_tracking.mat');

% Pdata_LC = import_ppd(  'E:\Q_Alex\projects\nLight\data\02_stimRates\87_LCr_5Hz-2022-08-31-122311.ppd');
% Pdata_HC = import_ppd(  'E:\Q_Alex\projects\nLight\data\02_stimRates\87_HCr_5Hz-2022-08-31-122312.ppd');
% NIdata = load(          'E:\Q_Alex\projects\nLight\data\02_stimRates\VRdata_DBH87_right_10mW_5Hz_20220831124550.mat');
% Pupildata = load(       'E:\Q_Alex\projects\nLight\data\02_stimRates\video0091 12-23-06_ds_DLC_tracking.mat');
 
% Pdata_LC = import_ppd(  'E:\Q_Alex\projects\nLight\data\02_stimRates\87_LCr_10Hz-2022-08-31-150345.ppd');
% Pdata_HC = import_ppd(  'E:\Q_Alex\projects\nLight\data\02_stimRates\87_HCr_10Hz-2022-08-31-150346.ppd');
% NIdata = load(          'E:\Q_Alex\projects\nLight\data\02_stimRates\VRdata_DBH87_right_10mW_10Hz_20220831152628.mat');
% Pupildata = load(       'E:\Q_Alex\projects\nLight\data\02_stimRates\video0093 15-03-47_ds_DLC_tracking.mat');

% Pdata_LC = import_ppd(  'E:\Q_Alex\projects\nLight\data\02_stimRates\87_LCr_20Hz-2022-08-31-103159.ppd');
% Pdata_HC = import_ppd(  'E:\Q_Alex\projects\nLight\data\02_stimRates\87_HCr_20Hz-2022-08-31-103200.ppd');
% NIdata = load(          'E:\Q_Alex\projects\nLight\data\02_stimRates\VRdata_DBH87_right_10mW_20Hz_20220831105446.mat');
% Pupildata = load(       'E:\Q_Alex\projects\nLight\data\02_stimRates\video0089 10-32-05_ds_DLC_tracking.mat');

% Pdata_LC = import_ppd(  'E:\Q_Alex\projects\nLight\data\02_stimRates\87_LCr_40Hz-2022-08-31-124615.ppd');
% Pdata_HC = import_ppd(  'E:\Q_Alex\projects\nLight\data\02_stimRates\87_HCr_40Hz-2022-08-31-124616.ppd');
% NIdata = load(          'E:\Q_Alex\projects\nLight\data\02_stimRates\VRdata_DBH87_right_10mW_40Hz_20220831130943.mat');
% Pupildata = load(       'E:\Q_Alex\projects\nLight\data\02_stimRates\video0092 12-46-11_ds_DLC_tracking.mat');


%% define some variables
SFq	= 3000;                     % NI sampling rate, in Hz

fitorder	= 1;                % order of the fit to correct for photometry bleaching
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

Pdata_LC.diff = Pdata_LC.analog_1_c-Pdata_LC.analog_2_c;                                                    % calculate difference between 470 nm and 405 nm channel as actual signal 
Pdata_LC.diff_s = movmean(Pdata_LC.diff, Pdata_LC.sampling_rate./1000.*smoothwindow_photometry);            % smooth data using a moving average filter of previously defined window


%% process Photometry data for synchronization - Hippocampus (essentially the same as in the previous section for LC data)
Opto_trig_idx   = find(Pdata_HC.digital_1(1:end-1) < 0.5 & Pdata_HC.digital_1(2:end) > 0.5)+1;              % find first and last trigger for data synchronization
Pdata_HC.analog_1 = Pdata_HC.analog_1(Opto_trig_idx(1):Opto_trig_idx(end));                                 % extract photometry data excited at 470 nm from first to last trigger          
Pdata_HC.analog_2 = Pdata_HC.analog_2(Opto_trig_idx(1):Opto_trig_idx(end));                                 % extract photometry data excited at 405 nm from first to last trigger   

[p_d1] = polyfit([1:length(Pdata_HC.analog_1)],Pdata_HC.analog_1',fitorder);                                % perform polynomial fit of 470 nm excited trace
HC_y_d1 = polyval(p_d1,[1:length(Pdata_HC.analog_1)]);                                                    	% create fitted curve for 470 nm excited trace
Pdata_HC.analog_1_c = Pdata_HC.analog_1./HC_y_d1';                                                       	% divide 470 nm excited trace by polynomial fit to correct for bleaching

[p_d2] = polyfit([1:length(Pdata_HC.analog_2)],Pdata_HC.analog_2',fitorder);                                % perform polynomial fit of 405 nm excited trace
HC_y_d2 = polyval(p_d2,[1:length(Pdata_HC.analog_2)]);                                                      % create fitted curve for 405 nm excited trace
Pdata_HC.analog_2_c = Pdata_HC.analog_2./HC_y_d2';                                                          % divide 405 nm excited trace by polynomial fit to correct for bleaching

Pdata_HC.diff = Pdata_HC.analog_1_c-Pdata_HC.analog_2_c;                                                    % caHCulate difference between 470 nm and 405 nm channel as actual signal 
Pdata_HC.diff_s = movmean(Pdata_HC.diff, Pdata_HC.sampling_rate./1000.*smoothwindow_photometry);            % smooth data using a moving average filter of previously defined window


%% process pupil data for synchronization
Pdata.d.pupil_diameter_rs = resample(Pupildata.d.pupil_diameter, Pdata_HC.sampling_rate, Pupildata.d.sr);    % re-sample pupil data to mtach sampling rate of photometry data


% check length of difference in file length
minlength = min([length(Pdata.d.pupil_diameter_rs) length(opto_stim_ds) length(Pdata_LC.diff_s) length(Pdata_HC.diff_s)]);
maxlength = max([length(Pdata.d.pupil_diameter_rs) length(opto_stim_ds) length(Pdata_LC.diff_s) length(Pdata_HC.diff_s)]);
disp(['difference of ' num2str(abs(minlength-maxlength)*1/130) ' seconds between VR and pupil file'])



%% plot raw data
figure('color', [1 1 1]); 
ax1 = subplot(7, 1, 1); hold on;
plot([1:length(opto_stim_ds)]./Pdata_LC.sampling_rate, rescale(opto_stim_ds, min([Pdata_LC.analog_1; Pdata_LC.analog_2 ]), max([Pdata_LC.analog_1; Pdata_LC.analog_2 ])), 'r-', 'color', [1 0 0 0.25]); hold on;
plot([1:length(Pdata_LC.analog_2)]./Pdata_LC.sampling_rate,Pdata_LC.analog_2 , 'k--', 'color', [153, 51, 255]./255)
plot([1:length(Pdata_LC.analog_1)]./Pdata_LC.sampling_rate, LC_y_d2 , 'k-')
plot([1:length(Pdata_LC.analog_1)]./Pdata_LC.sampling_rate, Pdata_LC.analog_1 , 'k-', 'color', [46, 184, 46]./255)
plot([1:length(Pdata_LC.analog_1)]./Pdata_LC.sampling_rate, LC_y_d1, 'k-')

ax2 = subplot(7, 1, 2); hold on;
plot([1:length(opto_stim_ds)]./Pdata_LC.sampling_rate, rescale(opto_stim_ds, min([Pdata_LC.analog_1_c; Pdata_LC.analog_2_c ]), max([Pdata_LC.analog_1_c; Pdata_LC.analog_2_c ])), 'r-', 'color', [1 0 0 0.25]); hold on;
plot([1:length(Pdata_LC.analog_2)]./Pdata_LC.sampling_rate,Pdata_LC.analog_2_c , 'k-', 'color', [153, 51, 255]./255); 
plot([1:length(Pdata_LC.analog_1)]./Pdata_LC.sampling_rate, Pdata_LC.analog_1_c , 'k-', 'color', [46, 184, 46]./255)

ax3 = subplot(7, 1, 3); hold on;
plot([1:length(opto_stim_ds)]./Pdata_LC.sampling_rate, rescale(opto_stim_ds, min(Pdata_LC.diff), max(Pdata_LC.diff)), 'r-', 'color', [1 0 0 0.25]); hold on;
plot([1:length(Pdata_LC.diff )]./Pdata_LC.sampling_rate, Pdata_LC.diff , 'k-', 'color', [0.85 0.85 0.85]); 
plot([1:length(Pdata_LC.diff_s )]./Pdata_LC.sampling_rate, Pdata_LC.diff_s , 'k-'); 

ax4 = subplot(7, 1, 4); hold on;
plot([1:length(opto_stim_ds)]./Pdata_HC.sampling_rate, rescale(opto_stim_ds, min([Pdata_HC.analog_1; Pdata_HC.analog_2 ]), max([Pdata_HC.analog_1; Pdata_HC.analog_2 ])), 'r-', 'color', [1 0 0 0.25]); hold on;
plot([1:length(Pdata_HC.analog_2)]./Pdata_HC.sampling_rate,Pdata_HC.analog_2 , 'k--', 'color', [153, 51, 255]./255)
plot([1:length(Pdata_HC.analog_1)]./Pdata_HC.sampling_rate, HC_y_d2 , 'k-')
plot([1:length(Pdata_HC.analog_1)]./Pdata_HC.sampling_rate, Pdata_HC.analog_1 , 'k-', 'color', [46, 184, 46]./255)
plot([1:length(Pdata_HC.analog_1)]./Pdata_HC.sampling_rate, HC_y_d1, 'k-')

ax5 = subplot(7, 1, 5); hold on;
plot([1:length(opto_stim_ds)]./Pdata_HC.sampling_rate, rescale(opto_stim_ds, min([Pdata_HC.analog_1_c; Pdata_HC.analog_2_c ]), max([Pdata_HC.analog_1_c; Pdata_HC.analog_2_c ])), 'r-', 'color', [1 0 0 0.25]); hold on;
plot([1:length(Pdata_HC.analog_2)]./Pdata_HC.sampling_rate,Pdata_HC.analog_2_c , 'k-', 'color', [153, 51, 255]./255); 
plot([1:length(Pdata_HC.analog_1)]./Pdata_HC.sampling_rate, Pdata_HC.analog_1_c , 'k-', 'color', [46, 184, 46]./255)

ax6 = subplot(7, 1, 6); hold on;
plot([1:length(opto_stim_ds)]./Pdata_HC.sampling_rate, rescale(opto_stim_ds, min(Pdata_HC.diff), max(Pdata_HC.diff)), 'r-', 'color', [1 0 0 0.25]); hold on;
plot([1:length(Pdata_HC.diff )]./Pdata_HC.sampling_rate, Pdata_HC.diff , 'k-', 'color', [0.85 0.85 0.85]); 
plot([1:length(Pdata_HC.diff_s )]./Pdata_HC.sampling_rate, Pdata_HC.diff_s , 'k-'); 


ax7 = subplot(7, 1, 7); hold on;
plot([1:length(opto_stim_ds)]./Pdata_HC.sampling_rate, rescale(opto_stim_ds, min(Pdata.d.pupil_diameter_rs), max(Pdata.d.pupil_diameter_rs)), 'r-', 'color', [1 0 0 0.25]); hold on;
plot([1:length(Pdata.d.pupil_diameter_rs)]./Pdata_HC.sampling_rate, Pdata.d.pupil_diameter_rs , 'k-'); 
xlim([1 length(Pdata.d.pupil_diameter_rs)]./Pdata_HC.sampling_rate)

linkaxes([ax1 ax2 ax3 ax4 ax5 ax6 ax7],'x'); xlim([1 length(Pdata_HC.diff)]./Pdata_HC.sampling_rate)





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
    
    % HC photometry data
    trials_opto_HC(i_opto, :)          = Pdata_HC.diff_s(cur_trig-(pre_stim*Pdata_HC.sampling_rate):cur_trig+(post_stim*Pdata_HC.sampling_rate)); 
    trials_opto_HC_delta(i_opto, :)    = trials_opto_HC(i_opto, :)-median(Pdata_HC.diff_s(cur_trig-Pdata_HC.sampling_rate:cur_trig-1));
    
    trials_opto_HC_470(i_opto, :)          = Pdata_HC.analog_1_c(cur_trig-(pre_stim*Pdata_HC.sampling_rate):cur_trig+(post_stim*Pdata_HC.sampling_rate)); 
    trials_opto_HC_470_delta(i_opto, :)    = trials_opto_HC_470(i_opto, :)-median(Pdata_HC.analog_1_c(cur_trig-Pdata_HC.sampling_rate:cur_trig-1));
   
    trials_opto_HC_405(i_opto, :)          = Pdata_HC.analog_2_c(cur_trig-(pre_stim*Pdata_HC.sampling_rate):cur_trig+(post_stim*Pdata_HC.sampling_rate)); 
    trials_opto_HC_405_delta(i_opto, :)    = trials_opto_HC_405(i_opto, :)-median(Pdata_HC.analog_2_c(cur_trig-Pdata_HC.sampling_rate:cur_trig-1));
    
    % pupil data
    trials_opto_pupil(i_opto, :)          = Pdata.d.pupil_diameter_rs(cur_trig-(pre_stim*Pdata_HC.sampling_rate):cur_trig+(post_stim*Pdata_HC.sampling_rate)); 
    trials_opto_pupil_delta(i_opto, :)    = (trials_opto_pupil(i_opto, :)./median(Pdata.d.pupil_diameter_rs(cur_trig-Pdata_HC.sampling_rate:cur_trig-1)))-1;
       
end



for idx_sham = 1:100
    % generate random "triggers" as a control
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
        
        % HC photometry data
        trials_sham_HC(i_sham, :)          = Pdata_HC.diff_s(cur_trig-(pre_stim*Pdata_HC.sampling_rate):cur_trig+(post_stim*Pdata_HC.sampling_rate));
        trials_sham_HC_delta(i_sham, :)    = trials_sham_HC(i_sham, :)-median(Pdata_HC.diff_s(cur_trig-Pdata_HC.sampling_rate:cur_trig-1));
        
        trials_sham_HC_470(i_sham, :)          = Pdata_HC.analog_1_c(cur_trig-(pre_stim*Pdata_HC.sampling_rate):cur_trig+(post_stim*Pdata_HC.sampling_rate));
        trials_sham_HC_470_delta(i_sham, :)    = trials_sham_HC_470(i_sham, :)-median(Pdata_HC.analog_1_c(cur_trig-Pdata_HC.sampling_rate:cur_trig-1));
        
        trials_sham_HC_405(i_sham, :)          = Pdata_HC.analog_2_c(cur_trig-(pre_stim*Pdata_HC.sampling_rate):cur_trig+(post_stim*Pdata_HC.sampling_rate));
        trials_sham_HC_405_delta(i_sham, :)    = trials_sham_HC_405(i_sham, :)-median(Pdata_HC.analog_2_c(cur_trig-Pdata_HC.sampling_rate:cur_trig-1));
        
        % pupil data
        trials_sham_pupil(i_sham, :)          = Pdata.d.pupil_diameter_rs(cur_trig-(pre_stim*Pdata_HC.sampling_rate):cur_trig+(post_stim*Pdata_HC.sampling_rate));
        trials_sham_pupil_delta(i_sham, :)    = (trials_sham_pupil(i_sham, :)./median(Pdata.d.pupil_diameter_rs(cur_trig-Pdata_HC.sampling_rate:cur_trig-1)))-1;
        
    end
    
    mean_sham_LC(idx_sham, :)       = mean(trials_sham_LC_delta);
    mean_sham_HC(idx_sham, :)       = mean(trials_sham_HC_delta);
    mean_sham_pupil(idx_sham, :)    = mean(trials_sham_pupil_delta);
    
end







cmin = prctile([trials_opto_LC_470_delta(:);  trials_opto_LC_405_delta(:); trials_opto_LC_delta(:)], 1);
cmax = prctile([trials_opto_LC_470_delta(:);  trials_opto_LC_405_delta(:); trials_opto_LC_delta(:)], 99);
climit = max(abs([cmin cmax])); climit = climit+climit/5;



f2 = figure('color', [1 1 1])

ax1 = subplot(2, 4, 1); title('470 nm excitation'); hold on;
imagesc([-pre_stim:1/Pdata_LC.sampling_rate:post_stim],1:length(trig_opto), trials_opto_LC_470_delta); colorbar;
ylabel('trials [no]'); 
caxis([-climit climit]); colormap(redblue(500));

ax2 = subplot(2, 4, 2); title('405 nm excitation'); hold on;
imagesc([-pre_stim:1/Pdata_LC.sampling_rate:post_stim],1:length(trig_opto), trials_opto_LC_405_delta); colorbar;
caxis([-climit climit]); colormap(redblue(500));

ax3 = subplot(2, 4, 3); title('diff'); hold on;
imagesc([-pre_stim:1/Pdata_LC.sampling_rate:post_stim],1:length(trig_opto), trials_opto_LC_delta); colorbar;
caxis([-climit climit]); colormap(redblue(500));
ylim([1-0.5 length(trig_opto)+0.5])

linkaxes([ax1, ax2, ax3])
xlim([-pre_stim post_stim]); ylim([1-0.5 length(trig_opto)+0.5])
 

ax4 = subplot(2, 4, 4); title('pupil'); hold on;
imagesc([-pre_stim:1/Pdata_LC.sampling_rate:post_stim],1:length(trig_opto), trials_opto_pupil_delta); colorbar;
xlim([-pre_stim post_stim]); ylim([1-0.5 length(trig_opto)+0.5])
colormap(redblue(500)); caxis([-0.3 0.3]); 



ax5 = subplot(2, 4, 5);
c.color_area = [210, 210, 210]./255; c.color_line =  [180, 180, 180]./255; c.x_axis = [-pre_stim:1/Pdata_LC.sampling_rate:post_stim]; c.error = 'std'; c.handle     = gcf; c.alpha      = 0.5; c.line_width = 2;
plot_areaerrorbar(trials_sham_LC_470_delta(:, 1:size(c.x_axis, 2)), c); hold on; ylabel('flurescence [rel.]')
c.color_area = [0, 0, 255]./255; c.color_line =  [0, 0, 255]./255; c.handle     = gcf;
plot_areaerrorbar(trials_opto_LC_470_delta(:, 1:size(c.x_axis, 2)), c); hold on; ylabel('flurescence [rel.]')

ax6 = subplot(2, 4, 6);
c.color_area = [210, 210, 210]./255; c.color_line =  [180, 180, 180]./255;  c.handle     = gcf; 
plot_areaerrorbar(trials_sham_LC_405_delta(:, 1:size(c.x_axis, 2)), c); hold on; ylabel('flurescence [rel.]')
c.color_area = [153, 51, 255]./255; c.color_line =  [153, 51, 255]./255;   c.handle     = gcf; 
plot_areaerrorbar(trials_opto_LC_405_delta(:, 1:size(c.x_axis, 2)), c); hold on;
xlabel('time [s]')

ax7 = subplot(2, 4, 7);
c.color_area = [210, 210, 210]./255; c.color_line =  [180, 180, 180]./255;  c.handle     = gcf; 
plot_areaerrorbar(trials_sham_LC_delta(:, 1:size(c.x_axis, 2)), c); hold on; ylabel('flurescence [rel.]')
c.color_area = [0, 230, 0]./255; c.color_line =  [0, 230, 0]./255; c.handle     = gcf; 
plot_areaerrorbar(trials_opto_LC_delta(:, 1:size(c.x_axis, 2)), c); hold on;
linkaxes([ax5, ax6, ax7])
xlim([-pre_stim post_stim]); ylim([cmin+cmin/10 cmax+cmax/10])
ylim([-0.01 0.04])

ax8 = subplot(2, 4, 8);
c.color_area = [210, 210, 210]./255; c.color_line =  [180, 180, 180]./255;c.handle     = gcf;
plot_areaerrorbar(trials_sham_pupil_delta(:, 1:size(c.x_axis, 2)), c); hold on; ylabel('pupil size [%]')
c.color_area = [50, 50, 50]./255; c.color_line =  [50, 50, 50]./255;  c.handle     = gcf; 
plot_areaerrorbar(trials_opto_pupil_delta(:, 1:size(c.x_axis, 2)), c); hold on;
xlim([-pre_stim post_stim]); 



 ylim([-0.4 0.7])


cmin = prctile([trials_opto_HC_470_delta(:);  trials_opto_HC_405_delta(:); trials_opto_HC_delta(:)], 1);
cmax = prctile([trials_opto_HC_470_delta(:);  trials_opto_HC_405_delta(:); trials_opto_HC_delta(:)], 99);
climit = max(abs([cmin cmax])); climit = climit+climit/5;

f3 = figure('color', [1 1 1])

ax1 = subplot(2, 4, 1); title('470 nm excitation'); hold on;
imagesc([-pre_stim:1/Pdata_HC.sampling_rate:post_stim],1:length(trig_opto), trials_opto_HC_470_delta); colorbar;
ylabel('trials [no]'); 
caxis([-climit climit]); colormap(redblue(500));

ax2 = subplot(2, 4, 2); title('405 nm excitation'); hold on;
imagesc([-pre_stim:1/Pdata_HC.sampling_rate:post_stim],1:length(trig_opto), trials_opto_HC_405_delta); colorbar;
caxis([-climit climit]); colormap(redblue(500));

ax3 = subplot(2, 4, 3); title('diff'); hold on;
imagesc([-pre_stim:1/Pdata_HC.sampling_rate:post_stim],1:length(trig_opto), trials_opto_HC_delta); colorbar;
caxis([-climit climit]); colormap(redblue(500));
ylim([1-0.5 length(trig_opto)+0.5])

linkaxes([ax1, ax2, ax3])
xlim([-pre_stim post_stim]); ylim([1-0.5 length(trig_opto)+0.5])
 

ax4 = subplot(2, 4, 4); title('pupil'); hold on;
imagesc([-pre_stim:1/Pdata_HC.sampling_rate:post_stim],1:length(trig_opto), trials_opto_pupil_delta); colorbar;
xlim([-pre_stim post_stim]); ylim([1-0.5 length(trig_opto)+0.5])
colormap(redblue(500)); caxis([-0.3 0.3]); 



ax5 = subplot(2, 4, 5);
c.color_area = [210, 210, 210]./255; c.color_line =  [180, 180, 180]./255; c.x_axis = [-pre_stim:1/Pdata_HC.sampling_rate:post_stim]; c.error = 'std'; c.handle     = gcf; c.alpha      = 0.5; c.line_width = 2;
plot_areaerrorbar(trials_sham_HC_470_delta(:, 1:size(c.x_axis, 2)), c); hold on; ylabel('flurescence [rel.]')
c.color_area = [0, 0, 255]./255; c.color_line =  [0, 0, 255]./255; c.handle     = gcf;
plot_areaerrorbar(trials_opto_HC_470_delta(:, 1:size(c.x_axis, 2)), c); hold on; ylabel('flurescence [rel.]')

ax6 = subplot(2, 4, 6);
c.color_area = [210, 210, 210]./255; c.color_line =  [180, 180, 180]./255;  c.handle     = gcf; 
plot_areaerrorbar(trials_sham_HC_405_delta(:, 1:size(c.x_axis, 2)), c); hold on; ylabel('flurescence [rel.]')
c.color_area = [153, 51, 255]./255; c.color_line =  [153, 51, 255]./255;   c.handle     = gcf; 
plot_areaerrorbar(trials_opto_HC_405_delta(:, 1:size(c.x_axis, 2)), c); hold on;
xlabel('time [s]')

ax7 = subplot(2, 4, 7);
c.color_area = [210, 210, 210]./255; c.color_line =  [180, 180, 180]./255;  c.handle     = gcf; 
plot_areaerrorbar(trials_sham_HC_delta(:, 1:size(c.x_axis, 2)), c); hold on; ylabel('flurescence [rel.]')
c.color_area = [0, 230, 0]./255; c.color_line =  [0, 230, 0]./255; c.handle     = gcf; 
plot_areaerrorbar(trials_opto_HC_delta(:, 1:size(c.x_axis, 2)), c); hold on;
linkaxes([ax5, ax6, ax7])
xlim([-pre_stim post_stim]);  ylim([cmin+cmin/10 cmax+cmax/10])

ylim([-0.01 0.02])

ax8 = subplot(2, 4, 8);
c.color_area = [210, 210, 210]./255; c.color_line =  [180, 180, 180]./255;c.handle     = gcf;
plot_areaerrorbar(trials_sham_pupil_delta(:, 1:size(c.x_axis, 2)), c); hold on; ylabel('pupil size [%]')
c.color_area = [50, 50, 50]./255; c.color_line =  [50, 50, 50]./255;  c.handle     = gcf; 
plot_areaerrorbar(trials_opto_pupil_delta(:, 1:size(c.x_axis, 2)), c); hold on;
xlim([-pre_stim post_stim]); 

 ylim([-0.4 0.7])




mean_response_LC = mean(trials_opto_LC_delta); 
LC_response = median(mean_response_LC(pre_stim.*Pdata_LC.sampling_rate+stimdur.*Pdata_LC.sampling_rate-peak_window.*Pdata_LC.sampling_rate:pre_stim.*Pdata_LC.sampling_rate+stimdur.*Pdata_LC.sampling_rate)).*100;
disp(['max LC response = ' num2str(LC_response) ' %'])

mean_response_HC = mean(trials_opto_HC_delta); 
HC_response = median(mean_response_HC(pre_stim.*Pdata_HC.sampling_rate+stimdur.*Pdata_HC.sampling_rate-peak_window.*Pdata_HC.sampling_rate:pre_stim.*Pdata_HC.sampling_rate+stimdur.*Pdata_HC.sampling_rate)).*100;
disp(['max HC response = ' num2str(HC_response) ' %'])

mean_response_pupil = mean(trials_opto_pupil_delta); 
pupil_response = median(mean_response_pupil(pre_stim.*Pdata_LC.sampling_rate+stimdur.*Pdata_LC.sampling_rate-peak_window.*Pdata_LC.sampling_rate:pre_stim.*Pdata_LC.sampling_rate+stimdur.*Pdata_LC.sampling_rate)).*100;
disp(['max pupil response = ' num2str(pupil_response) ' %'])
