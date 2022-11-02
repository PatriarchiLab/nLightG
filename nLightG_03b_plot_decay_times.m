clear all; close all; clc;

Toff_LC = [3.46 2.24 1.66 1.73 2.55 5.02 ];
Toff_HC = [17.87 30.12 32.02 53.65 71.06 18.85];


figure('color', [1 1 1]);

title('T off (raw)'); hold on;
bar([mean(Toff_LC) mean(Toff_HC) ]); hold on;
errorbar(1, mean(Toff_LC), std(Toff_LC), 'ko')
errorbar(2, mean(Toff_HC), std(Toff_HC), 'ko')

for pltidx = 1:length(Toff_LC)
    plot([1 2], [Toff_LC(pltidx) Toff_HC(pltidx)], 'k-', 'color', [0.5 0.5 0.5])
end

set(gca, 'XTick', [1:2],  'XTickLabel', {'LC', 'HC'})
ylabel('T-off [s]')



%% calculate significance
[h, p] = jbtest(Toff_LC);   % Jarque Bera test for normality (0 = normal distribution; 1 = non-normal distribution)
[h, p] = jbtest(Toff_HC); 	% Jarque Bera test for normality (0 = normal distribution; 1 = non-normal distribution)

[h, p] = ttest2(Toff_LC, Toff_HC)
