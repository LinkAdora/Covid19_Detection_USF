clc, clear all, close all,
%% Import respiration data for healthy patients
opts = spreadsheetImportOptions("NumVariables", 182);

% Specify sheet and range
opts.Sheet = "Healthy";
opts.DataRange = "B8:GA1432";

% Specify column names and types
opts.VariableNames = ["Normal1", "VarName3", "Normal2", "VarName5", "Hold", "VarName7", "Deep", "VarName9", "Normal1_1", "VarName11", "Normal2_1", "VarName13", "Hold_1", "VarName15", "Deep_1", "VarName17", "Normal1_2", "VarName19", "Normal2_2", "VarName21", "Hold_2", "VarName23", "Deep_2", "VarName25", "Normal1_3", "VarName27", "Normal2_3", "VarName29", "Hold_3", "VarName31", "Deep_3", "VarName33", "Normal1_4", "VarName35", "Normal2_4", "VarName37", "Hold_4", "VarName39", "Deep_4", "VarName41", "Normal1_5", "VarName43", "Normal2_5", "VarName45", "Hold_5", "VarName47", "Deep_5", "VarName49", "Normal1_6", "VarName51", "Normal2_6", "VarName53", "Hold_6", "VarName55", "Deep_6", "VarName57", "Normal1_7", "VarName59", "Normal2_7", "VarName61", "Hold_7", "VarName63", "Deep_7", "VarName65", "Normal1_8", "VarName67", "Normal2_8", "VarName69", "Hold_8", "VarName71", "Deep_8", "VarName73", "Normal1_9", "VarName75", "Normal2_9", "VarName77", "Hold_9", "VarName79", "Deep_9", "VarName81", "Normal1_10", "VarName83", "Normal2_10", "VarName85", "Hold_10", "VarName87", "Deep_10", "VarName89", "Normal1_11", "VarName91", "Normal2_11", "VarName93", "Hold_11", "VarName95", "Deep_11", "VarName97", "Normal1_12", "VarName99", "Normal2_12", "VarName101", "Hold_12", "VarName103", "Deep_12", "VarName105", "Normal1_13", "VarName107", "Normal2_13", "VarName109", "Hold_13", "VarName111", "Deep_13", "VarName113", "Normal1_14", "VarName115", "Normal2_14", "VarName117", "Hold_14", "VarName119", "Deep_14", "VarName121", "Normal1_15", "VarName123", "Normal2_15", "VarName125", "Hold_15", "VarName127", "Deep_15", "VarName129", "Normal1_16", "VarName131", "Normal2_16", "VarName133", "Hold_16", "VarName135", "Deep_16", "VarName137", "Normal1_17", "VarName139", "Normal2_17", "VarName141", "Hold_17", "VarName143", "Deep_17", "VarName145", "Normal1_18", "VarName147", "Normal2_18", "VarName149", "Hold_18", "VarName151", "Deep_18", "VarName153", "Normal1_19", "VarName155", "Normal2_19", "VarName157", "Hold_19", "VarName159", "Deep_19", "VarName161", "Normal1_20", "VarName163", "Normal2_20", "VarName165", "Hold_20", "VarName167", "Deep_20", "VarName169", "Normal1_21", "VarName171", "Normal2_21", "VarName173", "Hold_21", "VarName175", "Deep_21", "VarName177", "Normal1_22", "VarName179", "Normal2_22", "VarName181", "Hold_22", "VarName183"];
opts.VariableTypes = ["double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double"];

% Import the data
resdata = readtable("R:\Research\Res_sensor_paper\res_data.xlsx", opts, "UseExcel", false);

% Convert to output type
res_data = table2array(resdata);

% Clear temporary variables
clear opts
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
%% Extract 3 minutes of each episode for healthy patients
% Get the minimum period
% min_T = 10000;
% for i = 1:size(res_data,2)
%     tmp = res_data(:,i);
%     tmp(find(isnan(tmp) == 1)) = [];
%     if min_T > length(tmp) && length(tmp) ~= 0
%         min_T = length(tmp);
%     end
% end
% Extract 3 minutes
Fs = 1/0.14; % Sampling frequency 
for i = 1:size(res_data,2)
    tmp = res_data(:,i);
    tmp(find(isnan(tmp) == 1)) = [];
    if ~isempty(tmp)
        [b,a]=butter(5,[0.01 0.4]/(Fs/2),'bandpass');
        tmp = filtfilt(b,a,tmp);
        tmp = (tmp - mean(tmp))/std(tmp);
    end
    if mod(i,8) == 2 % Normal breath 1
        tmp1 = res_data(:,i-1);
        tmp1(find(isnan(tmp1) == 1)) = [];
        H_patients(ceil(i/8)).Norm1 = tmp;
        H_patients(ceil(i/8)).tN1 = tmp1;
    end
    
    if mod(i,8) == 4 % Normal breath 2
        tmp1 = res_data(:,i-1);
        tmp1(find(isnan(tmp1) == 1)) = [];
        H_patients(ceil(i/8)).Norm2 = tmp;
        H_patients(ceil(i/8)).tN2 = tmp1;
    end
    
    if mod(i,8) == 6 % Hold breath
        tmp1 = res_data(:,i-1);
        tmp1(find(isnan(tmp1) == 1)) = [];
        H_patients(ceil(i/8)).Hold = tmp;
        H_patients(ceil(i/8)).tH = tmp1;
    end
end
%% Extract 3 minutes of each episode for COVID patients
% Extract 3 minutes
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
NPSD = [];
SDSD = []; %- Compute standard deviation of successive differences
SDNN = [];%- Compute standard deviation of NN intervals
RMSSD = []; %- Compute root mean square of successive differences
pNNx = []; %- Probability of intervals greater x ms or smaller -x ms
pNN50 = []; %- Probability of intervals greater 50ms or smaller -50ms
TRI = [];%- Compute Triangular index from the interval histogram
TINN = []; %- Compute TINN, performing Triangular Interpolation
DFA = [];%- Perform Detrended Fluctuation Analysis
CD = [];%- Compute the Correlation Dimension
ApEn = [];%- Approximate Entropy
pLF = []; pHF = []; LFHFratio = []; VLF = []; 
SD1 = []; SD2 = []; SD1SD2ratio = [];
HR = []; % - Compute the average heart rate
for i = 1:length(H_patients)    
    %% Extract HRV features
    % Initialize feature vectors    
    if i == 15
        continue
    end
    [~,PeakIdx,~,~] = findpeaks(H_patients(i).Hold,H_patients(i).tH);           
    RR = diff(PeakIdx)/Fs;                         %RR interval
    RR_Peak = [PeakIdx [mean(RR);RR]];
    ModifiedRR = clean_hrv4(RR_Peak);               %default threshold is 20% difference ;
    PeakIdx1= ModifiedRR(:,1);                       
    RR1= ModifiedRR(:,2);
    RR_down = interp1(PeakIdx1,RR1,min(PeakIdx1):Fs/2:max(PeakIdx1)); %Sampling frequency of RR interval = 2 Hz
    [S,F,T,P]= spectrogram(RR_down,length(RR_down),0,120,2); 
    NPSD(end+1) = RMS1(P);
    RR = diff(PeakIdx)/Fs;    

    SDSD(end+1) = HRV.SDSD(RR,0); %- Compute standard deviation of successive differences
    SDNN(end+1) = HRV.SDNN(RR,0); %- Compute standard deviation of NN intervals
    RMSSD(end+1) = HRV.RMSSD(RR,0); %- Compute root mean square of successive differences
    [TRI(end+1),TINN(end+1)] = HRV.triangular_val(RR,0);%- Compute TINN, performing Triangular Interpolation
    tmp = HRV.DFA(RR);
    DFA(end+1) = tmp(1);%- Perform Detrended Fluctuation Analysis
    CD(end+1) = HRV.CD(RR);%- Compute the Correlation Dimension
    ApEn(end+1) = HRV.ApEn(RR);%- Approximate Entropy
    [pLF(end+1),pHF(end+1),LFHFratio(end+1),VLF(end+1),~,~,~,~,~] = HRV.fft_val_fun(RR,Fs);%- Spectral analysis of sequence (LF,HF,ratio)
    [SD1(end+1),SD2(end+1),SD1SD2ratio(end+1)] = HRV.returnmap_val(RR);%- Results of the Poincare plot (SD1,SD2,ratio)  
end

NPSD_C = [];
SDSD_C = []; %- Compute standard deviation of successive differences
SDNN_C = [];%- Compute standard deviation of NN intervals
RMSSD_C = []; %- Compute root mean square of successive differences
TRI_C = [];%- Compute Triangular index from the interval histogram
TINN_C = []; %- Compute TINN, performing Triangular Interpolation
DFA_C = [];%- Perform Detrended Fluctuation Analysis
CD_C = [];%- Compute the Correlation Dimension
ApEn_C = [];%- Approximate Entropy
pLF_C = []; pHF_C = []; LFHFratio_C = []; VLF_C = []; 
SD1_C = []; SD2_C = []; SD1SD2ratio_C = [];
for i = 1:length(C_patients)    
    %% Extract HRV features
    % Initialize feature vectors 
    if ~isempty(C_patients(i).Hold)
        if ~isnan(C_patients(i).Hold(1))
            [~,PeakIdx,~,~] = findpeaks(C_patients(i).Hold,C_patients(i).tH);           
            RR = diff(PeakIdx)/Fs;                         %RR interval
            RR_Peak = [PeakIdx [mean(RR);RR]];
            ModifiedRR = clean_hrv4(RR_Peak);               %default threshold is 20% difference ;
            PeakIdx1= ModifiedRR(:,1);                       
            RR1= ModifiedRR(:,2);
            RR_down = interp1(PeakIdx1,RR1,min(PeakIdx1):Fs/2:max(PeakIdx1)); %Sampling frequency of RR interval = 2 Hz
            [S,F,T,P]= spectrogram(RR_down,length(RR_down),0,120,2); 
            NPSD_C(end+1) = RMS1(P);
            RR = diff(PeakIdx)/Fs;    

            SDSD_C(end+1) = HRV.SDSD(RR,0); %- Compute standard deviation of successive differences
            SDNN_C(end+1) = HRV.SDNN(RR,0); %- Compute standard deviation of NN intervals
            RMSSD_C(end+1) = HRV.RMSSD(RR,0); %- Compute root mean square of successive differences
            [TRI_C(end+1),TINN_C(end+1)] = HRV.triangular_val(RR,0);%- Compute TINN, performing Triangular Interpolation
            tmp = HRV.DFA(RR);
            DFA_C(end+1) = tmp(1);%- Perform Detrended Fluctuation Analysis
            CD_C(end+1) = HRV.CD(RR);%- Compute the Correlation Dimension
            ApEn_C(end+1) = HRV.ApEn(RR);%- Approximate Entropy
            [pLF_C(end+1),pHF_C(end+1),LFHFratio_C(end+1),VLF_C(end+1),~,~,~,~,~] = HRV.fft_val_fun(RR,Fs);%- Spectral analysis of sequence (LF,HF,ratio)
            [SD1_C(end+1),SD2_C(end+1),SD1SD2ratio_C(end+1)] = HRV.returnmap_val(RR);%- Results of the Poincare plot (SD1,SD2,ratio)
        end
    end
end
%% Plot histogram
figure,
h1 = histogram(ApEn,'Normalization','probability');
hold on
h2 = histogram(ApEn_C,'Normalization','probability');
xlabel('RRV feature')
ylabel('pdf')
legend('Healthy','COVID')
% h1.BinWidth = 0.5;
% h2.BinWidth = 0.5;