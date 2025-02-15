clc, clear all, close all
%% Import data
load('R:\Research\Res_sensor_paper\bidmc_data.mat')
for i = 1:length(data)
    tmp = data(i).ref.resp_sig.imp.v;
    tmp = tmp(125*60+1:125*60*4);
    tmp = (tmp - mean(tmp))/std(tmp);
    D_patients(i).Norm = tmp;
    tmp = find(data(i).ref.breaths.ann1 >= 125*60+1 & data(i).ref.breaths.ann1 <= 125*60*4);
    D_patients(i).anno = data(i).ref.breaths.ann1(tmp);
end
%% Set up the Import Options and import the data
opts = spreadsheetImportOptions("NumVariables", 600);

% Specify sheet and range
opts.Sheet = "Healthy";
opts.DataRange = "B8:WC1821";

% Specify column names and types
opts.VariableNames = ["Normal1", "VarName3", "Normal2", "VarName5", "Hold", "VarName7", "Deep", "VarName9", "Normal3", "VarName11", "Normal4", "VarName13", "Hold1", "VarName15", "Deep1", "VarName17", "Normal5", "VarName19", "Normal6", "VarName21", "Hold2", "VarName23", "Deep2", "VarName25", "Normal7", "VarName27", "Normal8", "VarName29", "Hold3", "VarName31", "Deep3", "VarName33", "Normal9", "VarName35", "Normal10", "VarName37", "Hold4", "VarName39", "Deep4", "VarName41", "Normal11", "VarName43", "Normal12", "VarName45", "Hold5", "VarName47", "Deep5", "VarName49", "Normal13", "VarName51", "Normal14", "VarName53", "Hold6", "VarName55", "Deep6", "VarName57", "Normal15", "VarName59", "Normal16", "VarName61", "Hold7", "VarName63", "Deep7", "VarName65", "Normal17", "VarName67", "Normal18", "VarName69", "Hold8", "VarName71", "Deep8", "VarName73", "Normal19", "VarName75", "Normal20", "VarName77", "Hold9", "VarName79", "Deep9", "VarName81", "Normal21", "VarName83", "Normal22", "VarName85", "Hold10", "VarName87", "Deep10", "VarName89", "Normal23", "VarName91", "Normal24", "VarName93", "Hold11", "VarName95", "Deep11", "VarName97", "Normal25", "VarName99", "Normal26", "VarName101", "Hold12", "VarName103", "Deep12", "VarName105", "Normal27", "VarName107", "Normal28", "VarName109", "Hold13", "VarName111", "Deep13", "VarName113", "Normal29", "VarName115", "Normal30", "VarName117", "Hold14", "VarName119", "Deep14", "VarName121", "Normal31", "VarName123", "Normal32", "VarName125", "Hold15", "VarName127", "Deep15", "VarName129", "Normal33", "VarName131", "Normal34", "VarName133", "Hold16", "VarName135", "Deep16", "VarName137", "Normal35", "VarName139", "Normal36", "VarName141", "Hold17", "VarName143", "Deep17", "VarName145", "Normal37", "VarName147", "Normal38", "VarName149", "Hold18", "VarName151", "Deep18", "VarName153", "Normal39", "VarName155", "Normal40", "VarName157", "Hold19", "VarName159", "Deep19", "VarName161", "Normal41", "VarName163", "Normal42", "VarName165", "Hold20", "VarName167", "Deep20", "VarName169", "Normal43", "VarName171", "Normal44", "VarName173", "Hold21", "VarName175", "Deep21", "VarName177", "Normal45", "VarName179", "Normal46", "VarName181", "Hold22", "VarName183", "Deep22", "VarName185", "Normal47", "VarName187", "Normal48", "VarName189", "Hold23", "VarName191", "Deep23", "VarName193", "Normal49", "VarName195", "Normal50", "VarName197", "Hold24", "VarName199", "Deep24", "VarName201", "Normal51", "VarName203", "Normal52", "VarName205", "Hold25", "VarName207", "Deep25", "VarName209", "Normal53", "VarName211", "Normal54", "VarName213", "Hold26", "VarName215", "Deep26", "VarName217", "Normal55", "VarName219", "Normal56", "VarName221", "Hold27", "VarName223", "Deep27", "VarName225", "Normal57", "VarName227", "Normal58", "VarName229", "Hold28", "VarName231", "Deep28", "VarName233", "Normal59", "VarName235", "Normal60", "VarName237", "Hold29", "VarName239", "Deep29", "VarName241", "Normal61", "VarName243", "Normal62", "VarName245", "Hold30", "VarName247", "Deep30", "VarName249", "Norma32", "VarName251", "Normal63", "VarName253", "Hold31", "VarName255", "Deep31", "VarName257", "Normal64", "VarName259", "Normal65", "VarName261", "Hold32", "VarName263", "Deep32", "VarName265", "Normal66", "VarName267", "Normal67", "VarName269", "Hold33", "VarName271", "Deep33", "VarName273", "Normal68", "VarName275", "Normal69", "VarName277", "Hold34", "VarName279", "Deep34", "VarName281", "Normal70", "VarName283", "Normal71", "VarName285", "Hold35", "VarName287", "Deep35", "VarName289", "Normal72", "VarName291", "Normal73", "VarName293", "Hold36", "VarName295", "Deep36", "VarName297", "Normal74", "VarName299", "Normal75", "VarName301", "Hold37", "VarName303", "Deep37", "VarName305", "Normal76", "VarName307", "Normal77", "VarName309", "Hold38", "VarName311", "Deep38", "VarName313", "Normal78", "VarName315", "Normal79", "VarName317", "Hold39", "VarName319", "Deep39", "VarName321", "Normal80", "VarName323", "Normal81", "VarName325", "Hold40", "VarName327", "Deep40", "VarName329", "Norma1", "VarName331", "Normal82", "VarName333", "Hold41", "VarName335", "Deep41", "VarName337", "Normal83", "VarName339", "Normal84", "VarName341", "Hold42", "VarName343", "Deep42", "VarName345", "Normal85", "VarName347", "Normal86", "VarName349", "Hold43", "VarName351", "Deep43", "VarName353", "Normal87", "VarName355", "Normal88", "VarName357", "Hold44", "VarName359", "Deep44", "VarName361", "Normal89", "VarName363", "Normal90", "VarName365", "Hold45", "VarName367", "Deep45", "VarName369", "Normal91", "VarName371", "Normal92", "VarName373", "Hold46", "VarName375", "Deep46", "VarName377", "Normal93", "VarName379", "Normal94", "VarName381", "Hold47", "VarName383", "Deep47", "VarName385", "Normal95", "VarName387", "Normal96", "VarName389", "Hold48", "VarName391", "Deep48", "VarName393", "Normal97", "VarName395", "Normal98", "VarName397", "Hold49", "VarName399", "Deep49", "VarName401", "Normal99", "VarName403", "Normal100", "VarName405", "Hold50", "VarName407", "Deep50", "VarName409", "Normal101", "VarName411", "Normal102", "VarName413", "Hold51", "VarName415", "Deep51", "VarName417", "Normal103", "VarName419", "Normal104", "VarName421", "Hold52", "VarName423", "Deep52", "VarName425", "Normal105", "VarName427", "Normal106", "VarName429", "Hold53", "VarName431", "Deep53", "VarName433", "Normal107", "VarName435", "Normal108", "VarName437", "Hold54", "VarName439", "Deep54", "VarName441", "Normal109", "VarName443", "Normal110", "VarName445", "Hold55", "VarName447", "Deep55", "VarName449", "Normal111", "VarName451", "Normal112", "VarName453", "Hold56", "VarName455", "Deep56", "VarName457", "Normal113", "VarName459", "Normal114", "VarName461", "Hold57", "VarName463", "Deep57", "VarName465", "Normal115", "VarName467", "Normal116", "VarName469", "Hold58", "VarName471", "Deep58", "VarName473", "Normal117", "VarName475", "Normal118", "VarName477", "Hold59", "VarName479", "Deep59", "VarName481", "Normal119", "VarName483", "Normal120", "VarName485", "Hold60", "VarName487", "Deep60", "VarName489", "Norma2", "VarName491", "Normal121", "VarName493", "Hold61", "VarName495", "Deep61", "VarName497", "Normal122", "VarName499", "Normal123", "VarName501", "Hold62", "VarName503", "Deep62", "VarName505", "Normal124", "VarName507", "Normal125", "VarName509", "Hold63", "VarName511", "Deep63", "VarName513", "Normal126", "VarName515", "Normal127", "VarName517", "Hold64", "VarName519", "Deep64", "VarName521", "Normal128", "VarName523", "Normal129", "VarName525", "Hold65", "VarName527", "Deep65", "VarName529", "Normal130", "VarName531", "Normal131", "VarName533", "Hold66", "VarName535", "Deep66", "VarName537", "Normal132", "VarName539", "Normal133", "VarName541", "Hold67", "VarName543", "Deep67", "VarName545", "Normal134", "VarName547", "Normal135", "VarName549", "Hold68", "VarName551", "Deep68", "VarName553", "Normal136", "VarName555", "Normal137", "VarName557", "Hold69", "VarName559", "Deep69", "VarName561", "Normal138", "VarName563", "Normal139", "VarName565", "Hold70", "VarName567", "Deep70", "VarName569", "Norma3", "VarName571", "Normal140", "VarName573", "Hold71", "VarName575", "Deep71", "VarName577", "Normal141", "VarName579", "Normal142", "VarName581", "Hold72", "VarName583", "Deep72", "VarName585", "Normal143", "VarName587", "Normal144", "VarName589", "Hold73", "VarName591", "Deep73", "VarName593", "Normal145", "VarName595", "Normal146", "VarName597", "Hold74", "VarName599", "Deep74", "VarName601"];
opts.VariableTypes = ["double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double"];

% Import the data
resdata = readtable("R:\Research\Res_sensor_paper\res_data.xlsx", opts, "UseExcel", false);
% Import the data
res_data = table2array(resdata);
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
    
end

%% Peak analysis
peak_stat_H = zeros(length(H_patients),12);
for i = 1:length(H_patients)
    % Normal breathing 1
    if ~isempty(H_patients(i).Norm1)
        if ~isnan(H_patients(i).Norm1(1))
            [~,locs,~,p] = findpeaks(H_patients(i).Norm1,H_patients(i).tN1);
            peak_stat_H(i,1) = mean(diff(locs));
            peak_stat_H(i,2) = std(diff(locs));

            peak_stat_H(i,3) = mean(p);
            peak_stat_H(i,4) = std(p);
        end
    end
    
    % Normal breathing 2
    if ~isempty(H_patients(i).Norm2)
        if ~isnan(H_patients(i).Norm1(2))
            [~,locs,~,p] = findpeaks(H_patients(i).Norm2,H_patients(i).tN2);
            peak_stat_H(i,5) = mean(diff(locs));
            peak_stat_H(i,6) = std(diff(locs));

            peak_stat_H(i,7) = mean(p);
            peak_stat_H(i,8) = std(p);
        end
    end
end

peak_stat_C = [];
for i = 1:length(C_patients)
    % Normal breathing 1
    if ~isempty(C_patients(i).Norm1)
        if ~isnan(C_patients(i).Norm1(1))
            [~,locs,~,p] = findpeaks(C_patients(i).Norm1,C_patients(i).tN1);
            peak_stat_C(i,1) = mean(diff(locs));
            peak_stat_C(i,2) = std(diff(locs));
            peak_stat_C(i,3) = mean(p);
            peak_stat_C(i,4) = std(p);
        end
    end
    
    % Normal breathing 2
    if ~isempty(C_patients(i).Norm2)
        if ~isnan(C_patients(i).Norm2(1))
            [~,locs,~,p] = findpeaks(C_patients(i).Norm2,C_patients(i).tN2);
            peak_stat_C(i,5) = mean(diff(locs));
            peak_stat_C(i,6) = std(diff(locs));

            peak_stat_C(i,7) = mean(p);
            peak_stat_C(i,8) = std(p);
        end
    end
end

peak_stat_D = [];
for i = 1:length(D_patients)
    tmp = diff(D_patients(i).anno)./125;
    tmp(find(tmp > 5)) = [];
    peak_stat_D(i,1) = mean(tmp);
    peak_stat_D(i,2) = std(tmp);
end
%% Extract features
N_eps = floor(Fs*300); % 30s epoch
T = 1/Fs;             % Sampling period  
thresh = 0.12; % threshold
sumP_holdH = [];
sumP_holdC = [];
sumP_holdD = [];
medfreq_holdH = [];
medfreq_holdC = [];
medfreq_holdD = [];
peak2peak_H = [];
peak2peak_C = [];
peak2peak_D = [];
peak2rms_H = [];
peak2rms_C = [];
peak2rms_D = [];
rqa_statH = [];
rqa_statC = [];
rqa_statD = [];
normBW = [0.15 0.35];
holdBW = [0.15 0.35];
thr = 0.3;
for i = 1:length(H_patients) 
   signal = H_patients(i).Norm1;
    if ~isempty(signal) 
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
            sumP_holdH(end+1) = sum(P1(find(f >= holdBW(1) | f <= holdBW(2))));
            medfreq_holdH(end+1) = medfreq(X,Fs);
            peak2peak_H(end+1) = peak2peak(X);
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
            rqa_statH(end+1,:) = recurrqa_y(recurrpt);
        end
    end

    signal = H_patients(i).Norm2;
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
        sumP_holdH(end+1) = sum(P1(find(f >= holdBW(1) | f <= holdBW(2))));
        medfreq_holdH(end+1) = medfreq(X,Fs);
        peak2peak_H(end+1) = peak2peak(X);
        % RQA statistics - [recrate DET LMAX ENT TND LAM TT]
        y = phasespace(X,3,8);
        recurdata = cerecurr_y(y);
        recurrpt = tdrecurr_y(recurdata,thr);
        rqa_statH(end+1,:) = recurrqa_y(recurrpt);
    end
end

for i = 1:length(C_patients)
    signal = C_patients(i).Norm1;
    if ~isempty(signal) && ~isnan(signal(1))
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
            sumP_holdC(end+1) = sum(P1(find(f >= holdBW(1) | f <= holdBW(2))));
            medfreq_holdC(end+1) = medfreq(X,Fs);
            peak2peak_C(end+1) = peak2peak(X);
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
            rqa_statC(end+1,:) = recurrqa_y(recurrpt);
        end
    end

    signal = C_patients(i).Norm2;
    if isempty(signal) || isnan(signal(1))
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
        sumP_holdC(end+1) = sum(P1(find(f >= holdBW(1) | f <= holdBW(2))));
        medfreq_holdC(end+1) = medfreq(X,Fs);
        peak2peak_C(end+1) = peak2peak(X);
        % RQA statistics - [recrate DET LMAX ENT TND LAM TT]
        y = phasespace(X,3,8);
        recurdata = cerecurr_y(y);
        recurrpt = tdrecurr_y(recurdata,thr);
        rqa_statC(end+1,:) = recurrqa_y(recurrpt);
    end
end
Fs = 125;
for i = 1:length(D_patients)
    signal_cur = D_patients(i).Norm;
    X = signal_cur;
    L = length(X);
    f = Fs*(0:(L/2))/L;
    Y = fft(X);
    P2 = abs(Y/L);
    P1 = P2(1:L/2+1);
    P1(2:end-1) = 2*P1(2:end-1);
    sumP_holdD(end+1) = sum(P1(find(f >= holdBW(1) | f <= holdBW(2))));
    medfreq_holdD(end+1) = medfreq(X,Fs);
    peak2peak_D(end+1) = peak2peak(X);
    % RQA statistics - [recrate DET LMAX ENT TND LAM TT]
    X = X(1:80:end);
    y = phasespace(X,3,1);
    % fnn test to determine the embedding dimension
    recurdata = cerecurr_y(y);
    % color recurrence plot
%         cerecurr_y(y);
    recurrpt = tdrecurr_y(recurdata,thr);
    rqa_statD(end+1,:) = recurrqa_y(recurrpt);
end

peak_statH_total = [peak_stat_H(find(peak_stat_H(:,1)~=0),1:2); peak_stat_H(find(peak_stat_H(:,5)~=0),5:6)];
peak_statC_total = [peak_stat_C(find(peak_stat_C(:,1)~=0),1:2); peak_stat_C(find(peak_stat_C(:,5)~=0),5:6)];
X_H = [peak_statH_total sumP_holdH' medfreq_holdH' peak2peak_H' rqa_statH];
X_C = [peak_statC_total sumP_holdC' medfreq_holdC' peak2peak_C' rqa_statC];
X_D = [peak_stat_D sumP_holdD' medfreq_holdD' peak2peak_D' rqa_statD];
% X_H = X_H(find(demo.Age(find(peak_stat_H(:,11)~=0))>=18),:);
% feas = 1:size(X_H,2);
feas = [3 5 6:11];
X = [X_H(:,feas); X_C(:,feas); X_D(:,feas)];
Y = [zeros(length(X_H),1); ones(length(X_C),1); 2*ones(length(X_D),1)];
%% Plot histogram of KS-stat
ks2stat = zeros(1,size(X_H,2));
for i = 1:length(ks2stat)
    [~,~,ks2stat(i)] = kstest2(X_C(:,i),X_D(:,i));
end
cat = categorical({'meanRR','varRR','Power','Medfreq','peak2peak',...
    'DET', 'LMAX', 'ENT' ,'TND', 'LAM', 'TT'});
bar(cat,ks2stat)
xlabel('Features')
ylabel('KS statistic')

