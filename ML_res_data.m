clc, clear all, close all
%% Import respiration data for healthy patients
%% Set up the Import Options and import the data
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
%% Set up the Import Options and import the data
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
%% Test FFT
% X = H_patients(1).Norm1;
% Fs = 7.29; % Sampling frequency                             
% T = 1/Fs;             % Sampling period       
% L = length(X);             % Length of signal
% t = (0:L-1)*T;        % Time vector
% 
% Y = fft(X);
% P2 = abs(Y/L);
% P1 = P2(1:L/2+1);
% P1(2:end-1) = 2*P1(2:end-1);
% 
% f = Fs*(0:(L/2))/L;
% plot(f,P1) 
% title("Single-Sided Amplitude Spectrum of X(t)")
% xlabel("f (Hz)")
% ylabel("|P1(f)|")
%% Extract features
N_eps = floor(Fs*30); % 30s epoch
T = 1/Fs;             % Sampling period  
L = N_eps;             % Length of signal
thresh = 0.12; % threshold
f = Fs*(0:(L/2))/L;
maxF_normH = [];
maxF_normC = [];
maxF_holdH = [];
maxF_holdC = [];

sumP_normH = [];
sumP_normC = [];
sumP_holdH = [];
sumP_holdC = [];

meanfreq_holdH = [];
meanfreq_holdC = [];

normBW = [0.01 0.3];
holdBW = [0.01 0.3];
for i = 1:length(H_patients)
    % extract from norm1
    signal = H_patients(i).Norm1;
    N_epoch = floor(length(signal)/N_eps);
    for j = 1:N_epoch
        signal_cur = signal((j-1)*N_eps+1:j*N_eps);
        X = signal_cur;
        Y = fft(X);
        P2 = abs(Y/L);
        P1 = P2(1:L/2+1);
        P1(2:end-1) = 2*P1(2:end-1);
        sumP_normH(end+1) = sum(P1(find(f >= normBW(1) | f <= normBW(2))));
        P1(find(f < thresh)) = 0;
        [~,idx] = max(P1);
        maxF_normH(end+1) = f(idx);
        meanfreq_holdH(end+1) = meanfreq(signal_cur,Fs);
        tmp = length(maxF_normH);
%         if tmp == 37 || tmp == 43 || tmp == 26 || tmp == 28 || tmp == 102
%             figure,
%             plot(signal_cur)
%             figure,
%             plot(f,P1) 
%         end
    end
    
    signal = H_patients(i).Norm2;
    N_epoch = floor(length(signal)/N_eps);
    for j = 1:N_epoch
        signal_cur = signal((j-1)*N_eps+1:j*N_eps);
        X = signal_cur;
        Y = fft(X);
        P2 = abs(Y/L);
        P1 = P2(1:L/2+1);
        P1(2:end-1) = 2*P1(2:end-1);
        sumP_normH(end+1) = sum(P1(find(f >= normBW(1) | f <= normBW(2))));
        P1(find(f < thresh)) = 0;
        [~,idx] = max(P1);
        maxF_normH(end+1) = f(idx);
        tmp = length(maxF_normH);
%         if tmp == 37 || tmp == 43 || tmp == 26 || tmp == 28 || tmp == 102
%             figure,
%             plot(signal_cur)
%             figure,
%             plot(f,P1) 
%         end
    end
    
    signal = H_patients(i).Hold;
    N_epoch = floor(length(signal)/N_eps);
    for j = 1:N_epoch
        signal_cur = signal((j-1)*N_eps+1:j*N_eps);
        X = signal_cur;
        Y = fft(X);
        P2 = abs(Y/L);
        P1 = P2(1:L/2+1);
        P1(2:end-1) = 2*P1(2:end-1);
        sumP_holdH(end+1) = sum(P1(find(f >= holdBW(1) | f <= holdBW(2))));
        P1(find(f < thresh/3)) = 0;
        [~,idx] = max(P1);
        maxF_holdH(end+1) = f(idx);
    end
end

for i = 1:length(C_patients)
    % extract from norm1
    signal = C_patients(i).Norm1;
    N_epoch = floor(length(signal)/N_eps);
    for j = 1:N_epoch
        signal_cur = signal((j-1)*N_eps+1:j*N_eps);
        X = signal_cur;
        Y = fft(X);
        P2 = abs(Y/L);
        P1 = P2(1:L/2+1);
        P1(2:end-1) = 2*P1(2:end-1);
        sumP_normC(end+1) = sum(P1(find(f >= normBW(1) | f <= normBW(2))));
        P1(find(f < thresh)) = 0;
        [~,idx] = max(P1);
        maxF_normC(end+1) = f(idx);
    end
    
    signal = C_patients(i).Norm2;
    N_epoch = floor(length(signal)/N_eps);
    if ~isnan(signal)
        for j = 1:N_epoch
            signal_cur = signal((j-1)*N_eps+1:j*N_eps);
            X = signal_cur;
            Y = fft(X);
            P2 = abs(Y/L);
            P1 = P2(1:L/2+1);
            P1(2:end-1) = 2*P1(2:end-1);
            sumP_normC(end+1) = sum(P1(find(f >= normBW(1) | f <= normBW(2))));
            P1(find(f < thresh)) = 0;
            [~,idx] = max(P1);
            maxF_normC(end+1) = f(idx);
        end
    end
    
    signal = C_patients(i).Hold;
    N_epoch = floor(length(signal)/N_eps);
    for j = 1:N_epoch
        signal_cur = signal((j-1)*N_eps+1:j*N_eps);
        X = signal_cur;
        Y = fft(X);
        P2 = abs(Y/L);
        P1 = P2(1:L/2+1);
        P1(2:end-1) = 2*P1(2:end-1);
        sumP_holdC(end+1) = sum(P1(find(f >= holdBW(1) | f <= holdBW(2))));
        P1(find(f < thresh/3)) = 0;
        [~,idx] = max(P1);
        maxF_holdC(end+1) = f(idx);
        meanfreq_holdC(end+1) = meanfreq(signal_cur,Fs);
    end
end
% [31,22,24,86,96,76,27,26,62,67]
%% Plot the extracted features by COVID
% figure,
% h1 = histogram(maxF_normH,'Normalization','probability');
% hold on
% h2 = histogram(maxF_normC,'Normalization','probability');
% xlabel('Dominant f (Hz)')
% ylabel('pdf')
% legend('Normal breath - Healthy','Normal breath - COVID')
% h1.BinWidth = 0.02;
% h2.BinWidth = 0.02;
% 
% figure,
% h1 = histogram(maxF_holdH,'Normalization','probability');
% hold on
% h2 = histogram(maxF_holdC,'Normalization','probability');
% xlabel('Dominant f (Hz)')
% ylabel('pdf')
% legend('Hold breath - Healthy','Hold breath - COVID')
% h1.BinWidth = 0.02;
% h2.BinWidth = 0.02;
% 
% figure,
% h1 = histogram(sumP_normH,'Normalization','probability');
% hold on
% h2 = histogram(sumP_normC,'Normalization','probability');
% xlabel('Power')
% ylabel('pdf')
% legend('Normal breath - Healthy','Normal breath - COVID')
% h1.BinWidth = 1;
% h2.BinWidth = 1;
% 
figure,
h1 = histogram(sumP_holdH,'Normalization','probability');
hold on
h2 = histogram(sumP_holdC,'Normalization','probability');
xlabel('Power')
ylabel('pdf')
legend('Hold breath - Healthy','Hold breath - COVID')
h1.BinWidth = 0.2;
h2.BinWidth = 0.2;
%% Plot the extracted features by Gender
% demo1 = demo(1:length(H_patients),:);
% figure,
% h1 = histogram(maxF_normH(find(demo1.Gender == 'M')),'Normalization','probability');
% hold on
% h2 = histogram(maxF_normH(find(demo1.Gender == 'F')),'Normalization','probability');
% xlabel('Dominant f (Hz)')
% ylabel('pdf')
% legend('Normal breath - Male','Normal breath - Female')
% h1.BinWidth = 0.02;
% h2.BinWidth = 0.02;
% 
% figure,
% h1 = histogram(maxF_holdH(find(demo1.Gender == 'M')),'Normalization','probability');
% hold on
% h2 = histogram(maxF_holdH(find(demo1.Gender == 'F')),'Normalization','probability');
% xlabel('Dominant f (Hz)')
% ylabel('pdf')
% legend('Hold breath - Male','Hold breath - Female')
% h1.BinWidth = 0.02;
% h2.BinWidth = 0.02;
% 
% figure,
% h1 = histogram(sumP_normH(find(demo1.Gender == 'M')),'Normalization','probability');
% hold on
% h2 = histogram(sumP_normH(find(demo1.Gender == 'F')),'Normalization','probability');
% xlabel('Power')
% ylabel('pdf')
% legend('Normal breath - Male','Normal breath - Female')
% h1.BinWidth = 0.5;
% h2.BinWidth = 0.5;
% 
% figure,
% h1 = histogram(sumP_holdH(find(demo1.Gender == 'M')),'Normalization','probability');
% hold on
% h2 = histogram(sumP_holdH(find(demo1.Gender == 'F')),'Normalization','probability');
% xlabel('Power')
% ylabel('pdf')
% legend('Hold breath - Male','Hold breath - Female')
% h1.BinWidth = 0.5;
% h2.BinWidth = 0.5;
%% Plot the extracted features by Age
% demo1 = demo(1:length(H_patients),:);
% figure,
% h1 = histogram(maxF_normH(find(demo1.Age <= 12)),'Normalization','probability');
% hold on
% h2 = histogram(maxF_normH(find(demo1.Age > 12 | demo1.Age < 40)),'Normalization','probability');
% h3 = histogram(maxF_normH(find(demo1.Age > 40)),'Normalization','probability');
% xlabel('Dominant f (Hz)')
% ylabel('pdf')
% legend('Normal breath - <= 12','Normal breath - 12<Age<40','Normal breath - >= 40')
% h1.BinWidth = 0.02;
% h2.BinWidth = 0.02;
% h3.BinWidth = 0.02;
% 
% figure,
% h1 = histogram(maxF_holdH(find(demo1.Age <= 12)),'Normalization','probability');
% hold on
% h2 = histogram(maxF_holdH(find(demo1.Age > 12 | demo1.Age < 40)),'Normalization','probability');
% h3 = histogram(maxF_holdH(find(demo1.Age > 40)),'Normalization','probability');
% xlabel('Dominant f (Hz)')
% ylabel('pdf')
% legend('Hold  breath - <= 12','Hold  breath - 12<Age<40','Hold  breath - >= 40')
% h1.BinWidth = 0.02;
% h2.BinWidth = 0.02;
% h3.BinWidth = 0.02;
% 
% figure,
% h1 = histogram(sumP_normH(find(demo1.Age <= 12)),'Normalization','probability');
% hold on
% h2 = histogram(sumP_normH(find(demo1.Age > 12 | demo1.Age < 40)),'Normalization','probability');
% h3 = histogram(sumP_normH(find(demo1.Age > 40)),'Normalization','probability');
% xlabel('Power')
% ylabel('pdf')
% legend('Normal breath - <= 12','Normal breath - 12<Age<40','Normal breath - >= 40')
% h1.BinWidth = 0.5;
% h2.BinWidth = 0.5;
% h3.BinWidth = 0.5;
% 
% figure,
% h1 = histogram(sumP_holdH(find(demo1.Age <= 12)),'Normalization','probability');
% hold on
% h2 = histogram(sumP_holdH(find(demo1.Age > 12 | demo1.Age < 40)),'Normalization','probability');
% h3 = histogram(sumP_holdH(find(demo1.Age > 40)),'Normalization','probability');
% xlabel('Power')
% ylabel('pdf')
% legend('Hold breath - <= 12','Hold  breath - 12<Age<40','Hold  breath - >= 40')
% h1.BinWidth = 0.5;
% h2.BinWidth = 0.5;
% h3.BinWidth = 0.5;