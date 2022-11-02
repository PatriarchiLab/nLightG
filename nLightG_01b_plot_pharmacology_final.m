clear all; close all; clc;

Peak_base = [4.91   1.46    1.7     6.56    6.08    6.58];
Peak_NaCl = [4.59   1.75    1.79    5.7     5.57    6.31];
Peak_desi = [9.13   3.83    2.95    17.04   11.04   11.13];

Decay_base = [2.72  2.06    0.97    1.9     2.66    4.81];
Decay_NaCl = [2.64  1.61    1.6     2.1     2.34    4.24];
Decay_desi = [23.2  17.7    18.37   27.27   26.04   29.81];


figure('color', [1 1 1]);

subplot(2, 2, 1); title('peak dF/F (raw)'); hold on;
bar([mean(Peak_base) mean(Peak_NaCl) mean(Peak_desi)]); hold on;
errorbar(1, mean(Peak_base), std(Peak_base), 'ko')
errorbar(2, mean(Peak_NaCl), std(Peak_NaCl), 'ko')
errorbar(3, mean(Peak_desi), std(Peak_desi), 'ko')
for pltidx = 1:length(Peak_base)
    plot([1 2 3], [Peak_base(pltidx) Peak_NaCl(pltidx) Peak_desi(pltidx)], 'k-', 'color', [0.5 0.5 0.5])
end

set(gca, 'XTick', [1:3],  'XTickLabel', {'Base', 'NaCl', 'Desi'})
ylabel('dF/F [%]')


subplot(2, 2, 2); title('peak dF/F (norm)'); hold on;
bar([mean(Peak_base./Peak_base) mean(Peak_NaCl./Peak_base) mean(Peak_desi./Peak_base)]); hold on;
errorbar(1, mean(Peak_base./Peak_base), std(Peak_base./Peak_base), 'ko')
errorbar(2, mean(Peak_NaCl./Peak_base), std(Peak_NaCl./Peak_base), 'ko')
errorbar(3, mean(Peak_desi./Peak_base), std(Peak_desi./Peak_base), 'ko')
for pltidx = 1:length(Peak_base)
    plot([1 2 3], [Peak_base(pltidx)./Peak_base(pltidx) Peak_NaCl(pltidx)./Peak_base(pltidx) Peak_desi(pltidx)./Peak_base(pltidx)], 'k-', 'color', [0.5 0.5 0.5])
end

set(gca, 'XTick', [1:3],  'XTickLabel', {'Base', 'NaCl', 'Desi'})
ylabel('dF/F [norm]')




subplot(2, 2, 3); title('T off (raw)'); hold on;
bar([mean(Decay_base) mean(Decay_NaCl) mean(Decay_desi)]); hold on;
errorbar(1, mean(Decay_base), std(Decay_base), 'ko')
errorbar(2, mean(Decay_NaCl), std(Decay_NaCl), 'ko')
errorbar(3, mean(Decay_desi), std(Decay_desi), 'ko')
for pltidx = 1:length(Decay_base)
    plot([1 2 3], [Decay_base(pltidx) Decay_NaCl(pltidx) Decay_desi(pltidx)], 'k-', 'color', [0.5 0.5 0.5])
end

set(gca, 'XTick', [1:3],  'XTickLabel', {'Base', 'NaCl', 'Desi'})
ylabel('T-off [s]')

subplot(2, 2, 4); title('T off (norm)'); hold on;
bar([mean(Decay_base./Decay_base) mean(Decay_NaCl./Decay_base) mean(Decay_desi./Decay_base)]); hold on;
errorbar(1, mean(Decay_base./Decay_base), std(Decay_base./Decay_base), 'ko')
errorbar(2, mean(Decay_NaCl./Decay_base), std(Decay_NaCl./Decay_base), 'ko')
errorbar(3, mean(Decay_desi./Decay_base), std(Decay_desi./Decay_base), 'ko')
for pltidx = 1:length(Decay_base)
    plot([1 2 3], [Decay_base(pltidx)./Decay_base(pltidx) Decay_NaCl(pltidx)./Decay_base(pltidx) Decay_desi(pltidx)./Decay_base(pltidx)], 'k-', 'color', [0.5 0.5 0.5])
end

set(gca, 'XTick', [1:3],  'XTickLabel', {'Base', 'NaCl', 'Desi'})
ylabel('T-off [norm]')





%% calculate significance
anova_in = [(Peak_base./Peak_base)', (Peak_NaCl./Peak_base)', (Peak_desi./Peak_base)'];
[p, tbl, stats] = anova1(anova_in);
multcompare(stats)

anova_in = [Decay_base', Decay_NaCl', Decay_desi'];
[p, tbl, stats] = anova1(anova_in);
multcompare(stats)


