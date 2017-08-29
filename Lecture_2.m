%%Basic Matlab Operations
a=cos(0):0.02:log10(100);
size(a)
a(25)
%r = randi([0 500],50,50)also works
r=500*rand(50);
r(r>400)

%%Importing/Exporting Data 
NYHGas=xlsread('NYHGasPrices.xls');
YearAverage=[mean(NYHGas(1:12)),mean(NYHGas(13:24)),mean(NYHGas(25:36)),mean(NYHGas(37:48)),...
    mean(NYHGas(49:60)),mean(NYHGas(61:72)),mean(NYHGas(73:84)),mean(NYHGas(85:96)),...
    mean(NYHGas(97:108)),mean(NYHGas(109:120)),mean(NYHGas(121:132)),mean(NYHGas(133:144)),...
    mean(NYHGas(145:156)),mean(NYHGas(157:168)),mean(NYHGas(169:180)),mean(NYHGas(181:192)),...
    mean(NYHGas(193:204)),mean(NYHGas(205:216)),mean(NYHGas(217:228)),mean(NYHGas(229:240)),...
    mean(NYHGas(241:252)),mean(NYHGas(253:264)),mean(NYHGas(265:276)),mean(NYHGas(277:288)),...
    mean(NYHGas(289:300)),mean(NYHGas(301:312)),mean(NYHGas(313:324)),mean(NYHGas(325:336)),...
    mean(NYHGas(337:348)),mean(NYHGas(349:360))];
%Couldn't figure out a way to iterate??
%i=length(NYHGAS)
%YearlyAverage=[]
%for 1:i
%    YearlyAverage=YearlyAverage+ mean(NYHGas(1:12:360))
%end

xlswrite('monthly_average_price.xlsx',YearAverage)