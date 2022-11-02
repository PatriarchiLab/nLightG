clear all;  close all;clc;

LCresponses = xlsread('Q:\Alex\projects\nLight\data\03_ResponseDecay\mean_responses.xlsx', 'LC')';
HCresponses = xlsread('Q:\Alex\projects\nLight\data\03_ResponseDecay\mean_responses.xlsx', 'HC')';

SR = 130; 
t_vec = [-15:1./SR:60];


figure('color', [1 1 1]); 
ax1 = subplot(2, 2, 1); 
plot(t_vec, LCresponses, 'k'); hold on;
plot([0 4], [0.05 0.05], 'r-', 'LineWidth', 3)

ax2 = subplot(2, 2, 3); 
plot(t_vec, HCresponses, 'k'); hold on;
plot([0 4], [0.05 0.05], 'r-', 'LineWidth', 3)


ax3 = subplot(2, 2, 2); 
plot(t_vec, LCresponses./max(LCresponses), 'k'); hold on;
plot([0 4], [1.05 1.05], 'r-', 'LineWidth', 3)

ax4 = subplot(2, 2, 4); 
plot(t_vec, HCresponses./max(HCresponses), 'k'); hold on;
plot([0 4], [1.05 1.05], 'r-', 'LineWidth', 3)


linkaxes([ax1, ax2, ax3, ax4], 'x'); xlim([-15 60])



for idx = 1:size(LCresponses, 2)
    
    %% fit decay of LC data and extract parameters
    LCdata = LCresponses(:, idx);                           % iterate through mean responses 
    [maxVal, maxLoc] = max(LCdata);                         % identify maximum of mean response

    X = [1:length(LCdata(maxLoc:end))]./SR;                 % create timescale for exponential fit of decay
    Y = LCdata(maxLoc:end);                                 % create amplitudes for exponential fit of decay

    tbl = table(X(:), Y(:));                                % Convert X and Y into a table, which is the form fitnlm() likes the input data to be in.
    modelfun = @(b,x) b(1) * exp(-b(2)*x(:, 1)) + b(3);   	% define the model as Y = a * exp(-b*x) + c

    
    aGuessed = LCdata(maxLoc);                              % guess a as the peak dF/F
    bGuessed = 0.05;                                        % random guess of b
    cGuessed = median(LCdata(end-130:end));                 % guess c as the median of the last second
    beta0 = [aGuessed, bGuessed, cGuessed];                 % guess values to start with.  Just make your best guess.
    
    mdl = fitnlm(tbl, modelfun, beta0);                     % exponential fit of decaying dF/F    
    coefficients = mdl.Coefficients{:, 'Estimate'};         % get coefficients of exponential decay  
    yFitted = coefficients(1) * exp(-coefficients(2)*X) + coefficients(3);  % create vector of fitted decay


    figure('color', [1 1 1]);
    subplot(1, 2, 1); 
    plot(t_vec, LCdata); hold on; plot(t_vec(maxLoc), maxVal, 'ro')
    plot(t_vec(maxLoc:length(LCdata)), yFitted, 'r--')
    xlim([-15 60])

    % Place formula text roughly in the middle of the plot.
    formulaString = sprintf('Y = %.3f * exp(-%.7f * X) + %.3f', coefficients(1), coefficients(2), coefficients(3));
    text(maxLoc./130-14, maxVal,                        formulaString,                                                                                      'FontSize', 10, 'FontWeight', 'bold');
    text(maxLoc./130-14, maxVal-(maxVal./20),           ['T = 1/a = 1/' num2str(coefficients(2)) ' = ' num2str(1/coefficients(2)) ' s'],                    'FontSize', 10, 'FontWeight', 'bold');
    text(maxLoc./130-14, maxVal-(maxVal./20)*2,         ['peak dF/F = ' num2str(maxVal.*100) ' %'],                                                         'FontSize', 10, 'FontWeight', 'bold');
    text(maxLoc./130-14, maxVal-(maxVal./20)*3,         ['peak time = ' num2str((maxLoc-15.*SR)./SR) ' s'],                                                 'FontSize', 10, 'FontWeight', 'bold');


    %% repeat for hippocampus data
    HCdata = HCresponses(:, idx);                           % iterate through mean responses 
    [maxVal, maxLoc] = max(HCdata);                         % identify maximum of mean response

    X = [1:length(HCdata(maxLoc:end))]./SR;                 % create timescale for exponential fit of decay
    Y = HCdata(maxLoc:end);                                 % create amplitudes for exponential fit of decay

    tbl = table(X(:), Y(:));                                % Convert X and Y into a table, which is the form fitnlm() likes the input data to be in.
    modelfun = @(b,x) b(1) * exp(-b(2)*x(:, 1)) + b(3);   	% define the model as Y = a * exp(-b*x) + c

    
    aGuessed = HCdata(maxLoc);                              % guess a as the peak dF/F
    bGuessed = 0.05;                                        % random guess of b
    cGuessed = median(HCdata(end-130:end));                 % guess c as the median of the last second
    beta0 = [aGuessed, bGuessed, cGuessed];                 % guess values to start with.  Just make your best guess.
    
    mdl = fitnlm(tbl, modelfun, beta0);                     % exponential fit of decaying dF/F    
    coefficients = mdl.Coefficients{:, 'Estimate'};         % get coefficients of exponential decay  
    yFitted = coefficients(1) * exp(-coefficients(2)*X) + coefficients(3);  % create vector of fitted decay


    subplot(1, 2, 2); 
    plot(t_vec, HCdata); hold on; plot(t_vec(maxLoc), maxVal, 'ro')
    plot(t_vec(maxLoc:length(HCdata)), yFitted, 'r--')
    xlim([-15 60])

    % Place formula text roughly in the middle of the plot.
    formulaString = sprintf('Y = %.3f * exp(-%.7f * X) + %.3f', coefficients(1), coefficients(2), coefficients(3));
    text(maxLoc./130-14, maxVal,                        formulaString,                                                                                      'FontSize', 10, 'FontWeight', 'bold');
    text(maxLoc./130-14, maxVal-(maxVal./20),           ['T = 1/a = 1/' num2str(coefficients(2)) ' = ' num2str(1/coefficients(2)) ' s'],                    'FontSize', 10, 'FontWeight', 'bold');
    text(maxLoc./130-14, maxVal-(maxVal./20)*2,         ['peak dF/F = ' num2str(maxVal.*100) ' %'],                                                         'FontSize', 10, 'FontWeight', 'bold');
    text(maxLoc./130-14, maxVal-(maxVal./20)*3,         ['peak time = ' num2str((maxLoc-15.*SR)./SR) ' s'],                                                 'FontSize', 10, 'FontWeight', 'bold');


end

