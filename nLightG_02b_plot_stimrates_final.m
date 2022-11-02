clear all; close all; clc;

stimrates = [1 2 5 10 20 40];

LC = [      0.16	0.13	0.77	1.2     1.63	4.03;
            0.07	0.07	0.3     0.56	0.8     1.56;
            0.06	0.1     0.27	0.41	0.76	1.27;
            0.2     0.32	0.95	1.34	2.34	3.63;
            0.32	0.49	1.05	1.85	2.72	4.03;
            0.43	0.55	1.38	2.27	3.7     5.27];

HC = [      0.1     0.14	0.3     0.45	0.62	1.13;
            0.14   	0.11	0.26	0.58	0.91	1.25;
            0.09	0.11	0.35	0.55	0.84	1.39;
            0.15	0.07	0.55	0.77	1.65	2.07;
            0.09	0.19	0.42	0.74	1.16	1.37;
            0.22	0.38	0.86	1.41	2.17	3.21];

pupil = [   1.5     2.7     8.6     15.8    29.5	41.2;
            10.51	-0.37	11.9	17.3	35      36.8;
            3.4     2.9     9.3     10.1	16.3	41.5;
            9.1     9.5  	18.8	36.1	39.7	57.6;
            6.3     16.9  	19.7	46.2	33      49.5;
            5.3     6.4     10.6	27.3	35.9	49.9];


pltCols = [254,196,79; 254,153,41; 236,112,20; 204,76,2; 153,52,4; 102,37,6]./255;


figure('color', [1 1 1]);
subplot(1, 2, 1); title('LC'); hold on;
for pltIdx = 1:size(pupil, 2)
    plot(pupil(:, pltIdx), LC(:, pltIdx), 'ko', 'color', pltCols(pltIdx, :), 'MarkerFaceColor', pltCols(pltIdx, :))
end
plot(pupil', LC', 'k-', 'color', [0.5 0.5 0.5]);
xlim([-5 60]); ylim([-0.5 6]); axis square;

[r, p] = corrcoef(pupil(:), LC(:));
text(0, 5.5, ['r = ' num2str(r(2))])
text(0, 5, ['p = ' num2str(p(2))])



subplot(1, 2, 2); title('HC'); hold on;
for pltIdx = 1:size(pupil, 2)
    plot(pupil(:, pltIdx), HC(:, pltIdx), 'ko', 'color', pltCols(pltIdx, :), 'MarkerFaceColor', pltCols(pltIdx, :))
end
xlim([-5 60]); ylim([-0.5 4]); axis square;
plot(pupil', HC', 'k-', 'color', [0.5 0.5 0.5]);
[r, p] = corrcoef(pupil(:), HC(:))
text(0, 3.5, ['r = ' num2str(r(2))])
text(0, 3, ['p = ' num2str(p(2))])


