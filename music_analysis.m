clc, clear all, close all
%% Set up the Import Options and import the data
opts = spreadsheetImportOptions("NumVariables", 888);

% Specify sheet and range
opts.Sheet = "Music";
opts.DataRange = "B8:AHE2400";

% Specify column names and types
opts.VariableNames = ["Normal1", "VarName3", "Normal2", "VarName5", "Hold", "VarName7", "Deep", "VarName9", "Piano", "VarName11", "Rock", "VarName13", "Normal3", "VarName15", "Normal4", "VarName17", "Hold1", "VarName19", "Deep1", "VarName21", "Piano1", "VarName23", "Rock1", "VarName25", "Normal5", "VarName27", "Normal6", "VarName29", "Hold2", "VarName31", "Deep2", "VarName33", "Piano2", "VarName35", "Rock2", "VarName37", "Normal7", "VarName39", "Normal8", "VarName41", "Hold3", "VarName43", "Deep3", "VarName45", "Piano3", "VarName47", "Rock3", "VarName49", "Normal9", "VarName51", "Normal10", "VarName53", "Hold4", "VarName55", "Deep4", "VarName57", "Piano4", "VarName59", "Rock4", "VarName61", "Normal11", "VarName63", "Normal12", "VarName65", "Hold5", "VarName67", "Deep5", "VarName69", "Piano5", "VarName71", "Rock5", "VarName73", "Normal13", "VarName75", "Normal14", "VarName77", "Hold6", "VarName79", "Deep6", "VarName81", "Piano6", "VarName83", "Rock6", "VarName85", "Normal15", "VarName87", "Normal16", "VarName89", "Hold7", "VarName91", "Deep7", "VarName93", "Piano7", "VarName95", "Rock7", "VarName97", "Normal17", "VarName99", "Normal18", "VarName101", "Hold8", "VarName103", "Deep8", "VarName105", "Piano8", "VarName107", "Rock8", "VarName109", "Normal19", "VarName111", "Normal20", "VarName113", "Hold9", "VarName115", "Deep9", "VarName117", "Piano9", "VarName119", "Rock9", "VarName121", "Normal21", "VarName123", "Normal22", "VarName125", "Hold10", "VarName127", "Deep10", "VarName129", "Piano10", "VarName131", "Rock10", "VarName133", "Normal23", "VarName135", "Normal24", "VarName137", "Hold11", "VarName139", "Deep11", "VarName141", "Piano11", "VarName143", "Rock11", "VarName145", "Normal25", "VarName147", "Normal26", "VarName149", "Hold12", "VarName151", "Deep12", "VarName153", "Piano12", "VarName155", "Rock12", "VarName157", "Normal27", "VarName159", "Normal28", "VarName161", "Hold13", "VarName163", "Deep13", "VarName165", "Piano13", "VarName167", "Rock13", "VarName169", "Normal29", "VarName171", "Normal30", "VarName173", "Hold14", "VarName175", "Deep14", "VarName177", "Piano14", "VarName179", "Rock14", "VarName181", "Normal31", "VarName183", "Normal32", "VarName185", "Hold15", "VarName187", "Deep15", "VarName189", "Piano15", "VarName191", "Rock15", "VarName193", "Normal33", "VarName195", "Normal34", "VarName197", "Hold16", "VarName199", "Deep16", "VarName201", "Piano16", "VarName203", "Rock16", "VarName205", "Normal35", "VarName207", "Normal36", "VarName209", "Hold17", "VarName211", "Deep17", "VarName213", "Piano17", "VarName215", "Rock17", "VarName217", "Normal37", "VarName219", "Normal38", "VarName221", "Hold18", "VarName223", "Deep18", "VarName225", "Piano18", "VarName227", "Rock18", "VarName229", "Normal39", "VarName231", "Normal40", "VarName233", "Hold19", "VarName235", "Deep19", "VarName237", "Piano19", "VarName239", "Rock19", "VarName241", "Normal41", "VarName243", "Normal42", "VarName245", "Hold20", "VarName247", "Deep20", "VarName249", "Piano20", "VarName251", "Rock20", "VarName253", "Normal43", "VarName255", "Normal44", "VarName257", "Hold21", "VarName259", "Deep21", "VarName261", "Piano21", "VarName263", "Rock21", "VarName265", "Normal45", "VarName267", "Normal46", "VarName269", "Hold22", "VarName271", "Deep22", "VarName273", "Piano22", "VarName275", "Rock22", "VarName277", "Normal47", "VarName279", "Normal48", "VarName281", "Hold23", "VarName283", "Deep23", "VarName285", "Piano23", "VarName287", "Rock23", "VarName289", "Normal49", "VarName291", "Normal50", "VarName293", "Hold24", "VarName295", "Deep24", "VarName297", "Piano24", "VarName299", "Rock24", "VarName301", "Normal51", "VarName303", "Normal52", "VarName305", "Hold25", "VarName307", "Deep25", "VarName309", "Piano25", "VarName311", "Rock25", "VarName313", "Normal53", "VarName315", "Normal54", "VarName317", "Hold26", "VarName319", "Deep26", "VarName321", "Piano26", "VarName323", "Rock26", "VarName325", "Normal55", "VarName327", "Normal56", "VarName329", "Hold27", "VarName331", "Deep27", "VarName333", "Piano27", "VarName335", "Rock27", "VarName337", "Normal57", "VarName339", "Normal58", "VarName341", "Hold28", "VarName343", "Deep28", "VarName345", "Piano28", "VarName347", "Rock28", "VarName349", "Normal59", "VarName351", "Normal60", "VarName353", "Hold29", "VarName355", "Deep29", "VarName357", "Piano29", "VarName359", "Rock29", "VarName361", "Normal61", "VarName363", "Normal62", "VarName365", "Hold30", "VarName367", "Deep30", "VarName369", "Piano30", "VarName371", "Rock30", "VarName373", "Norma32", "VarName375", "Normal63", "VarName377", "Hold31", "VarName379", "Deep31", "VarName381", "Piano31", "VarName383", "Rock31", "VarName385", "Normal64", "VarName387", "Normal65", "VarName389", "Hold32", "VarName391", "Deep32", "VarName393", "Piano32", "VarName395", "Rock32", "VarName397", "Normal66", "VarName399", "Normal67", "VarName401", "Hold33", "VarName403", "Deep33", "VarName405", "Piano33", "VarName407", "Rock33", "VarName409", "Normal68", "VarName411", "Normal69", "VarName413", "Hold34", "VarName415", "Deep34", "VarName417", "Piano34", "VarName419", "Rock34", "VarName421", "Normal70", "VarName423", "Normal71", "VarName425", "Hold35", "VarName427", "Deep35", "VarName429", "Piano35", "VarName431", "Rock35", "VarName433", "Normal72", "VarName435", "Normal73", "VarName437", "Hold36", "VarName439", "Deep36", "VarName441", "Piano36", "VarName443", "Rock36", "VarName445", "Normal74", "VarName447", "Normal75", "VarName449", "Hold37", "VarName451", "Deep37", "VarName453", "Piano37", "VarName455", "Rock37", "VarName457", "Normal76", "VarName459", "Normal77", "VarName461", "Hold38", "VarName463", "Deep38", "VarName465", "Piano38", "VarName467", "Rock38", "VarName469", "Normal78", "VarName471", "Normal79", "VarName473", "Hold39", "VarName475", "Deep39", "VarName477", "Piano39", "VarName479", "Rock39", "VarName481", "Normal80", "VarName483", "Normal81", "VarName485", "Hold40", "VarName487", "Deep40", "VarName489", "Piano40", "VarName491", "Rock40", "VarName493", "Norma1", "VarName495", "Normal82", "VarName497", "Hold41", "VarName499", "Deep41", "VarName501", "Piano41", "VarName503", "Rock41", "VarName505", "Normal83", "VarName507", "Normal84", "VarName509", "Hold42", "VarName511", "Deep42", "VarName513", "Piano42", "VarName515", "Rock42", "VarName517", "Normal85", "VarName519", "Normal86", "VarName521", "Hold43", "VarName523", "Deep43", "VarName525", "Piano43", "VarName527", "Rock43", "VarName529", "Normal87", "VarName531", "Normal88", "VarName533", "Hold44", "VarName535", "Deep44", "VarName537", "Piano44", "VarName539", "Rock44", "VarName541", "Normal89", "VarName543", "Normal90", "VarName545", "Hold45", "VarName547", "Deep45", "VarName549", "Piano45", "VarName551", "Rock45", "VarName553", "Normal91", "VarName555", "Normal92", "VarName557", "Hold46", "VarName559", "Deep46", "VarName561", "Piano46", "VarName563", "Rock46", "VarName565", "Normal93", "VarName567", "Normal94", "VarName569", "Hold47", "VarName571", "Deep47", "VarName573", "Piano47", "VarName575", "Rock47", "VarName577", "Normal95", "VarName579", "Normal96", "VarName581", "Hold48", "VarName583", "Deep48", "VarName585", "Piano48", "VarName587", "Rock48", "VarName589", "Normal97", "VarName591", "Normal98", "VarName593", "Hold49", "VarName595", "Deep49", "VarName597", "Piano49", "VarName599", "Rock49", "VarName601", "Normal99", "VarName603", "Normal100", "VarName605", "Hold50", "VarName607", "Deep50", "VarName609", "Piano50", "VarName611", "Rock50", "VarName613", "Normal101", "VarName615", "Normal102", "VarName617", "Hold51", "VarName619", "Deep51", "VarName621", "Piano51", "VarName623", "Rock51", "VarName625", "Normal103", "VarName627", "Normal104", "VarName629", "Hold52", "VarName631", "Deep52", "VarName633", "Piano52", "VarName635", "Rock52", "VarName637", "Normal105", "VarName639", "Normal106", "VarName641", "Hold53", "VarName643", "Deep53", "VarName645", "Piano53", "VarName647", "Rock53", "VarName649", "Normal107", "VarName651", "Normal108", "VarName653", "Hold54", "VarName655", "Deep54", "VarName657", "Piano54", "VarName659", "Rock54", "VarName661", "Normal109", "VarName663", "Normal110", "VarName665", "Hold55", "VarName667", "Deep55", "VarName669", "Piano55", "VarName671", "Rock55", "VarName673", "Normal111", "VarName675", "Normal112", "VarName677", "Hold56", "VarName679", "Deep56", "VarName681", "Piano56", "VarName683", "Rock56", "VarName685", "Normal113", "VarName687", "Normal114", "VarName689", "Hold57", "VarName691", "Deep57", "VarName693", "Piano57", "VarName695", "Rock57", "VarName697", "Normal115", "VarName699", "Normal116", "VarName701", "Hold58", "VarName703", "Deep58", "VarName705", "Piano58", "VarName707", "Rock58", "VarName709", "Normal117", "VarName711", "Normal118", "VarName713", "Hold59", "VarName715", "Deep59", "VarName717", "Piano59", "VarName719", "Rock59", "VarName721", "Normal119", "VarName723", "Normal120", "VarName725", "Hold60", "VarName727", "Deep60", "VarName729", "Piano60", "VarName731", "Rock60", "VarName733", "Norma2", "VarName735", "Normal121", "VarName737", "Hold61", "VarName739", "Deep61", "VarName741", "Piano61", "VarName743", "Rock61", "VarName745", "Normal122", "VarName747", "Normal123", "VarName749", "Hold62", "VarName751", "Deep62", "VarName753", "Piano62", "VarName755", "Rock62", "VarName757", "Normal124", "VarName759", "Normal125", "VarName761", "Hold63", "VarName763", "Deep63", "VarName765", "Piano63", "VarName767", "Rock63", "VarName769", "Normal126", "VarName771", "Normal127", "VarName773", "Hold64", "VarName775", "Deep64", "VarName777", "Piano64", "VarName779", "Rock64", "VarName781", "Normal128", "VarName783", "Normal129", "VarName785", "Hold65", "VarName787", "Deep65", "VarName789", "Piano65", "VarName791", "Rock65", "VarName793", "Normal130", "VarName795", "Normal131", "VarName797", "Hold66", "VarName799", "Deep66", "VarName801", "Piano66", "VarName803", "Rock66", "VarName805", "Normal132", "VarName807", "Normal133", "VarName809", "Hold67", "VarName811", "Deep67", "VarName813", "Piano67", "VarName815", "Rock67", "VarName817", "Normal134", "VarName819", "Normal135", "VarName821", "Hold68", "VarName823", "Deep68", "VarName825", "Piano68", "VarName827", "Rock68", "VarName829", "Normal136", "VarName831", "Normal137", "VarName833", "Hold69", "VarName835", "Deep69", "VarName837", "Piano69", "VarName839", "Rock69", "VarName841", "Normal138", "VarName843", "Normal139", "VarName845", "Hold70", "VarName847", "Deep70", "VarName849", "Piano70", "VarName851", "Rock70", "VarName853", "Norma3", "VarName855", "Normal140", "VarName857", "Hold71", "VarName859", "Deep71", "VarName861", "Piano71", "VarName863", "Rock71", "VarName865", "Normal141", "VarName867", "Normal142", "VarName869", "Hold72", "VarName871", "Deep72", "VarName873", "Piano72", "VarName875", "Rock72", "VarName877", "Normal143", "VarName879", "Normal144", "VarName881", "Hold73", "VarName883", "Deep73", "VarName885", "Piano73", "VarName887", "Rock73", "VarName889"];
opts.VariableTypes = ["double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double"];

% Import the data
resdata = readtable("R:\Research\Res_sensor_paper\res_data.xlsx", opts, "UseExcel", false);

% Import the data
res_data = table2array(resdata);
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
opts = setvaropts(opts, "ID", "WhitespaceRule", "preserve");
opts = setvaropts(opts, ["ID", "Gender"], "EmptyFieldRule", "auto");

% Import the data
demo = readtable("R:\Research\Res_sensor_paper\Project 3 Music\demographic.xlsx", opts, "UseExcel", false);
% Clear temporary variables
clear opts
% Compute BMI
for i = 1:height(demo)
    demo.BMI(i) = demo.Weightkg(i)/(0.01*demo.Heightcm(i))^2;
end
%% Extract 3 minutes of each episode for healthy patients
Fs = 1/0.14; % Sampling frequency 
for i = 1:size(res_data,2)
    tmp = res_data(:,i);
    tmp(find(isnan(tmp) == 1)) = [];
    if ~isempty(tmp)
        [b,a]=butter(5,[0.01 0.4]/(Fs/2),'bandpass');
        tmp = filtfilt(b,a,tmp);
        tmp = (tmp - mean(tmp))/std(tmp);
    end
    if mod(i,12) == 2 % Normal breath 1
        tmp1 = res_data(:,i-1);
        tmp1(find(isnan(tmp1) == 1)) = [];
        H_patients(ceil(i/12)).Norm1 = tmp;
        H_patients(ceil(i/12)).tN1 = tmp1;
    end
    
    if mod(i,12) == 4 % Normal breath 2
        tmp1 = res_data(:,i-1);
        tmp1(find(isnan(tmp1) == 1)) = [];
        H_patients(ceil(i/12)).Norm2 = tmp;
        H_patients(ceil(i/12)).tN2 = tmp1;
    end
    
    if mod(i,12) == 10 % Piano
        tmp1 = res_data(:,i-1);
        tmp1(find(isnan(tmp1) == 1)) = [];
        H_patients(ceil(i/12)).Piano = tmp;
        H_patients(ceil(i/12)).tP = tmp1;
    end
    
    if mod(i,12) == 0 % Rock
        tmp1 = res_data(:,i-1);
        tmp1(find(isnan(tmp1) == 1)) = [];
        H_patients(ceil(i/12)).Rock = tmp;
        H_patients(ceil(i/12)).tR = tmp1;
    end
end
%% Detect peaks for healthy patients
% peak detection for healthy patients
Flux_mean_holdH = [];
Flux_std_holdH = [];

Flux_mean_P = [];
Flux_mean_R = [];
Flux_std_P = [];
Flux_std_R = [];

for ID = 1:length(H_patients) 
    if ~isempty(H_patients(ID).Norm1)
        if ~isnan(H_patients(ID).Norm1(1))
            Flux_mean_holdH(end+1) = mean(H_patients(ID).Norm1);
            Flux_std_holdH(end+1) = std(H_patients(ID).Norm1);
        end
    end
    
    if ~isempty(H_patients(ID).Norm2)
        if ~isnan(H_patients(ID).Norm2(1))
            Flux_mean_holdH(end+1) = mean(H_patients(ID).Norm2);
            Flux_std_holdH(end+1) = std(H_patients(ID).Norm2);
        end
    end
    
    if ~isempty(H_patients(ID).Piano)
        if ~isnan(H_patients(ID).Piano(1))
            Flux_mean_P(end+1) = mean(H_patients(ID).Piano);
            Flux_std_P(end+1) = std(H_patients(ID).Piano);
        end
    end
    
    if ~isempty(H_patients(ID).Rock)
        if ~isnan(H_patients(ID).Rock(1))
            Flux_mean_R(end+1) = mean(H_patients(ID).Rock);
            Flux_std_R(end+1) = std(H_patients(ID).Rock);
        end
    end
end
%% Extract features
N_eps = floor(Fs*300); % 30s epoch
T = 1/Fs;             % Sampling period  
thresh = 0.12; % threshold
sumP_holdH = [];
medfreq_holdH = [];
peak2peak_H = [];
peak2rms_H = [];
rssq_H = [];
rqa_statH = [];
normBW = [0.15 0.35];
holdBW = [0.15 0.35];

sumP_P = [];
medfreq_P = [];
peak2peak_P = [];
peak2rms_P = [];
rssq_P = [];
rqa_statP = [];

sumP_R = [];
medfreq_R = [];
peak2peak_R = [];
peak2rms_R = [];
rssq_R = [];
rqa_statR = [];

ID_H = [];
ID_P = [];
ID_R = [];
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
            rssq_H(end+1) = rssq(X);
            ID_H(end+1) = i;
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
            rssq_H(end+1) = rssq(X);
            ID_H(end+1) = i;
            % RQA statistics - [recrate DET LMAX ENT TND LAM TT]
            y = phasespace(X,3,8);
            recurdata = cerecurr_y(y);
            recurrpt = tdrecurr_y(recurdata,thr);
            rqa_statH(end+1,:) = recurrqa_y(recurrpt);
        end
    end
    
    signal = H_patients(i).Piano;
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
            sumP_P(end+1) = sum(P1(find(f >= holdBW(1) | f <= holdBW(2))));
            medfreq_P(end+1) = medfreq(X,Fs);
            peak2peak_P(end+1) = peak2peak(X);
            rssq_P(end+1) = rssq(X);
            ID_P(end+1) = i;
            % RQA statistics - [recrate DET LMAX ENT TND LAM TT]
            y = phasespace(X,3,8);
            recurdata = cerecurr_y(y);
            recurrpt = tdrecurr_y(recurdata,thr);
            rqa_statP(end+1,:) = recurrqa_y(recurrpt);
        end
    end
    
    signal = H_patients(i).Rock;
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
        sumP_R(end+1) = sum(P1(find(f >= holdBW(1) | f <= holdBW(2))));
        medfreq_R(end+1) = medfreq(X,Fs);
        peak2peak_R(end+1) = peak2peak(X);
        rssq_R(end+1) = rssq(X);
        ID_R(end+1) = i;
        % RQA statistics - [recrate DET LMAX ENT TND LAM TT]
        y = phasespace(X,3,8);
        recurdata = cerecurr_y(y);
        recurrpt = tdrecurr_y(recurdata,thr);
        rqa_statR(end+1,:) = recurrqa_y(recurrpt);
    end
end
%% Peak analysis
peak_stat_H = [];
peak_stat_P = [];
peak_stat_R = [];
for i = 1:length(H_patients)
    % Normal breathing 1
    if ~isempty(H_patients(i).Norm1)
        if ~isnan(H_patients(i).Norm1(1))
            [~,locs,~,p] = findpeaks(H_patients(i).Norm1,H_patients(i).tN1);
            peak_stat_H(i,1) = mean(1./diff(locs));
            peak_stat_H(i,2) = std(1./diff(locs));

            peak_stat_H(i,3) = mean(p);
            peak_stat_H(i,4) = std(p);
        end
    end
    
    % Normal breathing 2
    if ~isempty(H_patients(i).Norm2)
        if ~isnan(H_patients(i).Norm2(1))
            [~,locs,~,p] = findpeaks(H_patients(i).Norm2,H_patients(i).tN2);
            peak_stat_H(i,5) = mean(1./diff(locs));
            peak_stat_H(i,6) = std(1./diff(locs));

            peak_stat_H(i,7) = mean(p);
            peak_stat_H(i,8) = std(p);
        end
    end
    
    % Piano
    if ~isempty(H_patients(i).Piano)
        if ~isnan(H_patients(i).Piano(1))
            [~,locs,~,p] = findpeaks(H_patients(i).Piano,H_patients(i).tP);
            peak_stat_P(i,1) = mean(1./diff(locs));
            peak_stat_P(i,2) = std(1./diff(locs));

            peak_stat_P(i,3) = mean(p);
            peak_stat_P(i,4) = std(p);
        end
    end
    
    % Rock
    if ~isempty(H_patients(i).Rock)
        if ~isnan(H_patients(i).Rock(1))
            [~,locs,~,p] = findpeaks(H_patients(i).Rock,H_patients(i).tR);
            peak_stat_R(i,1) = mean(1./diff(locs));
            peak_stat_R(i,2) = std(1./diff(locs));

            peak_stat_R(i,3) = mean(p);
            peak_stat_R(i,4) = std(p);
        end
    end
end
%% Prepare data for machine learning models
Flux_mean_holdH(find(Flux_mean_holdH==0)) = [];
Flux_std_holdH(find(Flux_std_holdH==0)) = [];

Flux_mean_P(find(Flux_mean_P==0)) = [];
Flux_std_P(find(Flux_std_P==0)) = [];
Flux_mean_R(find(Flux_mean_R==0)) = [];
Flux_std_R(find(Flux_std_R==0)) = [];

peak_statH_total = [peak_stat_H(find(peak_stat_H(:,1)~=0),1:4); peak_stat_H(find(peak_stat_H(:,5)~=0),5:8)];
peak_stat_P = [peak_stat_P(find(peak_stat_P(:,1)~=0),1:4)];
peak_stat_R = [peak_stat_R(find(peak_stat_R(:,1)~=0),1:4)];

X_H = [peak_statH_total...
    sumP_holdH' Flux_mean_holdH' Flux_std_holdH'...
    medfreq_holdH' peak2peak_H' rssq_H' rqa_statH...
    demo.Age(ID_H) demo.Gender(ID_H) == 'M' demo.BMI(ID_H)];
X_P = [peak_stat_P sumP_P' Flux_mean_P' Flux_std_P'...
    medfreq_P' peak2peak_P' rssq_P' rqa_statP ...
    demo.Age(ID_P) demo.Gender(ID_P) == 'M' demo.BMI(ID_P)];

X_R = [peak_stat_R sumP_R' Flux_mean_R' Flux_std_R'...
    medfreq_R' peak2peak_R' rssq_R' rqa_statR demo.Age(ID_R) ...
    demo.Gender(ID_R) == 'M' demo.BMI(ID_R)];

% feas = [1:4 6:9 11:19];
feas = 17:19;
X = [X_H; X_P; X_R];
X1 = [X_H(:,feas); X_P(:,feas); X_R(:,feas)];
Y = [zeros(length(X_H),1); ones(length(X_P),1); 2*ones(length(X_R),1)];
data_frame = [X1 Y X(:,5)];
%% Plot histogram of KS-stat
% ks2stat = zeros(1,size(X_H,2));
% for i = 1:length(ks2stat)
%     [~,~,ks2stat(i)] = kstest2(X_H(:,i),X_R(:,i));
% end
% cat = categorical({'RRmean','RRstd','Peak prominence mean','Peak prominence std','Power',...
%     'Flux mean','Flux std','Medfreq','peak2peak','rssq'...
%     'DET', 'LMAX', 'ENT' ,'TND', 'LAM', 'TT'});
% figure,
% bar(cat,ks2stat)
% xlabel('Features')
% ylabel('KS statistic')
%% Plot histogram of KS-stat by metadata
% ks2stat = zeros(1,size(X_H,2));
% tmp1 = ID_P;
% tmp2 = ID_P;
% for i = 1:length(ks2stat)
%     [~,~,ks2stat(i)] = kstest2(X_P(find(demo.BMI(tmp1)<=22),i),X_P(find(demo.BMI(tmp2)>22),i));
% end
% cat = categorical({'RRmean','RRstd','Peak prominence mean','Peak prominence std','Power',...
%     'Flux mean','Flux std','Medfreq','peak2peak','rssq'...
%     'DET', 'LMAX', 'ENT' ,'TND', 'LAM', 'TT'});
% figure,
% bar(cat,ks2stat)
% xlabel('Features')
% ylabel('KS statistic')