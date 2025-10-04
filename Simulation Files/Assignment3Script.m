% Setup Matrix
matrix = [3, 4, 1, 2, 1, 3, 8;
                 2, 1, 3, 1, 3, 9, 7;
                 5, 1, 2, 4, 4, 9, 8;
                 4, 2, 1, 1, 2, 5, 9;
                 8, 9, 6, 3, 2, 8, 7;
                 9, 8, 5, 2, 1, 7, 9;
                 8, 9, 6, 1, 1, 8, 9];
vector = matrix(:);
gridN = 7;
xs = 0.5:1:6.5;
ys = 0.5:1:6.5;
[XX, YY] = meshgrid(xs, ys);
sectorXY = [XX(:), YY(:)];
river = 5.0;
bridge = [5.0,5.5];

fitnessFcn = @(ix,iy) fitnessPart2(ix, iy, xs, ys, sectorXY, vector, river, bridge);

%% ======================= RUN THE GA ================================