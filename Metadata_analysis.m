clc, clear all, close all
%% Load feature data
load('R:\Research\Res_sensor_paper\feature_data.mat')
%% Import meta data
% Set up the Import Options and import the data
opts = spreadsheetImportOptions("NumVariables", 7);

% Specify sheet and range
opts.Sheet = "Sheet1";
opts.DataRange = "A2:G101";

% Specify column names and types
opts.VariableNames = ["ID", "Name", "BirthYear", "Age", "Gender", "Heightcm", "Weightkg"];
opts.VariableTypes = ["string", "string", "double", "double", "categorical", "double", "double"];

% Specify variable properties
opts = setvaropts(opts, ["ID", "Name"], "WhitespaceRule", "preserve");
opts = setvaropts(opts, ["ID", "Name", "Gender"], "EmptyFieldRule", "auto");

% Import the data
demo = readtable("R:\Research\Res_sensor_paper\Project 3 Music\demographic.xlsx", opts, "UseExcel", false);
% Clear temporary variables
clear opts
% Compute BMI
for i = 1:height(demo)
    demo.BMI(i) = demo.Weightkg(i)/(0.01*demo.Heightcm(i))^2;
end
%% import COVID-19 meta-data
opts = spreadsheetImportOptions("NumVariables", 21);

% Specify sheet and range
opts.Sheet = "Sheet1";
opts.DataRange = "A2:U36";

% Specify column names and types
opts.VariableNames = ["Patient", "Sex", "BirthYear", "Age", "TimeFromHospitalizationToMeasuringdays", "Heightcm", "Weightkg", "SpO2", "Pulsebeatmin", "TemperatureC", "BloodPressureSystolic", "BloodPressureDiastolic", "RRtimemin", "DifficultBreathing", "Cough", "Fever", "Fatigue", "MuscleAches", "LossOfTaste", "SoreThroat", "RunningNose"];
opts.VariableTypes = ["double", "categorical", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double"];

% Specify variable properties
opts = setvaropts(opts, "Sex", "EmptyFieldRule", "auto");

% Import the data
MetaCOVID = readtable("R:\Research\Res_sensor_paper\Data_COVID-19.xlsx", opts, "UseExcel", false);
% Clear temporary variables
clear opts
tmp = find(~isnan(MetaCOVID.BloodPressureSystolic) & MetaCOVID.Sex == 'M');
MetaCOVID.BloodPressureSystolic(find(isnan(MetaCOVID.BloodPressureSystolic) & MetaCOVID.Sex == 'M')) = mean(MetaCOVID.BloodPressureSystolic(tmp));

tmp = find(~isnan(MetaCOVID.BloodPressureSystolic) & MetaCOVID.Sex == 'F');
MetaCOVID.BloodPressureSystolic(find(isnan(MetaCOVID.BloodPressureSystolic) & MetaCOVID.Sex == 'F')) = mean(MetaCOVID.BloodPressureSystolic(tmp));

tmp = find(~isnan(MetaCOVID.BloodPressureDiastolic) & MetaCOVID.Sex == 'M');
MetaCOVID.BloodPressureDiastolic(find(isnan(MetaCOVID.BloodPressureDiastolic) & MetaCOVID.Sex == 'M')) = mean(MetaCOVID.BloodPressureDiastolic(tmp));

tmp = find(~isnan(MetaCOVID.BloodPressureDiastolic) & MetaCOVID.Sex == 'F');
MetaCOVID.BloodPressureDiastolic(find(isnan(MetaCOVID.BloodPressureDiastolic) & MetaCOVID.Sex == 'F')) = mean(MetaCOVID.BloodPressureDiastolic(tmp));

tmp = find(~isnan(MetaCOVID.Heightcm) & MetaCOVID.Sex == 'M');
MetaCOVID.Heightcm(find(isnan(MetaCOVID.Heightcm) & MetaCOVID.Sex == 'M')) = mean(MetaCOVID.Heightcm(tmp));

tmp = find(~isnan(MetaCOVID.Heightcm) & MetaCOVID.Sex == 'F');
MetaCOVID.Heightcm(find(isnan(MetaCOVID.Heightcm) & MetaCOVID.Sex == 'F')) = mean(MetaCOVID.Heightcm(tmp));

tmp = find(~isnan(MetaCOVID.Weightkg) & MetaCOVID.Sex == 'M');
MetaCOVID.Weightkg(find(isnan(MetaCOVID.Weightkg) & MetaCOVID.Sex == 'M')) = mean(MetaCOVID.Weightkg(tmp));

tmp = find(~isnan(MetaCOVID.Weightkg) & MetaCOVID.Sex == 'F');
MetaCOVID.Weightkg(find(isnan(MetaCOVID.Weightkg) & MetaCOVID.Sex == 'F')) = mean(MetaCOVID.Weightkg(tmp));

for i = 1:height(MetaCOVID)
    MetaCOVID.BMI(i) = MetaCOVID.Weightkg(i)/(0.01*MetaCOVID.Heightcm(i))^2;
end
%% Matching analysis
SexH = demo.Gender(ID_H) == 'M';
SexC = MetaCOVID.Sex(ID_C) == 'M';
MetaCOVID = MetaCOVID(ID_C,:);
AgeH = demo.Age(ID_H);
BMIH = demo.BMI(ID_H);
metaH = [(SexH-mean(SexH))/std(SexH) (AgeH-mean(AgeH))/std(AgeH)...
    (BMIH-mean(BMIH))/std(BMIH)];
metaC = [(SexC-mean(SexC))/std(SexC)...
    (MetaCOVID.Age-mean(MetaCOVID.Age))/std(MetaCOVID.Age)...
    (MetaCOVID.BMI-mean(MetaCOVID.BMI))/std(MetaCOVID.BMI)];
M = 10000; % Large number
Dist = zeros(length(X_H),length(X_C));
for i = 1:length(X_H)-1
    Dist(i,i) = M;
    for j = i+1:length(X_C)
        Dist(i,j) = pdist([metaH(i,:); metaC(j,:)]);
        Dist(j,i) = Dist(i,j);
    end
end
% Find the best match
check = 1:length(X_H);
match = zeros(1,length(X_C));
for i = 1:length(X_C)
    [~,idx] = min(Dist(check,i));
    match(i) = check(idx);
    check(find(check==check(idx))) = []; 
end
%% Plot bar chart
var_idx = 10;
bar_data = [];
for i = 1:length(X_C)
    bar_data = [bar_data; abs([X_C(i,var_idx) X_H(match(i),var_idx)])];
end
cat = categorical({'Peak prominence mean','Peak prominence std','Power',...
    'Holding duration','Flux mean','Flux std','Medfreq','peak2peak','rssq'...
    'DET', 'LMAX', 'ENT' ,'TND', 'LAM', 'TT'});
bar(bar_data)
xlabel('Match')
ylabel(cat(var_idx))
legend('COVID','Healthy')
[h,p,ci,stats] = ttest2(X_C(:,var_idx),X_H(match,var_idx));
if var_idx == 1 || var_idx == 3 || var_idx == 9
    tmp = X_C(:,var_idx) >= X_H(match,var_idx);
    idx = find(tmp==1)
else
    tmp = X_C(:,var_idx) < X_H(match,var_idx);
    idx = find(tmp==1)
end
%% Isomap manifold learning
outliner = [4 7 10 21 22 29 30];
outliner_C = setdiff(1:30,outliner);
COVID_symptoms = table2array(MetaCOVID(:,14:20));
% PCA
load('R:\Research\Res_sensor_paper\X1_PCA.mat')
figure,
scatter3(mX(outliner,1),mX(outliner,2),mX(outliner,3),20,'filled')
hold on
scatter3(mX(outliner_C,1),mX(outliner_C,2),mX(outliner_C,3),20,'filled')
xlabel('1st component'), ylabel('2nd component'), zlabel('3rd component')
legend('Outliners','Non-outliners')
title('PCA')

% load('R:\Research\Res_sensor_paper\X_PCA.mat')
% figure,
% scatter3(mX(1:length(X_H),1),mX(1:length(X_H),2),mX(1:length(X_H),3),20,'filled')
% hold on
% tmp = find(MetaCOVID.DifficultBreathing == 1);
% scatter3(mX(length(X_H)+tmp,1),mX(length(X_H)+tmp,2),mX(length(X_H)+tmp,3),20,'filled')
% tmp = find(MetaCOVID.DifficultBreathing == 0);
% scatter3(mX(length(X_H)+tmp,1),mX(length(X_H)+tmp,2),mX(length(X_H)+tmp,3),20,'filled')

% % % scatter3(mX(length(X_H)+1:end,1),mX(length(X_H)+1:end,2),mX(length(X_H)+1:end,3),20,'filled')
% xlabel('1st component'), ylabel('2nd component'), zlabel('3rd component')
% legend('Healthy','COVID with difficult breathing','COVID w/o difficult breathing')
% title('PCA')
% view(-31.652694550472003,60.600000201980848)
%% Plot feature space
figure,
scatter3(X_H(:,1),X_H(:,5),X_H(:,6),20,'filled')
hold on
grid on
thresh = 1;
var1 = MetaCOVID.DifficultBreathing;
var2 = MetaCOVID.Cough;
var3 = MetaCOVID.Fever;
tmp = find(var2 == thresh & var3 == thresh & var1 == 0);
scatter3(X_C(tmp,1),X_C(tmp,5),X_C(tmp,6),20,'filled')
tmp = setdiff(1:height(MetaCOVID),tmp);
scatter3(X_C(tmp,1),X_C(tmp,5),X_C(tmp,6),20,'filled')
xlabel('x'), ylabel('y'), zlabel('z')
legend('Healthy','C,and F','Otherwise')
%% Build regression model
Y = X_C(:,3);
train_data = MetaCOVID(:,[2 4 14:17]);
%% Plot scatter matrix
% var1 = mX(:,3);
% figure,
% corrplot([X_C(:,1:5) var1],'VarNames',{"pmean", "pstd", "power",'Flux_mean','Flux_std','HTMD'});
% figure,
% corrplot([X_C(:,6:10) var1],'VarNames',{"medfreq", "peak2peak", "rssq",'DET','LMAX','HTMD'});
% figure
% corrplot([X_C(:,11:14) var1],'VarNames',{"ENT", "TND", "LAM",'TT','HTMD'});