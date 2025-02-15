clc, clear all, close all
%% Plot normal breathing
% load data
load('R:\Research\Res_sensor_paper\Code\FIGURE_code\normal_data1.mat')
% perform ks_test for peak analysis features
outliner_idx = [1 2 14 19 21 23 37 41];
selected_idx = setdiff(1:size(peak_statH,1),outliner_idx);
X1 = peak_statH(selected_idx,:);
X2 = peak_statC;
ks2stat1 = zeros(1,size(X1,2));
for i = 1:length(ks2stat1)
    [~,~,ks2stat1(i)] = kstest2(X1(:,i),X2(:,i));
end
n_feas = 3;
[sorted_ks1,idx1] = sort(ks2stat1,'descend');
cat1 = {'RR mean','RR std','Prom mean','Prom std','Width mean','Width std'};
cat1 = cat1(idx1(1:n_feas));
% perform ks_test for time-domain features
X1 = TfeaH(selected_idx,:);
X2 = TfeaC;
ks2stat2 = zeros(1,size(X1,2));
for i = 1:length(ks2stat2)
    [~,~,ks2stat2(i)] = kstest2(X1(:,i),X2(:,i));
end
[sorted_ks2,idx2] = sort(ks2stat2,'descend');
cat2 = {'Flux mean', 'Flux std','Peak2peak','RSSQ'};
cat2 = cat2(idx2(1:n_feas));
% perform ks_test for frequency-domain features
X1 = FfeaH(selected_idx,:);
X2 = FfeaC;
ks2stat3 = zeros(1,size(X1,2));
for i = 1:length(ks2stat3)
    [~,~,ks2stat3(i)] = kstest2(X1(:,i),X2(:,i));
end
[sorted_ks3,idx3] = sort(ks2stat3,'descend');
cat3 = {'Band power','PSD mean','NPSD','Mean freq','Dominant freq'};
cat3 = cat3(idx3(1:n_feas));
% perform ks_test for RQA features
X1 = RQA_statH(selected_idx,:);
X2 = RQA_statC;
ks2stat4 = zeros(1,size(X1,2));
for i = 1:length(ks2stat4)
    [~,~,ks2stat4(i)] = kstest2(X1(:,i),X2(:,i));
end
[sorted_ks4,idx4] = sort(ks2stat4,'descend');
cat4 = {'DET', 'LMAX', 'ENT' ,'TND', 'LAM', 'TT'};
cat4 = cat4(idx4(1:n_feas));
cat = categorical([cat1,cat2,cat3,cat4]);
cat = reordercats(cat,[cat1,cat2,cat3,cat4]);
figure('Position',[680,50,971,946])
subplot(3,3,1)
b = bar(cat,[sorted_ks1(1:n_feas) sorted_ks2(1:n_feas) sorted_ks3(1:n_feas) sorted_ks4(1:n_feas)]);

b.FaceColor = 'flat';
b.CData(n_feas+1:2*n_feas,:) = [[0.8500 0.3250 0.0980]; [0.8500 0.3250 0.0980]; [0.8500 0.3250 0.0980]];
b.CData(2*n_feas+1:3*n_feas,:) = [[0.9290 0.6940 0.1250]; [0.9290 0.6940 0.1250]; [0.9290 0.6940 0.1250]];
b.CData(3*n_feas+1:4*n_feas,:) = [[0.4940 0.1840 0.5560]; [0.4940 0.1840 0.5560]; [0.4940 0.1840 0.5560]];

xtips1 = b(1).XEndPoints;
ytips1 = b(1).YEndPoints;
labels1 = string(round(b(1).YData,2));
ht = text(xtips1(1:3),ytips1(1:3)+0.02,labels1(1:3),'HorizontalAlignment','left','FontSize',8,'Color',[0 0.4470 0.7410],'FontWeight','b');
set(ht,'Rotation',90)
ht = text(xtips1(4:6),ytips1(4:6)+0.02,labels1(4:6),'HorizontalAlignment','left','FontSize',8,'Color',[0.8500 0.3250 0.0980],'FontWeight','b');
set(ht,'Rotation',90)
ht = text(xtips1(7:9),ytips1(7:9)+0.02,labels1(7:9),'HorizontalAlignment','left','FontSize',8,'Color',[0.9290 0.6940 0.1250],'FontWeight','b');
set(ht,'Rotation',90)
ht = text(xtips1(10:12),ytips1(10:12)+0.02,labels1(10:12),'HorizontalAlignment','left','FontSize',8,'Color',[0.4940 0.1840 0.5560],'FontWeight','b');
set(ht,'Rotation',90)

hold on
ylim([0 1])
xlabel('Features');
ylabel('KS statistic');
set(gca,'FontWeight','bold','LineWidth',1.2,'FontSize',10);
% title('Normal breath','FontSize',14,'FontWeight','bold');
% subtitle('(a)','FontSize',12,'FontWeight','bold')
grid on

% Next subplot
X_H = [peak_statH TfeaH FfeaH RQA_statH];
X_C = [peak_statC TfeaC FfeaC RQA_statC];
X_H = X_H(selected_idx,:);
X = [X_H; X_C];
Y = [zeros(size(X_H,1),1); ones(size(X_C,1),1)];
ks2stat = zeros(1,size(X_H,2));
for i = 1:length(ks2stat)
    [h(i),~,ks2stat(i)] = kstest2(X_H(:,i),X_C(:,i));
end
subplot(3,3,4)
rng('default') % for reproducibility
[sorted_ks,idx] = sort(ks2stat,'descend');
selected_feas = idx;
emb_space = tsne(X(:,selected_feas(1:4)),'NumDimensions',3);
X1 = X(:,selected_feas(1:3));
TL = [];
for i = 1:length(Y)
    if Y(i)
        TL = [TL "Healthy"];
    else
        TL = [TL "COVID-19"];
    end
end

responseData = categorical(TL);
scatter3(emb_space(1:size(X_H,1),1),emb_space(1:size(X_H,1),2),emb_space(1:size(X_H,1),3),20,'b','filled','MarkerEdgeColor','k','LineWidth',0.5)
hold on
scatter3(emb_space(size(X_H,1)+1:end,1),emb_space(size(X_H,1)+1:end,2),emb_space(size(X_H,1)+1:end,3),20,'r','filled','MarkerEdgeColor','k','LineWidth',0.5)
% outliner = [71 73 75 77];
% scatter3(emb_space(outliner,1),emb_space(outliner,2),emb_space(outliner,3),4,'g','filled')
grid on
xlabel('x_1'),ylabel('x_2'),zlabel('x_3')
set(gca,'FontWeight','bold','LineWidth',1.2,'FontSize',10);
% title('(d)','FontSize',12,'FontWeight','bold')
legend('Healthy','COVID-19','Location','Northeast')
view(2.200538983722136e+02,22.051847470939503)

% Next subplot
subplot(3,3,7)
% title('(g)','FontSize',12,'FontWeight','bold')
% axis off
% % Convert input to table
% % Plot confusion matrix
% PD = 0.8;
% N = size(X,1);
% idx = randperm(N);
% Ptrain = X1(idx(1:round(N*PD)),:);
% Ptest = X1(idx(round(N*PD)+1:end),:);
% 
% Y1 = Y(idx(1:round(N*PD)),:);
% trainingData = Ptrain;
% TLtrain = [];
% for i = 1:length(Y1)
%     if Y1(i)
%         TLtrain = [TLtrain "Healthy"];
%     else
%         TLtrain = [TLtrain "COVID-19"];
%     end
% end
% 
% responseData = categorical(TLtrain);
% inputTable = array2table(trainingData, 'VariableNames', {'column_1', 'column_2', 'column_3'});
% 
% predictorNames = {'column_1', 'column_2', 'column_3'};
% predictors = inputTable(:, predictorNames);
% response = TLtrain;
% classNames = {'Healthy','COVID-19'};
% 
% % Train a classifier
% % This code specifies all the classifier options and trains the classifier.
% classificationSVM = fitcsvm(...
%     predictors, ...
%     response, ...
%     'KernelFunction', 'gaussian', ...
%     'PolynomialOrder', [], ...
%     'KernelScale', 0.43, ...
%     'BoxConstraint', 1, ...
%     'Standardize', true, ...
%     'ClassNames', classNames);
% 
% % Create the result struct with predict function
% predictorExtractionFcn = @(x) array2table(x, 'VariableNames', predictorNames);
% svmPredictFcn = @(x) predict(classificationSVM, x);
% trainedClassifier.predictFcn = @(x) svmPredictFcn(predictorExtractionFcn(x));
% 
% % Add additional fields to the result struct
% trainedClassifier.ClassificationSVM = classificationSVM;
% trainedClassifier.About = 'This struct is a trained model exported from Classification Learner R2023a.';
% trainedClassifier.HowToPredict = sprintf('To make predictions on a new predictor column matrix, X, use: \n  [yfit,scores] = c.predictFcn(X) \nreplacing ''c'' with the name of the variable that is this struct, e.g. ''trainedModel''. \n \nX must contain exactly 3 columns because this model was trained using 3 predictors. \nX must contain only predictor columns in exactly the same order and format as your training \ndata. Do not include the response column or any columns you did not import into the app. \n \nFor more information, see <a href="matlab:helpview(fullfile(docroot, ''stats'', ''stats.map''), ''appclassification_exportmodeltoworkspace'')">How to predict using an exported model</a>.');
% 
% % Extract predictors and response
% % This code processes the data into the right shape for training the
% % model.
% % Convert input to table
% inputTable = array2table(trainingData, 'VariableNames', {'column_1', 'column_2', 'column_3'});
% 
% predictorNames = {'column_1', 'column_2', 'column_3'};
% predictors = inputTable(:, predictorNames);
% response = responseData;
% isCategoricalPredictor = [false, false, false];
% classNames = [0; 1];
% predicted_labels = trainedClassifier.predictFcn(Ptest);
% Ytest = Y(idx(round(N*PD)+1:end),:);
% TLtest = [];
% for i = 1:length(Ytest)
%     if Y1(i)
%         TLtest = [TLtest "Healthy"];
%     else
%         TLtest = [TLtest "COVID-19"];
%     end
% end
% 
% PL = [];
% for i = 1:length(predicted_labels)
%     if strcmp(predicted_labels{i,1},'Healthy')
%         PL = [PL "Healthy"];
%     else
%         PL = [PL "COVID-19"];
%     end
% end
% TLtest = categorical(TLtest);
% PL = categorical(PL);
% cf = plotconfusion(TLtest',PL');
%% Plot holding breath
% load data
load('R:\Research\Res_sensor_paper\Code\FIGURE_code\hold_data1.mat')
% perform ks_test for peak analysis features
outliner_idx = [1 2 7 14 19 21 23 25 37 40 41];
selected_idx = setdiff(1:size(peak_statH,1),outliner_idx);
X1 = peak_statH(selected_idx,:);
X2 = peak_statC;
ks2stat1 = zeros(1,size(X1,2));
for i = 1:length(ks2stat1)
    [~,~,ks2stat1(i)] = kstest2(X1(:,i),X2(:,i));
end
n_feas = 3;
[sorted_ks1,idx1] = sort(ks2stat1,'descend');
cat1 = {'RRAF mean','RRAF std','PromAF mean','PromAF std','WidthAF mean','WidthAF std',...
      'RR30 mean','RR30 std','Prom30 mean','Prom30 std','Width30 mean','Width30 std'};
cat1 = cat1(idx1(1:n_feas));
% perform ks_test for time-domain features
X1 = TfeaH(selected_idx,:);
X2 = TfeaC;
ks2stat2 = zeros(1,size(X1,2));
for i = 1:length(ks2stat2)
    [~,~,ks2stat2(i)] = kstest2(X1(:,i),X2(:,i));
end
[sorted_ks2,idx2] = sort(ks2stat2,'descend');
cat2 = {'FluxAF mean','FluxAF std','peak2peakAF','RSSQAF',...
      'Flux30 mean','Flux30 std','Peak2peak30','RSSQ30',...
      'FluxBF mean','FluxBF std','Peak2peakBF','RSSQBF'};
cat2 = cat2(idx2(1:n_feas));
% perform ks_test for frequency-domain features
X1 = FfeaH(selected_idx,:);
X2 = FfeaC;
ks2stat3 = zeros(1,size(X1,2));
for i = 1:length(ks2stat3)
    [~,~,ks2stat3(i)] = kstest2(X1(:,i),X2(:,i));
end
[sorted_ks3,idx3] = sort(ks2stat3,'descend');
cat3 = {'Band powerBF','PSD meanBF','NPSDBF','Mean freqBF','Dominant freqBF',...
    'Band powerAF','PSD meanAF','NPSDAF','Mean freqAF','Dominant freqAF',...
    'Band power30','PSD30 mean','NPSD30','Mean freq30','Dominant freq30',...
    'Band powerAll','PSDAll mean','NPSDAll','Mean freqAll','Dominant freqAll'};
cat3 = cat3(idx3(1:n_feas));
% perform ks_test for RQA features
X1 = RQA_statH(selected_idx,1:6);
X2 = RQA_statC(:,1:6);
ks2stat4 = zeros(1,size(X1,2));
for i = 1:length(ks2stat4)
    [~,~,ks2stat4(i)] = kstest2(X1(:,i),X2(:,i));
end
[sorted_ks4,idx4] = sort(ks2stat4,'descend');
cat4 = {'DET', 'LMAX', 'ENT' ,'TND', 'LAM', 'TT'};
cat4 = cat4(idx4(1:n_feas));
cat = categorical([cat1,cat2,cat3,cat4]);
cat = reordercats(cat,[cat1,cat2,cat3,cat4]);
subplot(3,3,2)
b = bar(cat,[sorted_ks1(1:n_feas) sorted_ks2(1:n_feas) sorted_ks3(1:n_feas) sorted_ks4(1:n_feas)]);

b.FaceColor = 'flat';
b.CData(n_feas+1:2*n_feas,:) = [[0.8500 0.3250 0.0980]; [0.8500 0.3250 0.0980]; [0.8500 0.3250 0.0980]];
b.CData(2*n_feas+1:3*n_feas,:) = [[0.9290 0.6940 0.1250]; [0.9290 0.6940 0.1250]; [0.9290 0.6940 0.1250]];
b.CData(3*n_feas+1:4*n_feas,:) = [[0.4940 0.1840 0.5560]; [0.4940 0.1840 0.5560]; [0.4940 0.1840 0.5560]];

xtips1 = b(1).XEndPoints;
ytips1 = b(1).YEndPoints;
labels1 = string(round(b(1).YData,2));
ht = text(xtips1(1:3),ytips1(1:3)+0.02,labels1(1:3),'HorizontalAlignment','left','FontSize',8,'Color',[0 0.4470 0.7410],'FontWeight','b');
set(ht,'Rotation',90)
ht = text(xtips1(4:6),ytips1(4:6)+0.02,labels1(4:6),'HorizontalAlignment','left','FontSize',8,'Color',[0.8500 0.3250 0.0980],'FontWeight','b');
set(ht,'Rotation',90)
ht = text(xtips1(7:9),ytips1(7:9)+0.02,labels1(7:9),'HorizontalAlignment','left','FontSize',8,'Color',[0.9290 0.6940 0.1250],'FontWeight','b');
set(ht,'Rotation',90)
ht = text(xtips1(10:12),ytips1(10:12)+0.02,labels1(10:12),'HorizontalAlignment','left','FontSize',8,'Color',[0.4940 0.1840 0.5560],'FontWeight','b');
set(ht,'Rotation',90)

hold on
xlabel('Features');
% ylabel('KS statistic');
set(gca,'FontWeight','bold','LineWidth',1.2,'FontSize',10);
% title('Holding breath','FontSize',14,'FontWeight','bold');
% subtitle('(b)','FontSize',12,'FontWeight','bold')
grid on
ylim([0 1])

% Next subplot
X_H = [peak_statH TfeaH FfeaH RQA_statH];
X_H = X_H(selected_idx,:);
X_C = [peak_statC TfeaC FfeaC RQA_statC];
X = [X_H; X_C];
Y = [zeros(size(X_H,1),1); ones(size(X_C,1),1)];
ks2stat = zeros(1,size(X_H,2));
for i = 1:length(ks2stat)
    [~,~,ks2stat(i)] = kstest2(X_H(:,i),X_C(:,i));
end
[sorted_ks,idx] = sort(ks2stat,'descend');
subplot(3,3,5)
rng('default') % for reproducibility
selected_feas = idx;
X1 = X(:,selected_feas(1:6));
emb_space = tsne(X(:,selected_feas(1:5)),'NumDimensions',3);
scatter3(emb_space(1:size(X_H,1),1),emb_space(1:size(X_H,1),2),emb_space(1:size(X_H,1),3),20,'b','filled','MarkerEdgeColor','k','LineWidth',0.5)
hold on
scatter3(emb_space(size(X_H,1)+1:end,1),emb_space(size(X_H,1)+1:end,2),emb_space(size(X_H,1)+1:end,3),20,'r','filled','MarkerEdgeColor','k','LineWidth',0.5)
% scatter3(emb_space(outliner,1),emb_space(outliner,2),emb_space(outliner,3),4,'g','filled')
grid on
xlabel('x_1'),ylabel('x_2')
set(gca,'FontWeight','bold','LineWidth',1.2,'FontSize',10);
% title('(e)','FontSize',12,'FontWeight','bold')
view(-47.2476,17.8941)

subplot(3,3,8)
% title('(h)','FontSize',12,'FontWeight','bold')
% axis off
%% Plot deep breath
% load data
load('R:\Research\Res_sensor_paper\Code\FIGURE_code\deep_data.mat')
% perform ks_test for peak analysis features
X1 = peak_statH;
X2 = peak_statC;
ks2stat1 = zeros(1,size(X1,2));
for i = 1:length(ks2stat1)
    [~,~,ks2stat1(i)] = kstest2(X1(:,i),X2(:,i));
end
n_feas = 3;
[sorted_ks1,idx1] = sort(ks2stat1,'descend');
cat1 = {'RRAF mean','RRAF std','PromAF mean','PromAF std','WidthAF mean','WidthAF std',...
      'RR30 mean','RR30 std','Prom30 mean','Prom30 std','Width30 mean','Width30 std'};
cat1 = cat1(idx1(1:n_feas));
% perform ks_test for time-domain features
X1 = TfeaH;
X2 = TfeaC;
ks2stat2 = zeros(1,size(X1,2));
for i = 1:length(ks2stat2)
    [~,~,ks2stat2(i)] = kstest2(X1(:,i),X2(:,i));
end
[sorted_ks2,idx2] = sort(ks2stat2,'descend');
cat2 = {'FluxAF mean','FluxAF std','peak2peakAF','RSSQAF',...
      'Flux30 mean','Flux30 std','Peak2peak30','RSSQ30',...
      'FluxBF mean','FluxBF std','Peak2peakBF','RSSQBF'};
cat2 = cat2(idx2(1:n_feas));
% perform ks_test for frequency-domain features
X1 = FfeaH;
X2 = FfeaC;
ks2stat3 = zeros(1,size(X1,2));
for i = 1:length(ks2stat3)
    [~,~,ks2stat3(i)] = kstest2(X1(:,i),X2(:,i));
end
[sorted_ks3,idx3] = sort(ks2stat3,'descend');
cat3 = {'Band powerBF','PSD meanBF','NPSDBF','Mean freqBF','Dominant freqBF',...
    'Band powerAF','PSD meanAF','NPSDAF','Mean freqAF','Dominant freqAF',...
    'Band power30','PSD30 mean','NPSD30','Mean freq30','Dominant freq30',...
    'Band powerAll','PSDAll mean','NPSDAll','Mean freqAll','Dominant freqAll'};
cat3 = cat3(idx3(1:n_feas));
% perform ks_test for RQA features
X1 = RQA_statH(:,1:6);
X2 = RQA_statC(:,1:6);
ks2stat4 = zeros(1,size(X1,2));
for i = 1:length(ks2stat4)
    [~,~,ks2stat4(i)] = kstest2(X1(:,i),X2(:,i));
end
[sorted_ks4,idx4] = sort(ks2stat4,'descend');
cat4 = {'DET', 'LMAX', 'ENT' ,'TND', 'LAM', 'TT'};
cat4 = cat4(idx4(1:n_feas));
cat = categorical([cat1,cat2,cat3,cat4]);
cat = reordercats(cat,[cat1,cat2,cat3,cat4]);
subplot(3,3,3)
b = bar(cat,[sorted_ks1(1:n_feas) sorted_ks2(1:n_feas) sorted_ks3(1:n_feas) sorted_ks4(1:n_feas)]);

b.FaceColor = 'flat';
b.CData(n_feas+1:2*n_feas,:) = [[0.8500 0.3250 0.0980]; [0.8500 0.3250 0.0980]; [0.8500 0.3250 0.0980]];
b.CData(2*n_feas+1:3*n_feas,:) = [[0.9290 0.6940 0.1250]; [0.9290 0.6940 0.1250]; [0.9290 0.6940 0.1250]];
b.CData(3*n_feas+1:4*n_feas,:) = [[0.4940 0.1840 0.5560]; [0.4940 0.1840 0.5560]; [0.4940 0.1840 0.5560]];

xtips1 = b(1).XEndPoints;
ytips1 = b(1).YEndPoints;
labels1 = string(round(b(1).YData,2));
ht = text(xtips1(1:3),ytips1(1:3)+0.02,labels1(1:3),'HorizontalAlignment','left','FontSize',8,'Color',[0 0.4470 0.7410],'FontWeight','b');
set(ht,'Rotation',90)
ht = text(xtips1(4:6),ytips1(4:6)+0.02,labels1(4:6),'HorizontalAlignment','left','FontSize',8,'Color',[0.8500 0.3250 0.0980],'FontWeight','b');
set(ht,'Rotation',90)
ht = text(xtips1(7:9),ytips1(7:9)+0.02,labels1(7:9),'HorizontalAlignment','left','FontSize',8,'Color',[0.9290 0.6940 0.1250],'FontWeight','b');
set(ht,'Rotation',90)
ht = text(xtips1(10:12),ytips1(10:12)+0.02,labels1(10:12),'HorizontalAlignment','left','FontSize',8,'Color',[0.4940 0.1840 0.5560],'FontWeight','b');
set(ht,'Rotation',90)
hold on
xlabel('Features');
% ylabel('KS statistic');
set(gca,'FontWeight','bold','LineWidth',1.2,'FontSize',10);
% title('Deep breath','FontSize',14,'FontWeight','bold');
% subtitle('(c)','FontSize',12,'FontWeight','bold')
grid on
ylim([0 1])

% Next subplot
X_H = [peak_statH TfeaH FfeaH RQA_statH];
X_C = [peak_statC TfeaC FfeaC RQA_statC];
X = [X_H; X_C];
Y = [zeros(size(X_H,1),1); ones(size(X_C,1),1)];
ks2stat = zeros(1,size(X_H,2));
for i = 1:length(ks2stat)
    [~,~,ks2stat(i)] = kstest2(X_H(:,i),X_C(:,i));
end
[sorted_ks,idx] = sort(ks2stat,'descend');
subplot(3,3,6)
rng('default') % for reproducibility
selected_feas = idx;
X1 = X(:,selected_feas(1:6));
emb_space = tsne(X(:,selected_feas(1:5)),'NumDimensions',3);
scatter3(emb_space(1:size(X_H,1),1),emb_space(1:size(X_H,1),2),emb_space(1:size(X_H,1),3),20,'b','filled','MarkerEdgeColor','k','LineWidth',0.5)
hold on
scatter3(emb_space(size(X_H,1)+1:end,1),emb_space(size(X_H,1)+1:end,2),emb_space(size(X_H,1)+1:end,3),20,'r','filled','MarkerEdgeColor','k','LineWidth',0.5)
outliner = [9 36 41];
% scatter3(emb_space(outliner,1),emb_space(outliner,2),emb_space(outliner,3),4,'g','filled')
grid on
xlabel('x_1'),ylabel('x_2')
set(gca,'FontWeight','bold','LineWidth',1.2,'FontSize',10);
% title('(f)','FontSize',12,'FontWeight','bold')
view(-46.355332453985831,26.14058917292143)

subplot(3,3,9)
% title('(i)','FontSize',12,'FontWeight','bold')
% axis off
%% annotation
% X = [1 2 3 4;5 6 7 8];
% figure,
% bar(X)
% legend('Peak analysis','Time-domain','Frequency-domain','RQA')
% 560,664,457,266