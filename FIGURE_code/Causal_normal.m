clc, clear all, close all
%% Import respiration data for healthy patients
opts = spreadsheetImportOptions("NumVariables", 896);

% Specify sheet and range
opts.Sheet = "Healthy";
opts.DataRange = "B8:AHM1821";

% Specify column names and types
opts.VariableNames = ["Normal1", "VarName3", "Normal2", "VarName5", "Hold", "VarName7", "Deep", "VarName9", "Normal1_1", "VarName11", "Normal2_1", "VarName13", "Hold_1", "VarName15", "Deep_1", "VarName17", "Normal1_2", "VarName19", "Normal2_2", "VarName21", "Hold_2", "VarName23", "Deep_2", "VarName25", "Normal1_3", "VarName27", "Normal2_3", "VarName29", "Hold_3", "VarName31", "Deep_3", "VarName33", "Normal1_4", "VarName35", "Normal2_4", "VarName37", "Hold_4", "VarName39", "Deep_4", "VarName41", "Normal1_5", "VarName43", "Normal2_5", "VarName45", "Hold_5", "VarName47", "Deep_5", "VarName49", "Normal1_6", "VarName51", "Normal2_6", "VarName53", "Hold_6", "VarName55", "Deep_6", "VarName57", "Normal1_7", "VarName59", "Normal2_7", "VarName61", "Hold_7", "VarName63", "Deep_7", "VarName65", "Normal1_8", "VarName67", "Normal2_8", "VarName69", "Hold_8", "VarName71", "Deep_8", "VarName73", "Normal1_9", "VarName75", "Normal2_9", "VarName77", "Hold_9", "VarName79", "Deep_9", "VarName81", "Normal1_10", "VarName83", "Normal2_10", "VarName85", "Hold_10", "VarName87", "Deep_10", "VarName89", "Normal1_11", "VarName91", "Normal2_11", "VarName93", "Hold_11", "VarName95", "Deep_11", "VarName97", "Normal1_12", "VarName99", "Normal2_12", "VarName101", "Hold_12", "VarName103", "Deep_12", "VarName105", "Normal1_13", "VarName107", "Normal2_13", "VarName109", "Hold_13", "VarName111", "Deep_13", "VarName113", "Normal1_14", "VarName115", "Normal2_14", "VarName117", "Hold_14", "VarName119", "Deep_14", "VarName121", "Normal1_15", "VarName123", "Normal2_15", "VarName125", "Hold_15", "VarName127", "Deep_15", "VarName129", "Normal1_16", "VarName131", "Normal2_16", "VarName133", "Hold_16", "VarName135", "Deep_16", "VarName137", "Normal1_17", "VarName139", "Normal2_17", "VarName141", "Hold_17", "VarName143", "Deep_17", "VarName145", "Normal1_18", "VarName147", "Normal2_18", "VarName149", "Hold_18", "VarName151", "Deep_18", "VarName153", "Normal1_19", "VarName155", "Normal2_19", "VarName157", "Hold_19", "VarName159", "Deep_19", "VarName161", "Normal1_20", "VarName163", "Normal2_20", "VarName165", "Hold_20", "VarName167", "Deep_20", "VarName169", "Normal1_21", "VarName171", "Normal2_21", "VarName173", "Hold_21", "VarName175", "Deep_21", "VarName177", "Normal1_22", "VarName179", "Normal2_22", "VarName181", "Hold_22", "VarName183", "Deep_22", "VarName185", "Normal1_23", "VarName187", "Normal2_23", "VarName189", "Hold_23", "VarName191", "Deep_23", "VarName193", "Normal1_24", "VarName195", "Normal2_24", "VarName197", "Hold_24", "VarName199", "Deep_24", "VarName201", "Normal1_25", "VarName203", "Normal2_25", "VarName205", "Hold_25", "VarName207", "Deep_25", "VarName209", "Normal1_26", "VarName211", "Normal2_26", "VarName213", "Hold_26", "VarName215", "Deep_26", "VarName217", "Normal1_27", "VarName219", "Normal2_27", "VarName221", "Hold_27", "VarName223", "Deep_27", "VarName225", "Normal1_28", "VarName227", "Normal2_28", "VarName229", "Hold_28", "VarName231", "Deep_28", "VarName233", "Normal1_29", "VarName235", "Normal2_29", "VarName237", "Hold_29", "VarName239", "Deep_29", "VarName241", "Normal1_30", "VarName243", "Normal2_30", "VarName245", "Hold_30", "VarName247", "Deep_30", "VarName249", "Norma32", "VarName251", "Normal2_31", "VarName253", "Hold_31", "VarName255", "Deep_31", "VarName257", "Normal1_31", "VarName259", "Normal2_32", "VarName261", "Hold_32", "VarName263", "Deep_32", "VarName265", "Normal1_32", "VarName267", "Normal2_33", "VarName269", "Hold_33", "VarName271", "Deep_33", "VarName273", "Normal1_33", "VarName275", "Normal2_34", "VarName277", "Hold_34", "VarName279", "Deep_34", "VarName281", "Normal1_34", "VarName283", "Normal2_35", "VarName285", "Hold_35", "VarName287", "Deep_35", "VarName289", "Normal1_35", "VarName291", "Normal2_36", "VarName293", "Hold_36", "VarName295", "Deep_36", "VarName297", "Normal1_36", "VarName299", "Normal2_37", "VarName301", "Hold_37", "VarName303", "Deep_37", "VarName305", "Normal1_37", "VarName307", "Normal2_38", "VarName309", "Hold_38", "VarName311", "Deep_38", "VarName313", "Normal1_38", "VarName315", "Normal2_39", "VarName317", "Hold_39", "VarName319", "Deep_39", "VarName321", "Normal1_39", "VarName323", "Normal2_40", "VarName325", "Hold_40", "VarName327", "Deep_40", "VarName329", "Norma32_1", "VarName331", "Normal2_41", "VarName333", "Hold_41", "VarName335", "Deep_41", "VarName337", "Normal1_40", "VarName339", "Normal2_42", "VarName341", "Hold_42", "VarName343", "Deep_42", "VarName345", "Normal1_41", "VarName347", "Normal2_43", "VarName349", "Hold_43", "VarName351", "Deep_43", "VarName353", "Normal1_42", "VarName355", "Normal2_44", "VarName357", "Hold_44", "VarName359", "Deep_44", "VarName361", "Normal1_43", "VarName363", "Normal2_45", "VarName365", "Hold_45", "VarName367", "Deep_45", "VarName369", "Normal1_44", "VarName371", "Normal2_46", "VarName373", "Hold_46", "VarName375", "Deep_46", "VarName377", "Normal1_45", "VarName379", "Normal2_47", "VarName381", "Hold_47", "VarName383", "Deep_47", "VarName385", "Normal1_46", "VarName387", "Normal2_48", "VarName389", "Hold_48", "VarName391", "Deep_48", "VarName393", "Normal1_47", "VarName395", "Normal2_49", "VarName397", "Hold_49", "VarName399", "Deep_49", "VarName401", "Normal1_48", "VarName403", "Normal2_50", "VarName405", "Hold_50", "VarName407", "Deep_50", "VarName409", "Normal1_49", "VarName411", "Normal2_51", "VarName413", "Hold_51", "VarName415", "Deep_51", "VarName417", "Normal1_50", "VarName419", "Normal2_52", "VarName421", "Hold_52", "VarName423", "Deep_52", "VarName425", "Normal1_51", "VarName427", "Normal2_53", "VarName429", "Hold_53", "VarName431", "Deep_53", "VarName433", "Normal1_52", "VarName435", "Normal2_54", "VarName437", "Hold_54", "VarName439", "Deep_54", "VarName441", "Normal1_53", "VarName443", "Normal2_55", "VarName445", "Hold_55", "VarName447", "Deep_55", "VarName449", "Normal1_54", "VarName451", "Normal2_56", "VarName453", "Hold_56", "VarName455", "Deep_56", "VarName457", "Normal1_55", "VarName459", "Normal2_57", "VarName461", "Hold_57", "VarName463", "Deep_57", "VarName465", "Normal1_56", "VarName467", "Normal2_58", "VarName469", "Hold_58", "VarName471", "Deep_58", "VarName473", "Normal1_57", "VarName475", "Normal2_59", "VarName477", "Hold_59", "VarName479", "Deep_59", "VarName481", "Normal1_58", "VarName483", "Normal2_60", "VarName485", "Hold_60", "VarName487", "Deep_60", "VarName489", "Norma32_2", "VarName491", "Normal2_61", "VarName493", "Hold_61", "VarName495", "Deep_61", "VarName497", "Normal1_59", "VarName499", "Normal2_62", "VarName501", "Hold_62", "VarName503", "Deep_62", "VarName505", "Normal1_60", "VarName507", "Normal2_63", "VarName509", "Hold_63", "VarName511", "Deep_63", "VarName513", "Normal1_61", "VarName515", "Normal2_64", "VarName517", "Hold_64", "VarName519", "Deep_64", "VarName521", "Normal1_62", "VarName523", "Normal2_65", "VarName525", "Hold_65", "VarName527", "Deep_65", "VarName529", "Normal1_63", "VarName531", "Normal2_66", "VarName533", "Hold_66", "VarName535", "Deep_66", "VarName537", "Normal1_64", "VarName539", "Normal2_67", "VarName541", "Hold_67", "VarName543", "Deep_67", "VarName545", "Normal1_65", "VarName547", "Normal2_68", "VarName549", "Hold_68", "VarName551", "Deep_68", "VarName553", "Normal1_66", "VarName555", "Normal2_69", "VarName557", "Hold_69", "VarName559", "Deep_69", "VarName561", "Normal1_67", "VarName563", "Normal2_70", "VarName565", "Hold_70", "VarName567", "Deep_70", "VarName569", "Norma32_3", "VarName571", "Normal2_71", "VarName573", "Hold_71", "VarName575", "Deep_71", "VarName577", "Normal1_68", "VarName579", "Normal2_72", "VarName581", "Hold_72", "VarName583", "Deep_72", "VarName585", "Normal1_69", "VarName587", "Normal2_73", "VarName589", "Hold_73", "VarName591", "Deep_73", "VarName593", "Normal1_70", "VarName595", "Normal2_74", "VarName597", "Hold_74", "VarName599", "Deep_74", "VarName601", "Normal1_71", "VarName603", "Normal2_75", "VarName605", "Hold_75", "VarName607", "Deep_75", "VarName609", "Normal1_72", "VarName611", "Normal2_76", "VarName613", "Hold_76", "VarName615", "Deep_76", "VarName617", "Normal1_73", "VarName619", "Normal2_77", "VarName621", "Hold_77", "VarName623", "Deep_77", "VarName625", "Normal1_74", "VarName627", "Normal2_78", "VarName629", "Hold_78", "VarName631", "Deep_78", "VarName633", "Normal1_75", "VarName635", "Normal2_79", "VarName637", "Hold_79", "VarName639", "Deep_79", "VarName641", "Normal1_76", "VarName643", "Normal2_80", "VarName645", "Hold_80", "VarName647", "Deep_80", "VarName649", "Norma32_4", "VarName651", "Normal2_81", "VarName653", "Hold_81", "VarName655", "Deep_81", "VarName657", "Normal1_77", "VarName659", "Normal2_82", "VarName661", "Hold_82", "VarName663", "Deep_82", "VarName665", "Normal1_78", "VarName667", "Normal2_83", "VarName669", "Hold_83", "VarName671", "Deep_83", "VarName673", "Normal1_79", "VarName675", "Normal2_84", "VarName677", "Hold_84", "VarName679", "Deep_84", "VarName681", "Normal1_80", "VarName683", "Normal2_85", "VarName685", "Hold_85", "VarName687", "Deep_85", "VarName689", "Normal1_81", "VarName691", "Normal2_86", "VarName693", "Hold_86", "VarName695", "Deep_86", "VarName697", "Normal1_82", "VarName699", "Normal2_87", "VarName701", "Hold_87", "VarName703", "Deep_87", "VarName705", "Normal1_83", "VarName707", "Normal2_88", "VarName709", "Hold_88", "VarName711", "Deep_88", "VarName713", "Normal1_84", "VarName715", "Normal2_89", "VarName717", "Hold_89", "VarName719", "Deep_89", "VarName721", "Normal1_85", "VarName723", "Normal2_90", "VarName725", "Hold_90", "VarName727", "Deep_90", "VarName729", "Norma32_5", "VarName731", "Normal2_91", "VarName733", "Hold_91", "VarName735", "Deep_91", "VarName737", "Normal1_86", "VarName739", "Normal2_92", "VarName741", "Hold_92", "VarName743", "Deep_92", "VarName745", "Normal1_87", "VarName747", "Normal2_93", "VarName749", "Hold_93", "VarName751", "Deep_93", "VarName753", "Normal1_88", "VarName755", "Normal2_94", "VarName757", "Hold_94", "VarName759", "Deep_94", "VarName761", "Normal1_89", "VarName763", "Normal2_95", "VarName765", "Hold_95", "VarName767", "Deep_95", "VarName769", "Normal1_90", "VarName771", "Normal2_96", "VarName773", "Hold_96", "VarName775", "Deep_96", "VarName777", "Normal1_91", "VarName779", "Normal2_97", "VarName781", "Hold_97", "VarName783", "Deep_97", "VarName785", "Normal1_92", "VarName787", "Normal2_98", "VarName789", "Hold_98", "VarName791", "Deep_98", "VarName793", "Normal1_93", "VarName795", "Normal2_99", "VarName797", "Hold_99", "VarName799", "Deep_99", "VarName801", "Normal1_94", "VarName803", "Normal2_100", "VarName805", "Hold_100", "VarName807", "Deep_100", "VarName809", "Normal1_95", "VarName811", "Normal2_101", "VarName813", "Hold_101", "VarName815", "Deep_101", "VarName817", "Normal1_96", "VarName819", "Normal2_102", "VarName821", "Hold_102", "VarName823", "Deep_102", "VarName825", "Normal1_97", "VarName827", "Normal2_103", "VarName829", "Hold_103", "VarName831", "Deep_103", "VarName833", "Normal1_98", "VarName835", "Normal2_104", "VarName837", "Hold_104", "VarName839", "Deep_104", "VarName841", "Normal1_99", "VarName843", "Normal2_105", "VarName845", "Hold_105", "VarName847", "Deep_105", "VarName849", "Normal1_100", "VarName851", "Normal2_106", "VarName853", "Hold_106", "VarName855", "Deep_106", "VarName857", "Normal1_101", "VarName859", "Normal2_107", "VarName861", "Hold_107", "VarName863", "Deep_107", "VarName865", "Normal1_102", "VarName867", "Normal2_108", "VarName869", "Hold_108", "VarName871", "Deep_108", "VarName873", "Normal1_103", "VarName875", "Normal2_109", "VarName877", "Hold_109", "VarName879", "Deep_109", "VarName881", "Normal1_104", "VarName883", "Normal2_110", "VarName885", "Hold_110", "VarName887", "Deep_110", "VarName889", "Normal1_105", "VarName891", "Normal2_111", "VarName893", "Hold_111", "VarName895", "Deep_111", "VarName897"];
opts.VariableTypes = ["double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double"];

% Import the data
resdata = readtable("R:\Research\Res_sensor_paper\res_data.xlsx", opts, "UseExcel", false);

% Convert to output type
res_data = table2array(resdata);

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
opts.VariableNames = ["ID", "BirthYear", "Age", "Gender", "Heightcm", "Weightkg"];
opts.VariableTypes = ["string", "double", "double", "categorical", "double", "double"];

% Specify variable properties
opts = setvaropts(opts, ["ID"], "WhitespaceRule", "preserve");
opts = setvaropts(opts, ["ID", "Gender"], "EmptyFieldRule", "auto");

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
%% Change point detection healthy
opts = spreadsheetImportOptions("NumVariables", 4);

% Specify sheet and range
opts.Sheet = "Healthy-Hold";
opts.DataRange = "A2:D113";

% Specify column names and types
opts.VariableNames = ["PatientID", "IntialPoint", "ChangePoint1", "ChangePoint2"];
opts.VariableTypes = ["double", "double", "double", "double"];

% Import the data
changepointdetection = readtable("R:\Research\Res_sensor_paper\change_point_detection.xlsx", opts, "UseExcel", false);

iptH = table2array(changepointdetection);
%% Change point detection COVID
opts = spreadsheetImportOptions("NumVariables", 4);

% Specify sheet and range
opts.Sheet = "COVID-Hold";
opts.DataRange = "A2:D36";

% Specify column names and types
opts.VariableNames = ["PatientID", "IntialPoint", "ChangePoint1", "ChangePoint2"];
opts.VariableTypes = ["double", "double", "double", "double"];

% Import the data
changepointdetectionS1 = readtable("R:\Research\Res_sensor_paper\change_point_detection.xlsx", opts, "UseExcel", false);

iptC = table2array(changepointdetectionS1);
clear opts
%% Extract 3 minutes of each episode for healthy patients
% Extract 3 minutes
Fs = 1/0.14; % Sampling frequency
fu = 0.5;
fl = 0.1;
for i = 1:size(res_data,2)
    tmp = res_data(:,i);
    tmp(find(isnan(tmp) == 1)) = [];
    tmpN = tmp;
    if ~isempty(tmp)
%         [b,a]=butter(5,0.6/(Fs/2),'low');
        [b,a]=butter(5,[fl fu]/(Fs/2),'bandpass');
        tmp = filtfilt(b,a,tmp);
        tmp = (tmp - mean(tmp))/std(tmp);
    end
    if mod(i,8) == 2 % Normal breath 1
        tmp1 = res_data(:,i-1);
        tmp1(find(isnan(tmp1) == 1)) = [];
        H_patients(ceil(i/8)).Norm1 = tmp;
        H_patients(ceil(i/8)).tN1 = tmp1;
        H_patientsN(ceil(i/8)).tN1 = tmp1;
        H_patientsN(ceil(i/8)).Norm1 = tmpN;
    end
    
    if mod(i,8) == 4 % Normal breath 2
        tmp1 = res_data(:,i-1);
        tmp1(find(isnan(tmp1) == 1)) = [];
        H_patients(ceil(i/8)).Norm2 = tmp;
        H_patients(ceil(i/8)).tN2 = tmp1;
        H_patientsN(ceil(i/8)).tN2 = tmp1;
        H_patientsN(ceil(i/8)).Norm2 = tmpN;
    end
    
    if mod(i,8) == 6 % Hold breath
        tmp1 = res_data(:,i-1);
        tmp1(find(isnan(tmp1) == 1)) = [];
        H_patients(ceil(i/8)).Hold = tmp;
        H_patients(ceil(i/8)).tH = tmp1;
        H_patientsN(ceil(i/8)).tH = tmp1;
        H_patientsN(ceil(i/8)).Hold = tmpN;
    end
    
    if mod(i,8) == 0 % Hold breath
        tmp1 = res_data(:,i-1);
        tmp1(find(isnan(tmp1) == 1)) = [];
        H_patients(ceil(i/8)).Deep = tmp;
        H_patients(ceil(i/8)).tD = tmp1;
        H_patientsN(ceil(i/8)).tD = tmp1;
        H_patientsN(ceil(i/8)).Deep = tmpN;
    end
end
%% Extract 3 minutes of each episode for COVID patients
% Extract 3 minutes
for i = 1:size(res_data_C,2)
    tmp = res_data_C(:,i);
    tmp(find(isnan(tmp) == 1)) = [];
    tmpN = tmp;
    if ~isempty(tmp)
%         [b,a]=butter(5,0.6/(Fs/2),'low');
        [b,a]=butter(5,[fl fu]/(Fs/2),'bandpass');
        tmp = filtfilt(b,a,tmp);
        tmp = (tmp - mean(tmp))/std(tmp);
    end
    if mod(i,8) == 2 % Normal breath 1
        tmp1 = res_data_C(:,i-1);
        tmp1(find(isnan(tmp1) == 1)) = [];
        C_patients(ceil(i/8)).Norm1 = tmp;
        C_patients(ceil(i/8)).tN1 = tmp1;
        C_patientsN(ceil(i/8)).tN1 = tmp1;
        C_patientsN(ceil(i/8)).Norm1= tmpN;
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
            C_patientsN(ceil(i/8)).tN2 = tmp1;
            C_patientsN(ceil(i/8)).Norm2= tmpN;
        end
    end
    
    if mod(i,8) == 6 % Hold breath
        tmp1 = res_data_C(:,i-1);
        tmp1(find(isnan(tmp1) == 1)) = [];
        C_patients(ceil(i/8)).Hold = tmp;
        C_patients(ceil(i/8)).tH = tmp1;
        C_patientsN(ceil(i/8)).tH = tmp1;
        C_patientsN(ceil(i/8)).Hold= tmpN;
    end
    
    if mod(i,8) == 0 % Deep breath
        tmp1 = res_data_C(:,i-1);
        tmp1(find(isnan(tmp1) == 1)) = [];
        C_patients(ceil(i/8)).Deep = tmp;
        C_patients(ceil(i/8)).tD = tmp1;
        C_patientsN(ceil(i/8)).tD = tmp1;
        C_patientsN(ceil(i/8)).Deep = tmpN;
    end
end
bad_HpatientID1 = [3 22 30 34 38 52 53 57 58 75 107 111 112];
young_idx = find(demo.Age < 18)';
% young_idx = [];
bad_HpatientID1 = union(bad_HpatientID1,young_idx);
bad_HpatientID2 = [17 21 22 23 34 52 57 58 59 66 75 107 109 111 112];
bad_HpatientID2 = union(bad_HpatientID2,young_idx);
%% Peak analysis for healthy
thresh = -2;
M_size = 10;
peak_statH = [];
TfeaH = [];
Age = [];
Gender = [];
BMI = [];
COVID_state = [];
for i = 1:100
    tmp1 = H_patients(i).Norm1;
    t1 = H_patients(i).tN1;
    tmp2 = H_patients(i).Norm2;
    t2 = H_patients(i).tN2;
    tmp3 = H_patientsN(i).Norm1;
    tmp4 = H_patientsN(i).Norm2;
    if ~ismember(i,bad_HpatientID1) && ~isempty(tmp1)        
        [pks1,locs1,w1,p1] = findpeaks(tmp1,t1);
        pp1 = (p1-mean(p1))/std(p1);
        bad_peaks = find(pp1 < thresh);
        pks1(bad_peaks) = [];
        locs1(bad_peaks) = [];
        peak_statH(end+1,:) = [60/mean(diff(locs1)) 60/std(diff(locs1)) mean(p1) std(p1) mean(w1) std(w1)];
        TfeaH(end+1,:) = [mean(H_patientsN(i).Norm1) std(H_patientsN(i).Norm1) peak2peak(tmp1) rssq(tmp3)/length(tmp3)];
        Age(end+1) = demo.Age(i);
        Gender(end+1) = demo.Gender(i) == 'M';
        BMI(end+1) = demo.BMI(i);
        COVID_state(end+1) = 0;
    end

    if ~ismember(i,bad_HpatientID2) && ~isempty(tmp2)
        [pks2,locs2,w2,p2] = findpeaks(tmp2,t2);
        pp2 = (p2-mean(p2))/std(p2);
        bad_peaks = find(pp2 < thresh);
        pks2(bad_peaks) = [];
        locs2(bad_peaks) = [];

        peak_statH(end+1,:) = [60/mean(diff(locs2)) 60/std(diff(locs2)) mean(p2) std(p2) mean(w2) std(w2)];
        TfeaH(end+1,:) = [mean(H_patientsN(i).Norm2) std(H_patientsN(i).Norm2) peak2peak(tmp2) rssq(tmp4)/length(tmp4)];
        Age(end+1) = demo.Age(i);
        Gender(end+1) = demo.Gender(i) == 'M';
        BMI(end+1) = demo.BMI(i);
        COVID_state(end+1) = 0;
    end
end
%% PSD extraction for healthy
mean(peak_statH(:,1))
std(peak_statH(:,1))
FfeaH = [];
for i = 1:100
    tmp1 = H_patientsN(i).Norm1;
    t1 = H_patients(i).tN1;
    tmp2 = H_patientsN(i).Norm2;
    t2 = H_patients(i).tN2;
    if ~ismember(i,bad_HpatientID1) && ~isempty(tmp1)
        X = tmp1;
        L = length(X);
        f1 = Fs*(0:(L/2))/L;
        Y = fft(X,L);  % computes the (fast) discrete fourier transform
        PSD1 = abs(Y.*conj(Y)/L);  % Power spectrum (how much power in each freq)
        L1 = 1:ceil(L/2);  % only plot the first half of freqs
        % extract band power
        idx = find(f1 >= 0.1 & f1 <= 0.5);
        Pband = (f1(2)-f1(1))*sum(PSD1(idx));

        [max_PSDp2,idx2] = max(PSD1(21:length(f1)));
        FfeaH(end+1,:) = [Pband mean(PSD1) RMS1(PSD1) meanfreq(X) f1(idx2+20)];
    end

    if ~ismember(i,bad_HpatientID2) && ~isempty(tmp2)
        X = tmp2;
        L = length(X);
        f2 = Fs*(0:(L/2))/L;
        Y = fft(X,L);  % computes the (fast) discrete fourier transform
        PSD2 = abs(Y.*conj(Y)/L);  % Power spectrum (how much power in each freq)
        L2 = 1:ceil(L/2);  % only plot the first half of freqs

        % extract band power
        idx = find(f2 >= 0.1 & f2 <= 0.5);
        Pband = (f2(2)-f2(1))*sum(PSD2(idx));
        [max_PSDp2,idx2] = max(PSD2(21:length(f2)));
        FfeaH(end+1,:) = [Pband mean(PSD2) RMS1(PSD2) meanfreq(X) f2(idx2+20)];
    end
end
%% RQA for healthy
tau = 2;
dim = 4;
thr = 0.3;
RQA_statH = [];
for i = 1:100
    tmp1 = H_patients(i).Norm1;
    t1 = H_patients(i).tN1;
    tmp2 = H_patients(i).Norm2;
    t2 = H_patients(i).tN2; 
    if ~ismember(i,bad_HpatientID1) && ~isempty(tmp1)
        X = tmp1;
        y = phasespace(X,dim,tau);
        recurdata = cerecurr_y(y);
        recurrpt = tdrecurr_y(recurdata,thr);
        RQA_statH(end+1,:) = recurrqa_y(recurrpt);
    end

    if ~ismember(i,bad_HpatientID2) && ~isempty(tmp2)
        X = tmp2;
        y = phasespace(X,dim,tau);
        recurdata = cerecurr_y(y);
        recurrpt = tdrecurr_y(recurdata,thr);
        RQA_statH(end+1,:) = recurrqa_y(recurrpt);
    end
end
%% Peak analysis for COVID-19
bad_CpatientID1 = [17 23 26 30];
bad_CpatientID2 = [17 23 26 30];
outliner = [71 73 75 77]-length(peak_statH);
M_size = 10;
peak_statC = [];
TfeaC = [];
count = 0;
ID_outliner = [];
for i = 1:length(C_patients)
    tmp1 = C_patients(i).Norm1;
    t1 = C_patients(i).tN1;
    tmp2 = C_patients(i).Norm2;
    t2 = C_patients(i).tN2;
    tmp3 = C_patientsN(i).Norm1;
    tmp4 = C_patientsN(i).Norm2;
    if ~ismember(i,bad_CpatientID1) && ~isempty(tmp1)
        count = count + 1;
        if ismember(count,outliner)
            ID_outliner(end+1) = i;
        end
        [pks1,locs1,w1,p1] = findpeaks(tmp1,t1);
        pp1 = (p1-mean(p1))/std(p1);
        bad_peaks = find(pp1 < thresh);
        pks1(bad_peaks) = [];
        locs1(bad_peaks) = [];
      
        peak_statC(end+1,:) = [60/mean(diff(locs1)) 60/std(diff(locs1)) mean(p1) std(p1) mean(w1) std(w1)];
        TfeaC(end+1,:) = [mean(C_patientsN(i).Norm1) std(C_patientsN(i).Norm1) peak2peak(tmp1) rssq(tmp3)/length(tmp3)];
        Age(end+1) = MetaCOVID.Age(i);
        Gender(end+1) = MetaCOVID.Sex(i) == 'M';
        BMI(end+1) = MetaCOVID.BMI(i);
        COVID_state(end+1) = 1;
    end

    if ~ismember(i,bad_CpatientID2) && ~isempty(tmp2) && ~isnan(tmp2(1))
        count = count + 1;
        if ismember(count,outliner)
            ID_outliner(end+1) = i;
        end
        [pks2,locs2,w2,p2] = findpeaks(tmp2,t2);
        pp2 = (p2-mean(p2))/std(p2);
        bad_peaks = find(pp2 < thresh);
        pks2(bad_peaks) = [];
        locs2(bad_peaks) = [];

        peak_statC(end+1,:) = [60/mean(diff(locs2)) 60/std(diff(locs2)) mean(p2) std(p2) mean(w2) std(w2)];
        TfeaC(end+1,:) = [mean(C_patientsN(i).Norm2) std(C_patientsN(i).Norm2) peak2peak(tmp2) rssq(tmp4)/length(tmp4)];
        Age(end+1) = MetaCOVID.Age(i);
        Gender(end+1) = MetaCOVID.Sex(i) == 'M';
        BMI(end+1) = MetaCOVID.BMI(i);
        COVID_state(end+1) = 1;
    end
end
%% PSD extraction for COVID-19
FfeaC = [];
for i = 1:length(C_patients)
    tmp1 = C_patientsN(i).Norm1;
    t1 = C_patients(i).tN1;
    tmp2 = C_patientsN(i).Norm2;
    t2 = C_patients(i).tN2; 
    if ~ismember(i,bad_CpatientID1) && ~isempty(tmp1)
        X = tmp1;
        L = length(X);
        f1 = Fs*(0:(L/2))/L;
        Y = fft(X,L);  % computes the (fast) discrete fourier transform
        PSD1 = abs(Y.*conj(Y)/L);  % Power spectrum (how much power in each freq)
        L1 = 1:ceil(L/2);  % only plot the first half of freqs
        % extract band power
        idx = find(f1 >= 0.1 & f1 <= 0.5);
        Pband = (f1(2)-f1(1))*sum(PSD1(idx));
        [max_PSDp2,idx2] = max(PSD1(21:length(f1)));
        FfeaC(end+1,:) = [Pband mean(PSD1) RMS1(PSD1) meanfreq(X) f1(idx2+20)];
    end

    if ~ismember(i,bad_CpatientID2) && ~isempty(tmp2) && ~isnan(tmp2(1))
        X = tmp2;
        L = length(X);
        f2 = Fs*(0:(L/2))/L;
        Y = fft(X,L);  % computes the (fast) discrete fourier transform
        PSD2 = abs(Y.*conj(Y)/L);  % Power spectrum (how much power in each freq)
        L2 = 1:ceil(L/2);  % only plot the first half of freqs

        % extract band power
        idx = find(f2 >= 0.1 & f2 <= 0.5);
        Pband = (f2(2)-f2(1))*sum(PSD2(idx));
        [max_PSDp2,idx2] = max(PSD2(21:length(f2)));
        FfeaC(end+1,:) = [Pband mean(PSD2) RMS1(PSD2) meanfreq(X) f2(idx2+20)];
    end
end
%% RQA for COVID
RQA_statC = [];
for i = 1:length(C_patients)
    tmp1 = C_patients(i).Norm1;
    t1 = C_patients(i).tN1;
    tmp2 = C_patients(i).Norm2;
    t2 = C_patients(i).tN2; 
    if ~ismember(i,bad_CpatientID1) && ~isempty(tmp1)
        X = tmp1;
        y = phasespace(X,dim,tau);
        recurdata = cerecurr_y(y);
        recurrpt = tdrecurr_y(recurdata,thr);
        RQA_statC(end+1,:) = recurrqa_y(recurrpt);
    end

    if ~ismember(i,bad_CpatientID2) && ~isempty(tmp2) && ~isnan(tmp2(1))
        X = tmp2;
        y = phasespace(X,dim,tau);
        recurdata = cerecurr_y(y);
        recurrpt = tdrecurr_y(recurdata,thr);
        RQA_statC(end+1,:) = recurrqa_y(recurrpt);
    end
end
%% Put everything in table
% Cheat sheet
% cat1 = {'RR mean','RR std','Prom mean','Prom std','Width mean','Width std'};
% cat2 = {'Flux mean', 'Flux std','Peak2peak','RSSQ'};
% cat3 = {'Band power','PSD mean','NPSD','Mean freq','Dominant freq'};
% cat4 = {'DET', 'LMAX', 'ENT' ,'TND', 'LAM', 'TT'};
peak_statAll = [peak_statH(:,[1 3 4]); peak_statC(:,[1 3 4])];
TfeaAll = [TfeaH(:,[1 3 4]); TfeaC(:,[1 3 4])];
FfeaAll = [FfeaH(:,[2 3 4]); FfeaC(:,[2 3 4])];
RQA_All = [RQA_statH(:,[1 2 3]); RQA_statC(:,[1 2 3])];
data_frame = [Gender' Age' BMI' COVID_state' peak_statAll TfeaAll FfeaAll RQA_All];