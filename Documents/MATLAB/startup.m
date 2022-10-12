fullpath = genpath('/home/chris/Documents/MATLAB/');
addpath(fullpath);
% rm folders with redundant functions
rmpath(genpath('/home/chris/Documents/MATLAB/unitcell/'));
rmpath(genpath('/home/chris/Documents/MATLAB/ferreira_matlab/'));
rmpath(genpath('/home/chris/Documents/MATLAB/femlab/'));

cd ~/Documents/MATLAB/hexUnitCell
clear fullpath