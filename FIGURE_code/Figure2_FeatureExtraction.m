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
%% Change point detection COVID for healthy Deep
opts = spreadsheetImportOptions("NumVariables", 4);

% Specify sheet and range
opts.Sheet = "Healthy-Deep";
opts.DataRange = "A2:D13";

% Specify column names and types
opts.VariableNames = ["PatientID", "IntialPoint", "ChangePoint1", "ChangePoint2"];
opts.VariableTypes = ["double", "double", "double", "double"];

% Import the data
changepointdetectionS3 = readtable("R:\Research\Res_sensor_paper\change_point_detection.xlsx", opts, "UseExcel", false);

% Convert to output type
iptHD = table2array(changepointdetectionS3);
%% Change point detection COVID for COVID Deep
opts = spreadsheetImportOptions("NumVariables", 4);

% Specify sheet and range
opts.Sheet = "COVID-Deep";
opts.DataRange = "A2:D36";

% Specify column names and types
opts.VariableNames = ["PatientID", "IntialPoint", "ChangePoint1", "ChangePoint2"];
opts.VariableTypes = ["double", "double", "double", "double"];

% Import the data
changepointdetectionS2 = readtable("R:\Research\Res_sensor_paper\change_point_detection.xlsx", opts, "UseExcel", false);

% Convert to output type
iptCD = table2array(changepointdetectionS2);

%% Extract 3 minutes of each episode for healthy patients
% Extract 3 minutes
Fs = 1/0.14; % Sampling frequency
fu = 0.5;
fl = 0.005;
for i = 1:size(res_data,2)
    tmp = res_data(:,i);
    tmp(find(isnan(tmp) == 1)) = [];
    if ~isempty(tmp)
        [b,a]=butter(5,0.9/(Fs/2),'low');
        % [b,a]=butter(5,[fl fu]/(Fs/2),'bandpass');
        tmp = filtfilt(b,a,tmp);
        tmpN = tmp;
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
        if ~isempty(tmp1)
            H_patientsN(ceil(i/8)).tD = tmp1;
            H_patientsN(ceil(i/8)).Deep = tmpN;
        end
    end
end
%% Extract 3 minutes of each episode for COVID patients
% Extract 3 minutes
for i = 1:size(res_data_C,2)
    tmp = res_data_C(:,i);
    tmp(find(isnan(tmp) == 1)) = [];
    if ~isempty(tmp)
        % [b,a]=butter(5,[fl fu]/(Fs/2),'bandpass');
        [b,a]=butter(5,0.9/(Fs/2),'low');
        tmp = filtfilt(b,a,tmp);
        tmpN = tmp;
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
        if ~isempty(tmp1)
            C_patientsN(ceil(i/8)).tD = tmp1;
            C_patientsN(ceil(i/8)).Deep = tmpN;
        end
    end
end
%% Plot the figure
% Panel (a)
figure('Position',[680,50,949,946])
LW = 1.5;
M_size = 10;
subplot(5,3,1)

bad_HpatientID1 = [3 22 30 34 38 52 53 57 58 75 107 111 112];
young_idx = find(demo.Age < 18)';
bad_HpatientID1 = union(bad_HpatientID1,young_idx);
bad_HpatientID2 = [17 21 22 23 34 52 57 58 59 66 75 107 109 111 112];
bad_HpatientID2 = union(bad_HpatientID2,young_idx);
thresh = -1;
hold on
offset = 0;
step = 4;
count = 0;
for i = 1:15
    tmp1 = H_patients(i).Norm1;
    t1 = H_patients(i).tN1;
    tmp2 = H_patients(i).Norm2;
    t2 = H_patients(i).tN2; 
    if ~ismember(i,bad_HpatientID1) && ~isempty(tmp1)
        count = count + 1;
        [pks1,locs1,w1,p1] = findpeaks(tmp1,t1);
        pp1 = (p1-mean(p1))/std(p1);
        bad_peaks = find(pp1 < thresh);
        pks1(bad_peaks) = [];
        locs1(bad_peaks) = [];
        plot(t1,tmp1+offset,'b','LineWidth',1);
        scatter(locs1,pks1+offset,M_size,'g','filled')
        offset = offset + step;
        if count == 5 
            break
        end
    end
end

xlabel('Time (s)')
ylabel('Subjects')
set(gca,'FontWeight','bold','LineWidth',1.2,'FontSize',12);
% title('Normal breath','FontSize',16,'FontWeight','bold');
subtitle('(a)','FontSize',12,'FontWeight','bold','HorizontalAlignment','left')
grid on
axis tight
xlim([0 60])
yticks([0 step step*2 step*3 step*4])
yticklabels({'HS1','HS2','HS3','HS4','HS5'})
%% Panel (b)
subplot(5,3,2)
bad_HpatientID = [2 5 6 7 9 10 11 12 13 14 15 16 17 21 22 28 35 38 54 59 60 67 68 70:75 101 111 112 108:112];
% young_idx = find(demo.Age < 18)';
% bad_HpatientID = union(bad_HpatientID,young_idx);

thresh = -1;
hold on
offset = 0;
step = 5;
count = 0;
for i = 1:20
    tmp = H_patientsN(i).Hold;
    t = H_patients(i).tH; 
    tmp = (tmp-mean(tmp))/std(tmp);
    if ~ismember(i,bad_HpatientID) && ~isempty(tmp) && ~isnan(tmp(1))
        % i
        count = count + 1;
        [pks1,locs1,w1,p1] = findpeaks(tmp(iptH(i,3):end),t(iptH(i,3):end));
        pp1 = (p1-mean(p1))/std(p1);
        bad_peaks = find(pp1 < thresh);
        pks1(bad_peaks) = [];
        locs1(bad_peaks) = [];
        plot(t,tmp+offset,'b','LineWidth',1);
        scatter(locs1,pks1+offset,M_size,'g','filled')
        plot([(iptH(i,3)-10)/Fs (iptH(i,3)-10)/Fs],[min(tmp+offset) max(tmp+offset)],'Color',"magenta",'LineWidth',LW)
        offset = offset + step;
        if count == 5 
            break
        end
    end
end

xlabel('Time (s)');
set(gca,'FontWeight','bold','LineWidth',1.2,'FontSize',12);
% title('Holding breath','FontSize',16,'FontWeight','bold');
% subtitle('(b)','FontSize',12,'FontWeight','bold','HorizontalAlignment','left')
grid on
axis tight
xlim([0 60])
yticks([0 step step*2 step*3 step*4])
yticklabels({'HS1','HS2','HS3','HS4','HS5'})
%% Panel (c)
bad_HpatientID = [65 73 101 109 110:112];
young_idx = find(demo.Age < 18)';
bad_HpatientID = union(bad_HpatientID,young_idx);

subplot(5,3,3)
thresh = -1;
hold on
offset = 0;
step = 6;
count = 0;
for i = 65:length(H_patients)
    tmp = H_patientsN(i).Deep;
    t = H_patients(i).tD; 
    tmp = (tmp-mean(tmp))/std(tmp);
    if ~ismember(i,bad_HpatientID) && ~isempty(tmp) && ~isnan(tmp(1))
        count = count + 1;
        [pks1,locs1,w1,p1] = findpeaks(tmp(iptHD(i-64,3):end),t(iptHD(i-64,3):end));
        pp1 = (p1-mean(p1))/std(p1);
        bad_peaks = find(pp1 < thresh);
        pks1(bad_peaks) = [];
        locs1(bad_peaks) = [];
        plot(t,tmp+offset,'b','LineWidth',1);
        scatter(locs1,pks1+offset,M_size,'g','filled')
        plot([(iptHD(i-64,3))/Fs (iptHD(i-64,3))/Fs],[min(tmp+offset) max(tmp+offset)],'Color',"magenta",'LineWidth',LW)
        offset = offset + step;
        if count == 5 
            break
        end
    end
end

xlabel('Time (s)');
set(gca,'FontWeight','bold','LineWidth',1.2,'FontSize',12);
title('Deep breath','FontSize',16,'FontWeight','bold');
% subtitle('(c)','FontSize',12,'FontWeight','bold','HorizontalAlignment','left')
grid on
axis tight
xlim([0 60])
yticks([0 step step*2 step*3 step*4])
yticklabels({'HS1','HS2','HS3','HS4','HS5'})
%% Panel (g)
subplot(5,3,7)
bad_CpatientID1 = [4 5 8 17 23 30];
thresh = -1;
hold on
offset = 0;
step = 5;
count = 0;
for i = 1:15
    tmp1 = C_patients(i).Norm2;
    t1 = C_patients(i).tN2;
    if ~ismember(i,bad_CpatientID1) && ~isempty(tmp1) && ~isnan(tmp1(1))
        count = count + 1;
        [pks1,locs1,w1,p1] = findpeaks(tmp1,t1);
        pp1 = (p1-mean(p1))/std(p1);
        bad_peaks = find(pp1 < thresh);
        pks1(bad_peaks) = [];
        locs1(bad_peaks) = [];
        plot(t1,tmp1+offset,'r','LineWidth',1);
        scatter(locs1,pks1+offset,M_size,'g','filled')
        offset = offset + step;
        if count == 5 
            break
        end
    end
end

xlabel('Time (s)')
ylabel('Patients')
set(gca,'FontWeight','bold','LineWidth',1.2,'FontSize',12);
% title('(g)','FontSize',12,'FontWeight','bold','HorizontalAlignment','left')
grid on
axis tight
xlim([0 60])
yticks([0 step step*2 step*3 step*4])
yticklabels({'P1','P2','P3','P4','P5'})
%% Panel (h)
subplot(5,3,8)
bad_CpatientID = [1 2 3 4 6 17];

thresh = -1;
hold on
offset = 0;
step = 4.8;
count = 0;
for i = 1:20
    tmp = C_patientsN(i).Hold;
    t = C_patients(i).tH; 
    tmp = (tmp-mean(tmp))/std(tmp);
    if ~ismember(i,bad_CpatientID) && ~isempty(tmp) && ~isnan(tmp(1))
        count = count + 1;
        [pks1,locs1,w1,p1] = findpeaks(tmp(iptC(i,3):end),t(iptC(i,3):end));
        pp1 = (p1-mean(p1))/std(p1);
        bad_peaks = find(pp1 < thresh);
        pks1(bad_peaks) = [];
        locs1(bad_peaks) = [];
        plot(t,tmp+offset,'r','LineWidth',1);
        scatter(locs1,pks1+offset,M_size,'g','filled')
        plot([(iptC(i,3)-10)/Fs (iptC(i,3)-10)/Fs],[min(tmp+offset) max(tmp+offset)],'Color',"magenta",'LineWidth',LW)
        offset = offset + step;
        if count == 5 
            break
        end
    end
end

xlabel('Time (s)');
set(gca,'FontWeight','bold','LineWidth',1.2,'FontSize',12);
% subtitle('(h)','FontSize',12,'FontWeight','bold')
grid on
axis tight
xlim([0 60])
yticks([0 step step*2 step*3 step*4])
yticklabels({'P1','P2','P3','P4','P5'})
%% Panel (i)
bad_CpatientID = [1 2 3 4 6 17];

subplot(5,3,9)
thresh = -1;
hold on
offset = 0;
step = 6;
count = 0;
for i = 1:length(C_patients)
    tmp = C_patientsN(i).Deep;
    t = C_patients(i).tD; 
    tmp = (tmp-mean(tmp))/std(tmp);
    if ~ismember(i,bad_CpatientID) && ~isempty(tmp) && ~isnan(tmp(1))
        count = count + 1;
        [pks1,locs1,w1,p1] = findpeaks(tmp(iptCD(i,3):end),t(iptCD(i,3):end));
        pp1 = (p1-mean(p1))/std(p1);
        bad_peaks = find(pp1 < thresh);
        pks1(bad_peaks) = [];
        locs1(bad_peaks) = [];
        plot(t,tmp+offset,'r','LineWidth',1);
        scatter(locs1,pks1+offset,M_size,'g','filled')
        plot([(iptCD(i,3)-10)/Fs (iptCD(i,3)-10)/Fs],[min(tmp+offset) max(tmp+offset)],'Color',"magenta",'LineWidth',LW)
        offset = offset + step;
        if count == 5 
            break
        end
    end
end

xlabel('Time (s)');
set(gca,'FontWeight','bold','LineWidth',1.2,'FontSize',12);
% subtitle('(i)','FontSize',12,'FontWeight','bold')
grid on
axis tight
xlim([0 60])
yticks([0 step step*2 step*3 step*4])
yticklabels({'P1','P2','P3','P4','P5'})
%% Panel (d)
LW = 1;
M_size = 15;
subplot(5,3,4)

bad_HpatientID1 = [3 22 30 34 38 52 53 57 58 75 107 111 112];
young_idx = find(demo.Age < 18)';
bad_HpatientID1 = union(bad_HpatientID1,young_idx);
bad_HpatientID2 = [17 21 22 23 34 52 57 58 59 66 75 107 109 111 112];
bad_HpatientID2 = union(bad_HpatientID2,young_idx);

hold on
offset = 0;
step = 1.2;
count = 0;
for i = 1:15
    tmp1 = H_patients(i).Norm1;
    t1 = H_patients(i).tN1;
    if ~ismember(i,bad_HpatientID1) && ~isempty(tmp1)
        count = count + 1;
        X = tmp1;
        L = length(X);
        f1 = Fs*(0:(L/2))/L;
        Y = fft(X,L);  % computes the (fast) discrete fourier transform
        PSD1 = abs(Y.*conj(Y)/L);  % Power spectrum (how much power in each freq)
        PSD1 = (PSD1-min(PSD1))/(max(PSD1)-min(PSD1));
        Hc = [0 0.4470 0.7410];
        semilogy(f1,PSD1(1:length(f1))+offset,'b','LineWidth',1);
        [max_PSD,idx] = max(PSD1(1:length(f1))+offset);
        scatter(f1(idx),max_PSD,M_size,[0.4940 0.1840 0.5560],'s','filled')
        text(f1(idx)+0.02,max_PSD+0.2,num2str(round(f1(idx),2)),'HorizontalAlignment','left','VerticalAlignment', 'cap','FontSize',8);
        offset = offset + step;
        if count == 5 
            break
        end
    end
end

xlabel('Frequency (Hz)')
ylabel('Subjects')
set(gca,'FontWeight','bold','LineWidth',1.2,'FontSize',12);
% subtitle('(d)','FontSize',12,'FontWeight','bold')
grid on
axis tight
xlim([0 0.5])
yticks([0 step step*2 step*3 step*4])
yticklabels({'HS1','HS2','HS3','HS4','HS5'})
%% Panel (e)
LW = 1;
M_size = 15;
bad_HpatientID = [2 5 6 7 9 10 11 12 13 14 15 16 17 21 22 28 35 38 54 59 60 67 68 70:75 101 111 112 108:112];
subplot(5,3,5)

hold on
offset = 0;
step = 1.2;
count = 0;
for i = 1:15
    tmp1 = H_patients(i).Hold;
    t1 = H_patients(i).tH;
    if ~ismember(i,bad_HpatientID1) && ~isempty(tmp1)
        count = count + 1;
        X = tmp1;
        L = length(X);
        f1 = Fs*(0:(L/2))/L;
        Y = fft(X,L);  % computes the (fast) discrete fourier transform
        PSD1 = abs(Y.*conj(Y)/L);  % Power spectrum (how much power in each freq)
        PSD1 = (PSD1-min(PSD1))/(max(PSD1)-min(PSD1));
        semilogy(f1,PSD1(1:length(f1))+offset,'b','LineWidth',1);
        [max_PSDp1,idx1] = max(PSD1(1:20)+offset);
        [max_PSDp2,idx2] = max(PSD1(21:length(f1))+offset);
        scatter(f1(idx1),max_PSDp1,M_size,[0.4940 0.1840 0.5560],'s','filled')
        scatter(f1(idx2+20),max_PSDp2,M_size,[0.4940 0.1840 0.5560],'s','filled')
        xline(0.1,'Color',"magenta",'LineWidth',LW)
        text(f1(idx1)+0.02,max_PSDp1+0.2,num2str(round(f1(idx1),2)),'HorizontalAlignment','left','VerticalAlignment', 'cap','FontSize',8);
        text(f1(idx2+20)+0.02,max_PSDp2+0.2,num2str(round(f1(idx2+20),2)),'HorizontalAlignment','left','VerticalAlignment', 'cap','FontSize',8);
        offset = offset + step;
        if count == 5 
            break
        end
    end
end

xlabel('Frequency (Hz)')
set(gca,'FontWeight','bold','LineWidth',1.2,'FontSize',12);
% subtitle('(e)','FontSize',12,'FontWeight','bold')
grid on
axis tight
xlim([0 0.5])
yticks([0 step step*2 step*3 step*4])
yticklabels({'HS1','HS2','HS3','HS4','HS5'})
%% Panel (f)
LW = 1;
M_size = 15;
bad_HpatientID = [65 73 101 109 110:112];
young_idx = find(demo.Age < 18)';
bad_HpatientID = union(bad_HpatientID,young_idx);
subplot(5,3,6)

hold on
offset = 0;
step = 1.2;
count = 0;
for i = 65:length(H_patients)
    tmp1 = H_patients(i).Deep;
    t1 = H_patients(i).tD;
    if ~ismember(i,bad_HpatientID1) && ~isempty(tmp1)
        count = count + 1;
        X = tmp1;
        L = length(X);
        f1 = Fs*(0:(L/2))/L;
        Y = fft(X,L);  % computes the (fast) discrete fourier transform
        PSD1 = abs(Y.*conj(Y)/L);  % Power spectrum (how much power in each freq)
        PSD1 = (PSD1-min(PSD1))/(max(PSD1)-min(PSD1));
        semilogy(f1,PSD1(1:length(f1))+offset,'b','LineWidth',1);
        [max_PSDp1,idx1] = max(PSD1(1:20)+offset);
        [max_PSDp2,idx2] = max(PSD1(21:length(f1))+offset);
        scatter(f1(idx1),max_PSDp1,M_size,[0.4940 0.1840 0.5560],'s','filled')
        scatter(f1(idx2+20),max_PSDp2,M_size,[0.4940 0.1840 0.5560],'s','filled')
        xline(0.1,'Color',"magenta",'LineWidth',LW)
        text(f1(idx1)+0.02,max_PSDp1+0.2,num2str(round(f1(idx1),2)),'HorizontalAlignment','left','VerticalAlignment', 'cap','FontSize',8);
        text(f1(idx2+20)+0.02,max_PSDp2+0.2,num2str(round(f1(idx2+20),2)),'HorizontalAlignment','left','VerticalAlignment', 'cap','FontSize',8);
        offset = offset + step;
        if count == 5 
            break
        end
    end
end

xlabel('Frequency (Hz)')
set(gca,'FontWeight','bold','LineWidth',1.2,'FontSize',12);
% subtitle('(f)','FontSize',12,'FontWeight','bold')
grid on
axis tight
xlim([0 0.5])
yticks([0 step step*2 step*3 step*4])
yticklabels({'HS1','HS2','HS3','HS4','HS5'})
%% Panel (j)
LW = 1;
M_size = 15;
subplot(5,3,10)
bad_CpatientID1 = [4 5 8 17 23 30];

hold on
offset = 0;
step = 1.2;
count = 0;
for i = 1:length(C_patients)
    tmp1 = C_patients(i).Norm2;
    t1 = C_patients(i).tN2;
    if ~ismember(i,bad_CpatientID1) && ~isempty(tmp1) && ~isnan(tmp1(1))
        count = count + 1;
        X = tmp1;
        L = length(X);
        f1 = Fs*(0:(L/2))/L;
        Y = fft(X,L);  % computes the (fast) discrete fourier transform
        PSD1 = abs(Y.*conj(Y)/L);  % Power spectrum (how much power in each freq)
        PSD1(1:3) = mean(PSD1);
        PSD1 = (PSD1-min(PSD1))/(max(PSD1)-min(PSD1));
        if count == 4
            PSD1 = PSD1*6; 
        end
        semilogy(f1,PSD1(1:length(f1))+offset,'r','LineWidth',1);
        [max_PSD,idx] = max(PSD1(1:length(f1))+offset);
        scatter(f1(idx),max_PSD,M_size,[0.4940 0.1840 0.5560],'s','filled')
        text(f1(idx)+0.02,max_PSD+0.2,num2str(round(f1(idx),2)),'HorizontalAlignment','left','VerticalAlignment', 'cap','FontSize',8);
        offset = offset + step;
        if count == 5 
            break
        end
    end
end

xlabel('Frequency (Hz)')
ylabel('Patients')
set(gca,'FontWeight','bold','LineWidth',1.2,'FontSize',12);
% subtitle('(j)','FontSize',12,'FontWeight','bold')
grid on
axis tight
xlim([0 0.5])
yticks([0 step step*2 step*3 step*4])
yticklabels({'P1','P2','P3','P4','P5'})
ylim([-0.01 max_PSD])
%% Panel (k)
LW = 1;
M_size = 15;
bad_CpatientID = [1 2 3 4 6 17];
subplot(5,3,11)

hold on
offset = 0;
step = 1.2;
count = 0;
for i = 1:15
    tmp1 = C_patients(i).Hold;
    t1 = C_patients(i).tH;
    if ~ismember(i,bad_CpatientID1) && ~isempty(tmp1)
        count = count + 1;
        X = tmp1;
        L = length(X);
        f1 = Fs*(0:(L/2))/L;
        Y = fft(X,L);  % computes the (fast) discrete fourier transform
        PSD1 = abs(Y.*conj(Y)/L);  % Power spectrum (how much power in each freq)
        PSD1 = (PSD1-min(PSD1))/(max(PSD1)-min(PSD1));
        semilogy(f1,PSD1(1:length(f1))+offset,'r','LineWidth',1);
        [max_PSDp1,idx1] = max(PSD1(1:20)+offset);
        [max_PSDp2,idx2] = max(PSD1(21:length(f1))+offset);
        scatter(f1(idx1),max_PSDp1,M_size,[0.4940 0.1840 0.5560],'s','filled')
        scatter(f1(idx2+20),max_PSDp2,M_size,[0.4940 0.1840 0.5560],'s','filled')
        xline(0.1,'Color',"magenta",'LineWidth',LW)
        if count == 2
            text(f1(idx1)+0.02,max_PSDp1+0.2,num2str(round(f1(idx1),3)),'HorizontalAlignment','left','VerticalAlignment', 'cap','FontSize',8);
            text(f1(idx2+20)+0.02,max_PSDp2+0.2,num2str(round(f1(idx2+20),2)),'HorizontalAlignment','left','VerticalAlignment', 'cap','FontSize',8);
        else
            text(f1(idx1)+0.02,max_PSDp1+0.2,num2str(round(f1(idx1),2)),'HorizontalAlignment','left','VerticalAlignment', 'cap','FontSize',8);
            text(f1(idx2+20)+0.02,max_PSDp2+0.2,num2str(round(f1(idx2+20),2)),'HorizontalAlignment','left','VerticalAlignment', 'cap','FontSize',8);
        end
        offset = offset + step;
        if count == 5 
            break
        end
    end
end

xlabel('Frequency (Hz)')
set(gca,'FontWeight','bold','LineWidth',1.2,'FontSize',12);
% subtitle('(k)','FontSize',12,'FontWeight','bold')
grid on
axis tight
xlim([0 0.5])
yticks([0 step step*2 step*3 step*4])
yticklabels({'P1','P2','P3','P4','P5'})
%% Panel (l)
bad_CpatientID = [1 2 3 4 6 17];
LW = 1;
M_size = 15;
subplot(5,3,12)

hold on
offset = 0;
step = 1.2;
count = 0;
for i = 1:length(C_patients)
    tmp1 = C_patients(i).Deep;
    t1 = C_patients(i).tD;
    if ~ismember(i,bad_CpatientID1) && ~isempty(tmp1)
        count = count + 1;
        X = tmp1;
        L = length(X);
        f1 = Fs*(0:(L/2))/L;
        Y = fft(X,L);  % computes the (fast) discrete fourier transform
        PSD1 = abs(Y.*conj(Y)/L);  % Power spectrum (how much power in each freq)
        PSD1 = (PSD1-min(PSD1))/(max(PSD1)-min(PSD1));
        semilogy(f1,PSD1(1:length(f1))+offset,'r','LineWidth',1);
        [max_PSDp1,idx1] = max(PSD1(1:20)+offset);
        [max_PSDp2,idx2] = max(PSD1(21:length(f1))+offset);
        scatter(f1(idx1),max_PSDp1,M_size,[0.4940 0.1840 0.5560],'s','filled')
        scatter(f1(idx2+20),max_PSDp2,M_size,[0.4940 0.1840 0.5560],'s','filled')
        xline(0.1,'Color',"magenta",'LineWidth',LW)
        if count > 2
            text(f1(idx1)+0.02,max_PSDp1+0.2,num2str(round(f1(idx1),2)),'HorizontalAlignment','left','VerticalAlignment', 'cap','FontSize',8);
            text(f1(idx2+20)+0.02,max_PSDp2+0.2,num2str(round(f1(idx2+20),2)),'HorizontalAlignment','left','VerticalAlignment', 'cap','FontSize',8);
        else
            text(f1(idx1)+0.02,max_PSDp1+0.2,num2str(round(f1(idx1),3)),'HorizontalAlignment','left','VerticalAlignment', 'cap','FontSize',8);
            text(f1(idx2+20)+0.02,max_PSDp2+0.2,num2str(round(f1(idx2+20),2)),'HorizontalAlignment','left','VerticalAlignment', 'cap','FontSize',8);
        end
        offset = offset + step;
        if count == 5 
            break
        end
    end
end

xlabel('Frequency (Hz)')
set(gca,'FontWeight','bold','LineWidth',1.2,'FontSize',12);
% subtitle('(l)','FontSize',12,'FontWeight','bold','HorizontalAlignment','left')
grid on
axis tight
xlim([0 0.5])
yticks([0 step step*2 step*3 step*4])
yticklabels({'P1','P2','P3','P4','P5'})
%% Panel (m)
load('R:\Research\Res_sensor_paper\Code\FIGURE_code\Fig2_normal.mat')
% Normalize data
subplot(5,3,13)
tmp1 = [peak_statH(:,1); peak_statC(:,1)];
tmp2 = [peak_statH(:,3); peak_statC(:,3)];
tmp3 = [FfeaH(:,3); FfeaC(:,3)];
tmp4 = [FfeaH(:,5); FfeaC(:,5)];

tmp1 = (tmp1-min(tmp1))/(max(tmp1)-min(tmp1));
tmp2 = (tmp2-min(tmp2))/(max(tmp2)-min(tmp2));
tmp3 = (tmp3-min(tmp3))/(max(tmp3)-min(tmp3));
tmp4 = (tmp4-min(tmp4))/(max(tmp4)-min(tmp4));

tmp1H = tmp1(1:length(peak_statH));
tmp2H = tmp2(1:length(peak_statH));
tmp3H = tmp3(1:length(peak_statH));
tmp4H = tmp4(1:length(peak_statH));

tmp1C = tmp1(size(peak_statH,1)+1:end);
tmp2C = tmp2(size(peak_statH,1)+1:end);
tmp3C = tmp3(size(peak_statH,1)+1:end);
tmp4C = tmp4(size(peak_statH,1)+1:end);
X = [mean(tmp1H) mean(tmp1C);
    mean(tmp2H) mean(tmp2C);
    mean(tmp3H) mean(tmp3C);
    mean(tmp4H) mean(tmp4C)];

err = [std(tmp1H) std(tmp1C);
        std(tmp2H) std(tmp2C);
        std(tmp3H) std(tmp3C);
        std(tmp4H) std(tmp4C)];
label_mean1 = [mean(peak_statH(:,1)) mean(peak_statH(:,3)) mean(FfeaH(:,3)) mean(FfeaH(:,5))];
label_mean2 = [mean(peak_statC(:,1)) mean(peak_statC(:,3)) mean(FfeaC(:,3)) mean(FfeaC(:,5))];
label_std1 = [std(peak_statH(:,1)) std(peak_statH(:,3)) std(FfeaH(:,3)) std(FfeaH(:,5))];
label_std2 = [std(peak_statC(:,1)) std(peak_statC(:,3)) std(FfeaC(:,3)) std(FfeaC(:,5))];
cat = categorical({'RR mean','Prom mean','NPSD','Dominant freq'});
cat = reordercats(cat,{'RR mean','Prom mean','NPSD','Dominant freq'});
b = bar(cat',X);
hold on
[ngroups,nbars] = size(X);
% Get the x coordinate of the bars
x = nan(nbars, ngroups);
for i = 1:nbars
    x(i,:) = b(i).XEndPoints;
end
errorbar(x',X,err,'k','linestyle','none');%Adding the errorbars
legend('Healthy','COVID-19','Error bar')
xtips1 = b(1).XEndPoints;
ytips1 = b(1).YEndPoints;

xtips2 = b(2).XEndPoints;
ytips2 = b(2).YEndPoints;
labels1 = string(round(label_mean1,2));
labels2 = string(round(label_mean2,2));

labelsH = string(round(label_std1,2));
labelsC = string(round(label_std2,2));
% for i = 1:length(labels1)
%     labels1(i) = strcat(labels1(i)," ± ",labelsH(i));
%     labels2(i) = strcat(labels2(i)," ± ",labelsC(i));
% end

err1 = [std(tmp1H) std(tmp2H) std(tmp3H) std(tmp4H) std(tmp1C) std(tmp2C) std(tmp3C) std(tmp4C)];
ht = text(xtips1,ytips1+err1(1:4)+0.05,labels1,'HorizontalAlignment','left','FontSize',8,'FontWeight','bold','Color',[0 0.4470 0.7410]);
set(ht,'Rotation',90)
ht = text(xtips2,ytips2+err1(5:8)+0.05,labels2,'HorizontalAlignment','left','FontSize',8,'FontWeight','bold','Color',[0.8500 0.3250 0.0980]);
set(ht,'Rotation',90)
grid on
ylim([0 1.5])
set(gca,'FontWeight','bold','LineWidth',1.2,'FontSize',10);
xlabel('Features','FontWeight','bold','FontSize',13)
ylabel('Normalized value','FontWeight','bold','FontSize',13)
h1 = [ttest2(tmp1H,tmp1C) ttest2(tmp2H,tmp2C) ttest2(tmp3H,tmp3C) ttest2(tmp4H,tmp4C)];
[~,pNorm1] = ttest2(tmp2H,tmp2C);
%% Panel (n)
load('R:\Research\Res_sensor_paper\Code\FIGURE_code\Fig2_holding.mat')
% Normalize data
subplot(5,3,14)
tmp1 = [peak_statH(:,1); peak_statC(:,1)];
tmp2 = [peak_statH(:,3); peak_statC(:,3)];
tmp3 = [FfeaH(:,3+5); FfeaC(:,3+5)];
tmp4 = [FfeaH(:,5+5); FfeaC(:,5+5)];

tmp1 = (tmp1-min(tmp1))/(max(tmp1)-min(tmp1));
tmp2 = (tmp2-min(tmp2))/(max(tmp2)-min(tmp2));
tmp3 = (tmp3-min(tmp3))/(max(tmp3)-min(tmp3));
tmp4 = (tmp4-min(tmp4))/(max(tmp4)-min(tmp4));

tmp1H = tmp1(1:size(peak_statH,1));
tmp2H = tmp2(1:size(peak_statH,1));
tmp3H = tmp3(1:size(peak_statH,1));
tmp4H = tmp4(1:size(peak_statH,1));

tmp1C = tmp1(size(peak_statH,1)+1:end);
tmp2C = tmp2(size(peak_statH,1)+1:end);
tmp3C = tmp3(size(peak_statH,1)+1:end);
tmp4C = tmp4(size(peak_statH,1)+1:end);
X = [mean(tmp1H) mean(tmp1C);
    mean(tmp2H) mean(tmp2C);
    mean(tmp3H) mean(tmp3C);
    mean(tmp4H) mean(tmp4C)];

err = [std(tmp1H) std(tmp1C);
        std(tmp2H) std(tmp2C);
        std(tmp3H) std(tmp3C);
        std(tmp4H) std(tmp4C)];
label_mean1 = [mean(peak_statH(:,1)) mean(peak_statH(:,3)) mean(FfeaH(:,3+5)) mean(FfeaH(:,5+5))];
label_mean2 = [mean(peak_statC(:,1)) mean(peak_statC(:,3)) mean(FfeaC(:,3+5)) mean(FfeaC(:,5+5))];
label_std1 = [std(peak_statH(:,1)) std(peak_statH(:,3)) std(FfeaH(:,3+5)) std(FfeaH(:,5+5))];
label_std2 = [std(peak_statC(:,1)) std(peak_statC(:,3)) std(FfeaC(:,3+5)) std(FfeaC(:,5+5))];
cat = categorical({'RR mean','PromAF mean','NPSDAF mean','Dominant freq'});
cat = reordercats(cat,{'RR mean','PromAF mean','NPSDAF mean','Dominant freq'});
b = bar(cat',X);
hold on
[ngroups,nbars] = size(X);
% Get the x coordinate of the bars
x = nan(nbars, ngroups);
for i = 1:nbars
    x(i,:) = b(i).XEndPoints;
end
errorbar(x',X,err,'k','linestyle','none');%Adding the errorbars

xtips1 = b(1).XEndPoints;
ytips1 = b(1).YEndPoints;

xtips2 = b(2).XEndPoints;
ytips2 = b(2).YEndPoints;
labels1 = string(round(label_mean1,2));
labels2 = string(round(label_mean2,2));

labelsH = string(round(label_std1,2));
labelsC = string(round(label_std2,2));
% for i = 1:length(labels1)
%     labels1(i) = strcat(labels1(i)," ± ",labelsH(i));
%     labels2(i) = strcat(labels2(i)," ± ",labelsC(i));
% end

err1 = [std(tmp1H) std(tmp2H) std(tmp3H) std(tmp4H) std(tmp1C) std(tmp2C) std(tmp3C) std(tmp4C)];
ht = text(xtips1,ytips1+err1(1:4)+0.05,labels1,'HorizontalAlignment','left','FontSize',8,'FontWeight','bold','Color',[0 0.4470 0.7410]);
set(ht,'Rotation',90)
ht = text(xtips2,ytips2+err1(5:8)+0.05,labels2,'HorizontalAlignment','left','FontSize',8,'FontWeight','bold','Color',[0.8500 0.3250 0.0980]);
set(ht,'Rotation',90)
grid on
ylim([0 1.5])
set(gca,'FontWeight','bold','LineWidth',1.2,'FontSize',10);
xlabel('Features','FontWeight','bold','FontSize',13)
h2 = [ttest2(tmp1H,tmp1C) ttest2(tmp2H,tmp2C) ttest2(tmp3H,tmp3C) ttest2(tmp4H,tmp4C)];
[~,pHold1] = ttest2(tmp2H,tmp2C);
[~,pHold2] = ttest2(tmp3H,tmp3C);
%% Panel (o)
load('R:\Research\Res_sensor_paper\Code\FIGURE_code\Fig2_deep.mat')
% Normalize data
subplot(5,3,15)
tmp1 = [peak_statH(:,1); peak_statC(:,1)];
tmp2 = [peak_statH(:,3); peak_statC(:,3)];
tmp3 = [FfeaH(:,3+5); FfeaC(:,3+5)];
tmp4 = [FfeaH(:,5+5); FfeaC(:,5+5)];

tmp1 = (tmp1-min(tmp1))/(max(tmp1)-min(tmp1));
tmp2 = (tmp2-min(tmp2))/(max(tmp2)-min(tmp2));
tmp3 = (tmp3-min(tmp3))/(max(tmp3)-min(tmp3));
tmp4 = (tmp4-min(tmp4))/(max(tmp4)-min(tmp4));

tmp1H = tmp1(1:size(peak_statH,1));
tmp2H = tmp2(1:size(peak_statH,1));
tmp3H = tmp3(1:size(peak_statH,1));
tmp4H = tmp4(1:size(peak_statH,1));

tmp1C = tmp1(size(peak_statH,1)+1:end);
tmp2C = tmp2(size(peak_statH,1)+1:end);
tmp3C = tmp3(size(peak_statH,1)+1:end);
tmp4C = tmp4(size(peak_statH,1)+1:end);
X = [mean(tmp1H) mean(tmp1C);
    mean(tmp2H) mean(tmp2C);
    mean(tmp3H) mean(tmp3C);
    mean(tmp4H) mean(tmp4C)];

err = [std(tmp1H) std(tmp1C);
        std(tmp2H) std(tmp2C);
        std(tmp3H) std(tmp3C);
        std(tmp4H) std(tmp4C)];
label_mean1 = [mean(peak_statH(:,1)) mean(peak_statH(:,3)) mean(FfeaH(:,3+5)) mean(FfeaH(:,5+5))];
label_mean2 = [mean(peak_statC(:,1)) mean(peak_statC(:,3)) mean(FfeaC(:,3+5)) mean(FfeaC(:,5+5))];
label_std1 = [std(peak_statH(:,1)) std(peak_statH(:,3)) std(FfeaH(:,3+5)) std(FfeaH(:,5+5))];
label_std2 = [std(peak_statC(:,1)) std(peak_statC(:,3)) std(FfeaC(:,3+5)) std(FfeaC(:,5+5))];
cat = categorical({'RR mean','PromAF mean','NPSDAF mean','Dominant freq'});
cat = reordercats(cat,{'RR mean','PromAF mean','NPSDAF mean','Dominant freq'});
b = bar(cat',X);
hold on
[ngroups,nbars] = size(X);
% Get the x coordinate of the bars
x = nan(nbars, ngroups);
for i = 1:nbars
    x(i,:) = b(i).XEndPoints;
end
errorbar(x',X,err,'k','linestyle','none');%Adding the errorbars

xtips1 = b(1).XEndPoints;
ytips1 = b(1).YEndPoints;

xtips2 = b(2).XEndPoints;
ytips2 = b(2).YEndPoints;
labels1 = string(round(label_mean1,2));
labels2 = string(round(label_mean2,2));

labelsH = string(round(label_std1,2));
labelsC = string(round(label_std2,2));
% for i = 1:length(labels1)
%     labels1(i) = strcat(labels1(i)," ± ",labelsH(i));
%     labels2(i) = strcat(labels2(i)," ± ",labelsC(i));
% end

err1 = [std(tmp1H) std(tmp2H) std(tmp3H) std(tmp4H) std(tmp1C) std(tmp2C) std(tmp3C) std(tmp4C)];
ht = text(xtips1,ytips1+err1(1:4)+0.05,labels1,'HorizontalAlignment','left','FontSize',8,'FontWeight','bold','Color',[0 0.4470 0.7410]);
set(ht,'Rotation',90)
ht = text(xtips2,ytips2+err1(5:8)+0.05,labels2,'HorizontalAlignment','left','FontSize',8,'FontWeight','bold','Color',[0.8500 0.3250 0.0980]);
set(ht,'Rotation',90)
grid on
ylim([0 1.5])
set(gca,'FontWeight','bold','LineWidth',1.2,'FontSize',10);
xlabel('Features','FontWeight','bold','FontSize',13)
h3 = [ttest2(tmp1H,tmp1C) ttest2(tmp2H,tmp2C) ttest2(tmp3H,tmp3C) ttest2(tmp4H,tmp4C)];
[~,pDeep1] = ttest2(tmp2H,tmp2C);
[~,pDeep2] = ttest2(tmp3H,tmp3C);
%% Generate captions
figure,
scatter([0 1],[1 2],10,'g','filled')
hold on
scatter([0 1],[1 2],10,[0.4940 0.1840 0.5560],'s','filled')
plot([0 1],[1 2],'Color',"magenta",'LineWidth',1)
legend('Detected peaks','Dominant frequency','Change point','FontWeight','bold','FontSize',10,'Location','northwest')