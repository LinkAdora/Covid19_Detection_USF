clear all, close all, clc
%% Import respiration data for healthy patients

% Set up the Import Options and import the data
opts = spreadsheetImportOptions("NumVariables", 599);

% Specify sheet and range
opts.Sheet = "Healthy";
opts.DataRange = "B8:WB1821";

% Specify column names and types
opts.VariableNames = ["Normal1", "VarName3", "Normal2", "VarName5", "Hold", "VarName7", "Deep", "VarName9", "Normal1_1", "VarName11", "Normal2_1", "VarName13", "Hold_1", "VarName15", "Deep_1", "VarName17", "Normal1_2", "VarName19", "Normal2_2", "VarName21", "Hold_2", "VarName23", "Deep_2", "VarName25", "Normal1_3", "VarName27", "Normal2_3", "VarName29", "Hold_3", "VarName31", "Deep_3", "VarName33", "Normal1_4", "VarName35", "Normal2_4", "VarName37", "Hold_4", "VarName39", "Deep_4", "VarName41", "Normal1_5", "VarName43", "Normal2_5", "VarName45", "Hold_5", "VarName47", "Deep_5", "VarName49", "Normal1_6", "VarName51", "Normal2_6", "VarName53", "Hold_6", "VarName55", "Deep_6", "VarName57", "Normal1_7", "VarName59", "Normal2_7", "VarName61", "Hold_7", "VarName63", "Deep_7", "VarName65", "Normal1_8", "VarName67", "Normal2_8", "VarName69", "Hold_8", "VarName71", "Deep_8", "VarName73", "Normal1_9", "VarName75", "Normal2_9", "VarName77", "Hold_9", "VarName79", "Deep_9", "VarName81", "Normal1_10", "VarName83", "Normal2_10", "VarName85", "Hold_10", "VarName87", "Deep_10", "VarName89", "Normal1_11", "VarName91", "Normal2_11", "VarName93", "Hold_11", "VarName95", "Deep_11", "VarName97", "Normal1_12", "VarName99", "Normal2_12", "VarName101", "Hold_12", "VarName103", "Deep_12", "VarName105", "Normal1_13", "VarName107", "Normal2_13", "VarName109", "Hold_13", "VarName111", "Deep_13", "VarName113", "Normal1_14", "VarName115", "Normal2_14", "VarName117", "Hold_14", "VarName119", "Deep_14", "VarName121", "Normal1_15", "VarName123", "Normal2_15", "VarName125", "Hold_15", "VarName127", "Deep_15", "VarName129", "Normal1_16", "VarName131", "Normal2_16", "VarName133", "Hold_16", "VarName135", "Deep_16", "VarName137", "Normal1_17", "VarName139", "Normal2_17", "VarName141", "Hold_17", "VarName143", "Deep_17", "VarName145", "Normal1_18", "VarName147", "Normal2_18", "VarName149", "Hold_18", "VarName151", "Deep_18", "VarName153", "Normal1_19", "VarName155", "Normal2_19", "VarName157", "Hold_19", "VarName159", "Deep_19", "VarName161", "Normal1_20", "VarName163", "Normal2_20", "VarName165", "Hold_20", "VarName167", "Deep_20", "VarName169", "Normal1_21", "VarName171", "Normal2_21", "VarName173", "Hold_21", "VarName175", "Deep_21", "VarName177", "Normal1_22", "VarName179", "Normal2_22", "VarName181", "Hold_22", "VarName183", "Deep_22", "VarName185", "Normal1_23", "VarName187", "Normal2_23", "VarName189", "Hold_23", "VarName191", "Deep_23", "VarName193", "Normal1_24", "VarName195", "Normal2_24", "VarName197", "Hold_24", "VarName199", "Deep_24", "VarName201", "Normal1_25", "VarName203", "Normal2_25", "VarName205", "Hold_25", "VarName207", "Deep_25", "VarName209", "Normal1_26", "VarName211", "Normal2_26", "VarName213", "Hold_26", "VarName215", "Deep_26", "VarName217", "Normal1_27", "VarName219", "Normal2_27", "VarName221", "Hold_27", "VarName223", "Deep_27", "VarName225", "Normal1_28", "VarName227", "Normal2_28", "VarName229", "Hold_28", "VarName231", "Deep_28", "VarName233", "Normal1_29", "VarName235", "Normal2_29", "VarName237", "Hold_29", "VarName239", "Deep_29", "VarName241", "Normal1_30", "VarName243", "Normal2_30", "VarName245", "Hold_30", "VarName247", "Deep_30", "VarName249", "Norma32", "VarName251", "Normal2_31", "VarName253", "Hold_31", "VarName255", "Deep_31", "VarName257", "Normal1_31", "VarName259", "Normal2_32", "VarName261", "Hold_32", "VarName263", "Deep_32", "VarName265", "Normal1_32", "VarName267", "Normal2_33", "VarName269", "Hold_33", "VarName271", "Deep_33", "VarName273", "Normal1_33", "VarName275", "Normal2_34", "VarName277", "Hold_34", "VarName279", "Deep_34", "VarName281", "Normal1_34", "VarName283", "Normal2_35", "VarName285", "Hold_35", "VarName287", "Deep_35", "VarName289", "Normal1_35", "VarName291", "Normal2_36", "VarName293", "Hold_36", "VarName295", "Deep_36", "VarName297", "Normal1_36", "VarName299", "Normal2_37", "VarName301", "Hold_37", "VarName303", "Deep_37", "VarName305", "Normal1_37", "VarName307", "Normal2_38", "VarName309", "Hold_38", "VarName311", "Deep_38", "VarName313", "Normal1_38", "VarName315", "Normal2_39", "VarName317", "Hold_39", "VarName319", "Deep_39", "VarName321", "Normal1_39", "VarName323", "Normal2_40", "VarName325", "Hold_40", "VarName327", "Deep_40", "VarName329", "Norma32_1", "VarName331", "Normal2_41", "VarName333", "Hold_41", "VarName335", "Deep_41", "VarName337", "Normal1_40", "VarName339", "Normal2_42", "VarName341", "Hold_42", "VarName343", "Deep_42", "VarName345", "Normal1_41", "VarName347", "Normal2_43", "VarName349", "Hold_43", "VarName351", "Deep_43", "VarName353", "Normal1_42", "VarName355", "Normal2_44", "VarName357", "Hold_44", "VarName359", "Deep_44", "VarName361", "Normal1_43", "VarName363", "Normal2_45", "VarName365", "Hold_45", "VarName367", "Deep_45", "VarName369", "Normal1_44", "VarName371", "Normal2_46", "VarName373", "Hold_46", "VarName375", "Deep_46", "VarName377", "Normal1_45", "VarName379", "Normal2_47", "VarName381", "Hold_47", "VarName383", "Deep_47", "VarName385", "Normal1_46", "VarName387", "Normal2_48", "VarName389", "Hold_48", "VarName391", "Deep_48", "VarName393", "Normal1_47", "VarName395", "Normal2_49", "VarName397", "Hold_49", "VarName399", "Deep_49", "VarName401", "Normal1_48", "VarName403", "Normal2_50", "VarName405", "Hold_50", "VarName407", "Deep_50", "VarName409", "Norma32_2", "VarName411", "Normal2_51", "VarName413", "Hold_51", "VarName415", "Deep_51", "VarName417", "Normal1_49", "VarName419", "Normal2_52", "VarName421", "Hold_52", "VarName423", "Deep_52", "VarName425", "Normal1_50", "VarName427", "Normal2_53", "VarName429", "Hold_53", "VarName431", "Deep_53", "VarName433", "Normal1_51", "VarName435", "Normal2_54", "VarName437", "Hold_54", "VarName439", "Deep_54", "VarName441", "Normal1_52", "VarName443", "Normal2_55", "VarName445", "Hold_55", "VarName447", "Deep_55", "VarName449", "Normal1_53", "VarName451", "Normal2_56", "VarName453", "Hold_56", "VarName455", "Deep_56", "VarName457", "Normal1_54", "VarName459", "Normal2_57", "VarName461", "Hold_57", "VarName463", "Deep_57", "VarName465", "Normal1_55", "VarName467", "Normal2_58", "VarName469", "Hold_58", "VarName471", "Deep_58", "VarName473", "Normal1_56", "VarName475", "Normal2_59", "VarName477", "Hold_59", "VarName479", "Deep_59", "VarName481", "Normal1_57", "VarName483", "Normal2_60", "VarName485", "Hold_60", "VarName487", "Deep_60", "VarName489", "Norma32_3", "VarName491", "Normal2_61", "VarName493", "Hold_61", "VarName495", "Deep_61", "VarName497", "Normal1_58", "VarName499", "Normal2_62", "VarName501", "Hold_62", "VarName503", "Deep_62", "VarName505", "Normal1_59", "VarName507", "Normal2_63", "VarName509", "Hold_63", "VarName511", "Deep_63", "VarName513", "Normal1_60", "VarName515", "Normal2_64", "VarName517", "Hold_64", "VarName519", "Deep_64", "VarName521", "Normal1_61", "VarName523", "Normal2_65", "VarName525", "Hold_65", "VarName527", "Deep_65", "VarName529", "Normal1_62", "VarName531", "Normal2_66", "VarName533", "Hold_66", "VarName535", "Deep_66", "VarName537", "Normal1_63", "VarName539", "Normal2_67", "VarName541", "Hold_67", "VarName543", "Deep_67", "VarName545", "Normal1_64", "VarName547", "Normal2_68", "VarName549", "Hold_68", "VarName551", "Deep_68", "VarName553", "Normal1_65", "VarName555", "Normal2_69", "VarName557", "Hold_69", "VarName559", "Deep_69", "VarName561", "Normal1_66", "VarName563", "Normal2_70", "VarName565", "Hold_70", "VarName567", "Deep_70", "VarName569", "Norma32_4", "VarName571", "Normal2_71", "VarName573", "Hold_71", "VarName575", "Deep_71", "VarName577", "Normal1_67", "VarName579", "Normal2_72", "VarName581", "Hold_72", "VarName583", "Deep_72", "VarName585", "Normal1_68", "VarName587", "Normal2_73", "VarName589", "Hold_73", "VarName591", "Deep_73", "VarName593", "Normal1_69", "VarName595", "Normal2_74", "VarName597", "Hold_74", "VarName599", "Deep_74"];
opts.VariableTypes = ["double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double"];

% Import the data
resdata1 = readtable("R:\Research\Res_sensor_paper\res_data.xlsx", opts, "UseExcel", false);

% Convert to output type
res_data = table2array(resdata1);

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
signal = H_patients(1).Hold;
% signal = C_patients(18).Hold;
% mutual information test to determine the time delay
mutual(signal);

% fnn test to determine the embedding dimension
out = false_nearest(signal,1,10,8);
fnn = out(:,1:2);
figure('Position',[100 400 460 360]);
plt=plot(fnn(:,1),fnn(:,2),'o-','MarkerSize',4.5);
title('False nearest neighbor test','FontSize',10,'FontWeight','bold');
xlabel('dimension','FontSize',10,'FontWeight','bold');
ylabel('FNN','FontSize',10,'FontWeight','bold');
get(gcf,'CurrentAxes');
set(gca,'LineWidth',2,'FontSize',10,'FontWeight','bold');
grid on;

% phase space plot
y = phasespace(signal,3,8);
figure('Position',[100 400 460 360]);
plot3(y(:,1),y(:,2),y(:,3),'-','LineWidth',1);
title('Resp time-delay embedding - state space plot','FontSize',10,'FontWeight','bold');
grid on;
set(gca,'CameraPosition',[25.919 27.36 13.854]);
xlabel('x(t)','FontSize',10,'FontWeight','bold');
ylabel('x(t+\tau)','FontSize',10,'FontWeight','bold');
zlabel('x(t+2\tau)','FontSize',10,'FontWeight','bold');
set(gca,'LineWidth',2,'FontSize',10,'FontWeight','bold');

% color recurrence plot
cerecurr_y(y);
recurdata = cerecurr_y(y);

% black-white recurrence plot
tdrecurr_y(recurdata,0.3);
recurrpt = tdrecurr_y(recurdata,0.3);

%Recurrence quantification analysis
% rqa_stat - RQA statistics - [recrate DET LMAX ENT TND LAM TT]
rqa_stat = recurrqa_y(recurrpt);


