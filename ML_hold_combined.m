clear all, close all, clc
%% Import data
% X1 = load('R:\Research\Res_sensor_paper\feature_holdN.mat');
% X1 = X1.X;
% load('R:\Research\Res_sensor_paper\feature_holdT.mat');
% % Combine features
% data = [X X1];
%% Import data
X1 = load('R:\Research\Res_sensor_paper\feature_deepH.mat');
X1 = X1.X;
load('R:\Research\Res_sensor_paper\feature_deepT.mat');
% Combine features
data = [X X1];