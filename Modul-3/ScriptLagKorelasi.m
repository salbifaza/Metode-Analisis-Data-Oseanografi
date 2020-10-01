indeks=xlsread('contoh.xlsx','con_ONI','C2:C122'); %[CHANGE HERE (column ONI/DMI in Excel)]
sst=xlsread('contoh.xlsx','con_ONI','D2:D122'); %[CHANGE HERE (column SST in excel)]

[c1,lags1] = xcov(sst,indeks,'coeff'); 
%m1=xcorr(sst,indeks);


figure(1)
plot(lags1,c1,'r'); hold on;

ylabel('Korelasi','FontSize',12,'fontweight','b');
xlabel('Lags','FontSize',12,'fontweight','b');
title('Korelasi SST terhadap ONI tahun 1996-2006',...
        'FontSize',14,'fontweight','b'); %[CHANGE HERE]