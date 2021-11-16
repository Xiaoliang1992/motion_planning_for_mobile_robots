% Used for Motion Planning for Mobile Robots
% Thanks to HKUST ELEC 5660 
close all; clear all; clc;
addpath('A_star')

% Environment map in 2D space 
MAX_X = 20;
MAX_Y = 20;
xStart = 1.0;
yStart = 1.0;
xTarget = MAX_X;
yTarget = MAX_Y;
obstacle_ratio = 0.5;
map = obstacle_map(xStart, yStart, xTarget, yTarget, MAX_X, MAX_Y, obstacle_ratio);

% Waypoint Generator Using the A* 
[path, OPEN] = A_star_search(map, MAX_X,MAX_Y);

% visualize the 2D grid map
visualize_map(map, path, OPEN);

% save map
% save('Data/map.mat', 'map', 'MAX_X', 'MAX_Y');
