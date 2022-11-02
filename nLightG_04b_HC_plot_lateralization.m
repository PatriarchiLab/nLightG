clear all; close all; clc;

leftHC_stimLeft     = [1.43     1.54    1.57    1.97    0.22    1.27];
rightHC_stimLeft    = [0.42     0.62    0.67    0.53    0.62    0.54];

leftHC_stimRight    = [0.26     0.36    0.54    0.7     0.08    0.38];
rightHC_stimRight   = [1.28     1.23    1.7     1.19    1.52    2.72];


all_ipsi    =  [leftHC_stimLeft rightHC_stimRight];
all_contra  =  [leftHC_stimRight rightHC_stimLeft];

mean_ipsi   = mean([leftHC_stimLeft; rightHC_stimRight]);
mean_contra = mean([leftHC_stimRight rightHC_stimLeft]);

figure('color', [1 1 1]);
subplot(1, 2, 1); hold on;
for plotidx = 1:length(all_ipsi)
    plot([1, 2], [all_ipsi(plotidx), all_contra(plotidx)], 'k-', 'color', [0.5 0.5 0.5 0.5]);
end

errorbar(1, mean(all_ipsi), std(all_ipsi), 'ko-', 'LineWidth', 1.5)
errorbar(2, mean(all_contra), std(all_contra), 'ko-', 'LineWidth', 1.5)
xlim([0.5 2.5]); ylim([0 3]); ylabel('dF/F');
set(gca, 'XTick', [1, 2], 'XTickLabel', {'ipsi', 'contra'})

subplot(1, 2, 2); hold on;
plot(0.8:0.4/(length(mean_ipsi)-1):1.2, mean_contra./mean_ipsi, 'ko')
errorbar(1, mean(mean_contra./mean_ipsi), std(mean_contra./mean_ipsi), 'ko-', 'LineWidth', 1.5)
xlim([0.5 1.5]); ylim([0 1]); ylabel('contra/ipsi [%]');



[h, p] = jbtest(all_ipsi)   	% Jarque Bera test for normality (0 = normal distribution; 1 = non-normal distribution)
[h, p] = jbtest(all_contra)     % Jarque Bera test for normality (0 = normal distribution; 1 = non-normal distribution)


[h, p, ci, stats] = ttest(all_ipsi, all_contra)

[h, p, ci, stats] = ttest(mean_contra./mean_ipsi, 1)



