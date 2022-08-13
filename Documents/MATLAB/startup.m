fullpath = genpath('/home/chris/Documents/MATLAB');
addpath(fullpath);
% rm folders with redundant functions
rmpath(genpath('/home/chris/Documents/MATLAB/unitcell/gmsh_tests/'));
rmpath(genpath('/home/chris/Documents/MATLAB/unitcell/minimal-example-main/'));
rmpath(genpath('/home/chris/Documents/MATLAB/unitcell/tests/'));
rmpath(genpath('/home/chris/Documents/MATLAB/ferreira_matlab/'));

cd ~/Documents/MATLAB/unitcell/ComplexBandstructure
clear fullpath