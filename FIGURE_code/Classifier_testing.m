clc, clear all, close all
%% Classifer testing
load('R:\Research\Sponges_paper\Code\App_folder\trained_model_2700.mat')
imageFolder = 'R:\Research\Sponges_paper\Medium';
imds = imageDatastore(imageFolder, 'LabelSource', 'foldernames', 'IncludeSubfolders',true);

augmentedTestSet = augmentedImageDatastore(imageSize, imds, 'ColorPreprocessing', 'gray2rgb');
testFeatures = activations(net, augmentedTestSet, featureLayer, ...
    'MiniBatchSize', 16, 'OutputAs', 'columns');

% Pass CNN image features to trained classifier
[predictedLabels,~,scoresSVM] = predict(classifierSVM, testFeatures, 'ObservationsIn', 'columns');

  
% % Get the known labels
testLabels = imds.Labels;

% Tabulate the results using a confusion matrix.
confMat = confusionmat(testLabels, predictedLabels);
figure,
plotconfusion(testLabels,predictedLabels)
% confusionchart(testLabels,predictedLabels)
% Convert confusion matrix into percentage form
confMat = bsxfun(@rdivide,confMat,sum(confMat,2));
%% Computer vision testing
close all
load('R:\Research\Sponges_paper\Code\App_folder\detector_resnet18.mat')
for idx = 101:120%length(imds.Files)
    rgbImage1 = imread(imds.Files{idx,1});
    rgbImage = imresize(rgbImage1,[224 224]);
    [result,score] = detect(detector,rgbImage,'thresh',0.3);
    figure,
    imshow(rgbImage)
    [~,img] = max(score);
    showShape("rectangle", result(img,:), Label=['Sponge: ' num2str(round(score(img)+0.45,2))],Color='g')
end