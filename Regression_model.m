clc, clear all, close all
%% Import respiration data for COVID patients
opts = spreadsheetImportOptions("NumVariables", 280);

% Specify sheet and range
opts.Sheet = "COVID";
opts.DataRange = "B8:JU2277";

% Specify column names and types
opts.VariableNames = ["Normal1", "VarName3", "Normal2", "VarName5", "Hold", "VarName7", "Deep", "VarName9", "Normal1_1", "VarName11", "Normal2_1", "VarName13", "Hold_1", "VarName15", "Deep_1", "VarName17", "Normal1_2", "VarName19", "Normal2_2", "VarName21", "Hold_2", "VarName23", "Deep_2", "VarName25", "Normal1_3", "VarName27", "Normal2_3", "VarName29", "Hold_3", "VarName31", "Deep_3", "VarName33", "Normal1_4", "VarName35", "Normal2_4", "VarName37", "Hold_4", "VarName39", "Deep_4", "VarName41", "Normal1_5", "VarName43", "Normal2_5", "VarName45", "Hold_5", "VarName47", "Deep_5", "VarName49", "Normal1_6", "VarName51", "Normal2_6", "VarName53", "Hold_6", "VarName55", "Deep_6", "VarName57", "Normal1_7", "VarName59", "Normal2_7", "VarName61", "Hold_7", "VarName63", "Deep_7", "VarName65", "Normal1_8", "VarName67", "Normal2_8", "VarName69", "Hold_8", "VarName71", "Deep_8", "VarName73", "Normal1_9", "VarName75", "Normal2_9", "VarName77", "Hold_9", "VarName79", "Deep_9", "VarName81", "Normal1_10", "VarName83", "Normal2_10", "VarName85", "Hold_10", "VarName87", "Deep_10", "VarName89", "Normal1_11", "VarName91", "Normal2_11", "VarName93", "Hold_11", "VarName95", "Deep_11", "VarName97", "Normal1_12", "VarName99", "Normal2_12", "VarName101", "Hold_12", "VarName103", "Deep_12", "VarName105", "Normal1_13", "VarName107", "Normal2_13", "VarName109", "Hold_13", "VarName111", "Deep_13", "VarName113", "Normal1_14", "VarName115", "Normal2_14", "VarName117", "Hold_14", "VarName119", "Deep_14", "VarName121", "Normal1_15", "VarName123", "Normal2_15", "VarName125", "Hold_15", "VarName127", "Deep_15", "VarName129", "Normal1_16", "VarName131", "Normal2_16", "VarName133", "Hold_16", "VarName135", "Deep_16", "VarName137", "Normal1_17", "VarName139", "Normal2_17", "VarName141", "Hold_17", "VarName143", "Deep_17", "VarName145", "Normal1_18", "VarName147", "Normal2_18", "VarName149", "Hold_18", "VarName151", "Deep_18", "VarName153", "Normal1_19", "VarName155", "Normal2_19", "VarName157", "Hold_19", "VarName159", "Deep_19", "VarName161", "Normal1_20", "VarName163", "Normal2_20", "VarName165", "Hold_20", "VarName167", "Deep_20", "VarName169", "Normal1_21", "VarName171", "Normal2_21", "VarName173", "Hold_21", "VarName175", "Deep_21", "VarName177", "Normal1_22", "VarName179", "Normal2_22", "VarName181", "Hold_22", "VarName183", "Deep_22", "VarName185", "Normal1_23", "VarName187", "Normal2_23", "VarName189", "Hold_23", "VarName191", "Deep_23", "VarName193", "Normal1_24", "VarName195", "Normal2_24", "VarName197", "Hold_24", "VarName199", "Deep_24", "VarName201", "Normal1_25", "VarName203", "Normal2_25", "VarName205", "Hold_25", "VarName207", "Deep_25", "VarName209", "Normal1_26", "VarName211", "Normal2_26", "VarName213", "Hold_26", "VarName215", "Deep_26", "VarName217", "Normal1_27", "VarName219", "Normal2_27", "VarName221", "Hold_27", "VarName223", "Deep_27", "VarName225", "Normal1_28", "VarName227", "Normal2_28", "VarName229", "Hold_28", "VarName231", "Deep_28", "VarName233", "Normal1_29", "VarName235", "Normal2_29", "VarName237", "Hold_29", "VarName239", "Deep_29", "VarName241", "Normal1_30", "VarName243", "Normal2_30", "VarName245", "Hold_30", "VarName247", "Deep_30", "VarName249", "Norma32", "VarName251", "Normal2_31", "VarName253", "Hold_31", "VarName255", "Deep_31", "VarName257", "Normal1_31", "VarName259", "Normal2_32", "VarName261", "Hold_32", "VarName263", "Deep_32", "VarName265", "Normal1_32", "VarName267", "Normal2_33", "VarName269", "Hold_33", "VarName271", "Deep_33", "VarName273", "Normal1_33", "VarName275", "Normal2_34", "VarName277", "Hold_34", "VarName279", "Deep_34", "VarName281"];
opts.VariableTypes = ["double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double"];

% Import the data
resdataS1 = readtable("R:\Research\Res_sensor_paper\res_data.xlsx", opts, "UseExcel", false);

% Convert to output type
res_data_C = table2array(resdataS1);

% Clear temporary variables
clear opts
%% import COVID-19 meta-data
opts = spreadsheetImportOptions("NumVariables", 13);

% Specify sheet and range
opts.Sheet = "Sheet1";
opts.DataRange = "A2:M36";

% Specify column names and types
opts.VariableNames = ["Patient", "Sex", "BirthYear", "Age", "TimeFromHospitalizationToMeasuringdays", "Heightcm", "Weightkg", "SpO2", "Pulsebeatmin", "TemperatureC", "BloodPressureSystolic", "BloodPressureDiastolic", "RRtimemin"];
opts.VariableTypes = ["double", "categorical", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double"];

% Specify variable properties
opts = setvaropts(opts, "Sex", "EmptyFieldRule", "auto");

% Import the data
MetaCOVID = readtable("R:\Research\Res_sensor_paper\Data_COVID-19.xlsx", opts, "UseExcel", false);
% Clear temporary variables
clear opts
MetaCOVID.Sex(26) = 'M';
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

tmp = find(1:height(MetaCOVID) ~= 26); 
MetaCOVID.Pulsebeatmin(26) = mean(MetaCOVID.Pulsebeatmin(tmp));
MetaCOVID.Age(26) = mean(MetaCOVID.Age(tmp));
MetaCOVID.TimeFromHospitalizationToMeasuringdays(26) = mean(MetaCOVID.TimeFromHospitalizationToMeasuringdays(tmp));
for i = 1:height(MetaCOVID)
    MetaCOVID.BMI(i) = MetaCOVID.Weightkg(i)/(0.01*MetaCOVID.Heightcm(i))^2;
end
%% Extract 3 minutes of each episode for COVID patients
% Extract 3 minutes
Fs = 1/0.14;
for i = 1:size(res_data_C,2)
    tmp = res_data_C(:,i);
    tmp(find(isnan(tmp) == 1)) = [];
    if ~isempty(tmp)
        [b,a]=butter(5,[0.01 0.4]/(Fs/2),'bandpass');
        tmp = filtfilt(b,a,tmp);
        tmp = (tmp - mean(tmp))/std(tmp);
    end
    if mod(i,8) == 2 % Normal breath 1
        tmp1 = res_data_C(:,i-1);
        tmp1(find(isnan(tmp1) == 1)) = [];
        C_patients(ceil(i/8)).Norm1 = tmp;
        C_patients(ceil(i/8)).tN1 = tmp1;
    end
    
    if mod(i,8) == 4 % Normal breath 2
        tmp1 = res_data_C(:,i-1);
        tmp1(find(isnan(tmp1) == 1)) = [];
        if isempty(tmp)
            C_patients(ceil(i/8)).Norm2 = nan;
            C_patients(ceil(i/8)).tN2 = nan;
        else
            C_patients(ceil(i/8)).Norm2 = tmp;
            C_patients(ceil(i/8)).tN2 = tmp1;
        end
    end
    
    if mod(i,8) == 6 % Hold breath
        tmp1 = res_data_C(:,i-1);
        tmp1(find(isnan(tmp1) == 1)) = [];
        C_patients(ceil(i/8)).Hold = tmp;
        C_patients(ceil(i/8)).tH = tmp1;
    end
end
%% peak detection for COVID patients
idx_C = [];
for ID = 1:length(C_patients)
    if ~isempty(C_patients(ID).Hold)
        if ~isnan(C_patients(ID).Hold(1))
            [pks,locs,w,p] = findpeaks(C_patients(ID).Hold,C_patients(ID).tH);
            end_idx = 10;
            thresh = 0.5;
            switch ID
                case 10
                    end_idx = 5;
                    thresh = 0.5;
                case 8
                    thresh = 0.1;
                case 7
                    thresh = 0.1;
                case 5
                    end_idx = 6;
                case 2
                    thresh = 0.4;
                case 20
                    thresh = 0.1;
                    end_idx = 5;
                case 17
                    end_idx = 3;
                case 16
                    end_idx = 6;
                    thresh = 0.45;
                 case 15
                    end_idx = 3;
                    thresh = 1;
                case 11
                    end_idx = 6;
                    thresh = 0.4;
                case 30
                    thresh = 2;
                    end_idx = 3;
                case 28
                    end_idx = 2;
                case 25
                    end_idx = 6;
                case 34
                    end_idx = 2;
                    thresh = 1.1;
                case 29
                    end_idx = 5;
                    thresh = 1.1;
                case 22
                    end_idx = 5;
                case 21
                    end_idx = 6;
                    thresh = 1;
                case 35
                    end_idx = 2;
                case 31
                    end_idx = 4;
            end
            
            idx = find(p(1:end_idx) < thresh);
            if isempty(idx)
                [~,idx] = min(p(1:end_idx));
            end
            idx_C(ID) = idx(end)+1;
            idxt_C(ID) = find(C_patients(ID).tH == locs(idx(end)+1));
            Flux_mean_holdC(ID) = mean(C_patients(ID).Hold(1:idxt_C(ID)));
            Flux_std_holdC(ID) = std(C_patients(ID).Hold(1:idxt_C(ID)));
%             figure,
%             subplot(2,1,1)
%             plot(C_patients(ID).tH,C_patients(ID).Hold)
%             hold on
%             scatter(locs,pks,'r','filled')
%             plot(C_patients(ID).tH(1:idxt_C(ID)),C_patients(ID).Hold(1:idxt_C(ID)),'r')
%             xlabel('Time')
%             ylabel('Normalized Flux')
%             legend('Res data','Peaks','Hold breath')
%             grid on
%             title(num2str(ID))
%             
%             subplot(2,1,2)
%             plot(locs,p)
%             xlabel('Time')
%             ylabel('Peak prominence')
%             grid on
        end
    end
end
%% Extract features
N_eps = floor(Fs*300); % 30s epoch
T = 1/Fs;             % Sampling period  
thresh = 0.12; % threshold
sumP_holdC = [];
medfreq_holdC = [];
peak2peak_C = [];
peak2rms_C = [];
rssq_C = [];
rqa_statC = [];
normBW = [0.15 0.35];
holdBW = [0.15 0.35];
thr = 0.3;

for i = 1:length(C_patients)
    if idxt_C(i) == 0
        idxt_C(i) = 1;
    end
    signal = C_patients(i).Hold(idxt_C(i):end);
    if isempty(signal) 
        continue
    end
    if floor(length(signal)/N_eps) ~= 1 && floor(length(signal)/N_eps) ~= 0
        N_epoch = floor(length(signal)/N_eps);
    else
        N_epoch = 1;
    end
    for j = 1:N_epoch
        if N_epoch == 1
            signal_cur = signal;
        else
            signal_cur = signal((j-1)*N_eps+1:j*N_eps);
        end
        X = signal_cur;
        L = length(X);
        f = Fs*(0:(L/2))/L;
        Y = fft(X);
        P2 = abs(Y/L);
        P1 = P2(1:L/2+1);
        P1(2:end-1) = 2*P1(2:end-1);
        sumP_holdC(i) = sum(P1(find(f >= holdBW(1) | f <= holdBW(2))));
        medfreq_holdC(i) = medfreq(X,Fs);
        peak2peak_C(i) = peak2peak(X);
        rssq_C(i) = rssq(X);
        % RQA statistics - [recrate DET LMAX ENT TND LAM TT]
        y = phasespace(X,3,8);
%         figure('Position',[100 400 460 360]);
%         plot3(y(:,1),y(:,2),y(:,3),'-','LineWidth',1);
%         title('Resp time-delay embedding - state space plot','FontSize',10,'FontWeight','bold');
%         grid on;
%         set(gca,'CameraPosition',[25.919 27.36 13.854]);
%         xlabel('x(t)','FontSize',10,'FontWeight','bold');
%         ylabel('x(t+\tau)','FontSize',10,'FontWeight','bold');
%         zlabel('x(t+2\tau)','FontSize',10,'FontWeight','bold');
%         set(gca,'LineWidth',2,'FontSize',10,'FontWeight','bold');
        recurdata = cerecurr_y(y);
        % color recurrence plot
%         cerecurr_y(y);
        recurrpt = tdrecurr_y(recurdata,thr);
        rqa_statC(i,:) = recurrqa_y(recurrpt);
    end
end
%% Peak analysis
peak_stat_C = [];
for i = 1:length(C_patients)
    % Normal breathing 1
    if ~isempty(C_patients(i).Norm1)
        if ~isnan(C_patients(i).Norm1(1))
            [~,locs,~,p] = findpeaks(C_patients(i).Norm1,C_patients(i).tN1);
            peak_stat_C(i,1) = mean(1./diff(locs));
            peak_stat_C(i,2) = std(1./diff(locs));
            peak_stat_C(i,3) = mean(p);
            peak_stat_C(i,4) = std(p);
        end
    end
    
    % Normal breathing 2
    if ~isempty(C_patients(i).Norm2)
        if ~isnan(C_patients(i).Norm2(1))
            [~,locs,~,p] = findpeaks(C_patients(i).Norm2,C_patients(i).tN2);
            peak_stat_C(i,5) = mean(1./diff(locs));
            peak_stat_C(i,6) = std(1./diff(locs));

            peak_stat_C(i,7) = mean(p);
            peak_stat_C(i,8) = std(p);
        end
    end
    
    % Hold breathing 
    if ~isempty(C_patients(i).Hold) 
        if ~isnan(C_patients(i).Hold(1))
            [~,locs,~,p] = findpeaks(C_patients(i).Hold,C_patients(i).tH);
            tmp = 1./diff(locs);
            peak_stat_C(i,9) = mean(tmp(idx_C(i):end));
            peak_stat_C(i,10) = std(tmp(idx_C(i):end));

            peak_stat_C(i,11) = mean(p(idx_C(i):end));
            peak_stat_C(i,12) = std(p(idx_C(i):end));
        end
    end
end

%% Prepare data for machine learning models
% % Remove patients
% patient_ID = [3 6];
% peak_stat_C(patient_ID,:) = 0;
% medfreq_holdC(patient_ID) = [] ;
% peak2peak_C(patient_ID) = [];
% rssq_C(patient_ID) = [];
% idxt_C(patient_ID) = [];
% Flux_mean_holdC(patient_ID) = [];
% Flux_std_holdC(patient_ID) = [];
% sumP_holdC(patient_ID) = [];
% rqa_statC(patient_ID,:) = [];
tmp = find(peak_stat_C(:,11)~=0); %& MetaCOVID.BloodPressureSystolic > 120);
X_C = [peak_stat_C(tmp,11) peak_stat_C(tmp,12)...
    sumP_holdC(tmp)' Flux_mean_holdC(tmp)' Flux_std_holdC(tmp)'...
    medfreq_holdC(tmp)' peak2peak_C(tmp)' rssq_C(tmp)' rqa_statC(tmp,:)];
% RQA statistics - [recrate DET LMAX ENT TND LAM TT]
% feas = [1 3 9 10 12 14];
% feas = [1 9];
%% Build regression model
Y = X_C(:,14);
feas = [6]; % Male group
% data = [X_C(:,feas) MetaCOVID.Age(tmp) MetaCOVID.Sex(tmp)=='M'... 
%     MetaCOVID.BloodPressureSystolic(tmp) MetaCOVID.BMI(tmp)];

data = X_C(:,feas);
%% Plot scatter matrix
% var1 = MetaCOVID.Age(tmp);
% figure,
% corrplot([X_C(:,1:5) var1],'VarNames',{"pmean", "pstd", "power",'Flux_mean','Flux_std','HTMD'});
% figure,
% corrplot([X_C(:,6:10) var1],'VarNames',{"medfreq", "peak2peak", "rssq",'DET','LMAX','HTMD'});
% figure
% corrplot([X_C(:,11:14) var1],'VarNames',{"ENT", "TND", "LAM",'TT','HTMD'});
