clc, clear all, close all
%% Set up the Import Options and import the data
opts = delimitedTextImportOptions("NumVariables", 49, "Encoding", "UTF-8");

% Specify range and delimiter
opts.DataLines = [2, 253];
opts.Delimiter = ",";

% Specify column names and types
opts.VariableNames = ["ID", "AGE", "SEX", "Weightkg", "Heightcm", "DaysFromLMP", "HomeExposure", "HospitalExposure", "WorkExposure", "OtherExposure", "BodyTemperatureC", "BloodPressure", "CardiacFrequency", "SpO2", "BreathingFrequency", "Fever", "Cough", "SoreThroat", "Diarrhea", "Vomit", "LossOfSmell", "LossOfTaste", "Chills", "HeadAches", "MusclePain", "JointPain", "Malaise", "OtherSymptom", "HourOfLastFoodIntake", "FoodIntake", "PreviousPCRResult", "AlcoholIntake", "TobaccoSmooking", "DrugsVapingIntake", "RestingAnHourAgo", "WalkingAnHourAgo", "RunningAnHourAgo", "GymAnHourAgo", "DrugForDiabetes", "DrugForHypertension", "DrugForPain", "DrugForFever", "OtherDrugUsed", "DrugName", "ProcedureDateKey", "RoomTemperature", "ThermalQualityObservations", "PCRResult", "PCRCt"];
opts.VariableTypes = ["double", "double", "categorical", "double", "double", "categorical", "double", "double", "double", "double", "double", "string", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "categorical", "categorical", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "categorical", "double", "double", "categorical", "categorical", "categorical"];

% Specify file level properties
opts.ExtraColumnsRule = "ignore";
opts.EmptyLineRule = "read";

% Specify variable properties
opts = setvaropts(opts, "BloodPressure", "WhitespaceRule", "preserve");
opts = setvaropts(opts, ["SEX", "DaysFromLMP", "BloodPressure", "HourOfLastFoodIntake", "FoodIntake", "DrugName", "ThermalQualityObservations", "PCRResult", "PCRCt"], "EmptyFieldRule", "auto");
opts = setvaropts(opts, ["ID", "SpO2", "ProcedureDateKey"], "TrimNonNumeric", true);
opts = setvaropts(opts, ["ID", "SpO2", "ProcedureDateKey"], "ThousandsSeparator", ",");

% Import the data
data = readtable("R:\Research\Res_sensor_paper\COVID19_Physionet_data\upper-body-thermal-images-and-associated-clinical-data-from-a-pilot-cohort-study-of-covid-19-1.1\subject_description.csv", opts);
clear opts
%% Data imputation and feature selection for regression model
tmp = find(data.SEX == 'M' & ~isnan(data.Weightkg));
data.Weightkg(find(isnan(data.Weightkg))) = mean(data.Weightkg(tmp));
data.Heightcm(find(isnan(data.Heightcm))) = mean(data.Heightcm(tmp));
data.BMI = data.Weightkg./(data.Heightcm/100).^2;
for i = 1:height(data)
    str = data.BloodPressure(i);
    data.SysPressure(i) = str2double(extractBefore(str,"/"));
    data.DiasPressure(i) = str2double(extractAfter(str,"/"));
end
idx1 = find(~isnan(data.BreathingFrequency));
idx2 = find(data.PCRResult ~= "NA");
idx = intersect(idx1,idx2);
data_frame = [data.BreathingFrequency...
    data.Fever data.Cough data.SoreThroat data.LossOfSmell data.LossOfTaste...
    data.HeadAches data.MusclePain...
    data.DrugForPain data.DrugForFever data.PCRResult=="Positive"];
data_frame = data_frame(idx,:);
%% Plot ks statistic
% ks2stat = zeros(1,size(data_frame,2)-1);
% for i = 1:length(ks2stat)
%     [~,~,ks2stat(i)] = kstest2(data_frame(find(data_frame(:,end)==1),i),data_frame(find(data_frame(:,end)==0),i));
% end
% cat = categorical({'BreathingFrequency','Fever','Cough','SoreThroat'...
%     'LossOfSmell' ,'LossOfTaste', 'HeadAches',...
%     'MusclePain','DrugForPain', 'DrugForFever'});
% bar(cat,ks2stat)
% xlabel('Features')
% ylabel('KS statistic')
%% Scatter matrix plot
figure,
corrplot([data_frame(:,1) data_frame(:,2:end)],'VarNames',{'BreathingFrequency','Fever','Cough','SoreThroat'...
    'LossOfSmell' ,'LossOfTaste', 'HeadAches',...
    'MusclePain','DrugForPain', 'DrugForFever','PCR_Result'})