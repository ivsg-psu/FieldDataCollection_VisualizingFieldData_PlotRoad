%% script_test_fcn_plotRoad_calcLaneBoundingBox
% This is a script to exercise the function:
% fcn_plotRoad_calcLaneBoundingBox.m
% This function was written on 2024_08_16 by S. Brennan, sbrennan@psu.edu

% 2025_11_01 - Aneesh Batchu
% -- Updated the script to the latest format
% -- Added an advanced example

%% Set up the workspace

close all

%% Code demos start here
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%   _____                              ____   __    _____          _
%  |  __ \                            / __ \ / _|  / ____|        | |
%  | |  | | ___ _ __ ___   ___  ___  | |  | | |_  | |     ___   __| | ___
%  | |  | |/ _ \ '_ ` _ \ / _ \/ __| | |  | |  _| | |    / _ \ / _` |/ _ \
%  | |__| |  __/ | | | | | (_) \__ \ | |__| | |   | |___| (_) | (_| |  __/
%  |_____/ \___|_| |_| |_|\___/|___/  \____/|_|    \_____\___/ \__,_|\___|
%
%
% See: https://patorjk.com/software/taag/#p=display&f=Big&t=Demos%20Of%20Code
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% DEMO figures start with 1

close all;
fprintf(1,'Figure: 1XXXX: DEMO cases\n');


%% DEMO case: Basic edge calculation example

fig_num = 10001; 
titleString = sprintf('DEMO case: Basic edge calculation example');
fprintf(1,'Figure %.0f: %s\n',fig_num, titleString);
figure(fig_num); close(fig_num);

% Create data
xData = linspace(-2,20,100)';
yData = 2*xData+4;
XYdata = [xData yData];
projectionDistance = []; % Use defaults

% Test the function
[leftLaneBoundary_XY, rightLaneBoundary_XY] = fcn_plotRoad_calcLaneBoundaries(XYdata, (projectionDistance), (-1));

% Test the function
boundingBoxPolyshape = fcn_plotRoad_calcLaneBoundingBox(leftLaneBoundary_XY, rightLaneBoundary_XY, (fig_num));
title(sprintf('Example of fcn_plotRoad_calcLaneBoundingBox'), 'Interpreter','none','FontSize',12);

% Was a figure was created?
assert(ishandle(fig_num));

% Does the boundingBoxPolyshape.Verticies have 2 columns?
assert(length(boundingBoxPolyshape.Vertices(1,:))== 2);

% Does boundingBoxPolyshape.Verticies have same number of rows?
assert(length(boundingBoxPolyshape.Vertices(:,1))==2*length(XYdata(:,1)));

% Does boundingBoxPolyshape.NumRegions have 1 region and 0 holes?
assert(1 == boundingBoxPolyshape.NumRegions)
assert(0 == boundingBoxPolyshape.NumHoles)


%% Test cases start here. These are very simple, usually trivial
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%  _______ ______  _____ _______ _____
% |__   __|  ____|/ ____|__   __/ ____|
%    | |  | |__  | (___    | | | (___
%    | |  |  __|  \___ \   | |  \___ \
%    | |  | |____ ____) |  | |  ____) |
%    |_|  |______|_____/   |_| |_____/
%
%
%
% See: https://patorjk.com/software/taag/#p=display&f=Big&t=TESTS
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% TEST figures start with 2

close all;
fprintf(1,'Figure: 2XXXXXX: TEST mode cases\n');

%% Test case: Advanced edge calculation example



%% Fast Mode Tests
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%  ______        _     __  __           _        _______        _
% |  ____|      | |   |  \/  |         | |      |__   __|      | |
% | |__ __ _ ___| |_  | \  / | ___   __| | ___     | | ___  ___| |_ ___
% |  __/ _` / __| __| | |\/| |/ _ \ / _` |/ _ \    | |/ _ \/ __| __/ __|
% | | | (_| \__ \ |_  | |  | | (_) | (_| |  __/    | |  __/\__ \ |_\__ \
% |_|  \__,_|___/\__| |_|  |_|\___/ \__,_|\___|    |_|\___||___/\__|___/
%
%
% See: http://patorjk.com/software/taag/#p=display&f=Big&t=Fast%20Mode%20Tests
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% FAST Mode figures start with 8

close all;
fprintf(1,'Figure: 8XXXXXX: TEST mode cases\n');

%% Basic example - NO FIGURE

fig_num = 80001;
fprintf(1,'Figure: %.0f: FAST mode, empty fig_num\n',fig_num);
figure(fig_num); close(fig_num);

% Create data
xData = linspace(-2,20,100)';
yData = 2*xData+4;
XYdata = [xData yData];
projectionDistance = []; % Use defaults

[leftLaneBoundary_XY, rightLaneBoundary_XY] = fcn_plotRoad_calcLaneBoundaries(XYdata, (projectionDistance), (-1));

% Test the function
boundingBoxPolyshape = fcn_plotRoad_calcLaneBoundingBox(leftLaneBoundary_XY, rightLaneBoundary_XY, ([]));

% Does the boundingBoxPolyshape.Verticies have 2 columns?
assert(length(boundingBoxPolyshape.Vertices(1,:))== 2);

% Does boundingBoxPolyshape.Verticies have same number of rows?
assert(length(boundingBoxPolyshape.Vertices(:,1))==2*length(XYdata(:,1)));

% Does boundingBoxPolyshape.NumRegions have 1 region and 0 holes?
assert(1 == boundingBoxPolyshape.NumRegions)
assert(0 == boundingBoxPolyshape.NumHoles)

% Make sure plot did NOT open up
figHandles = get(groot, 'Children');
assert(~any(figHandles==fig_num));


%% Basic example - NO FIGURE

fig_num = 80002;
fprintf(1,'Figure: %.0f: FAST mode, fig_num=-1\n',fig_num);
figure(fig_num); close(fig_num);

% Create data
xData = linspace(-2,20,100)';
yData = 2*xData+4;
XYdata = [xData yData];
projectionDistance = []; % Use defaults


[leftLaneBoundary_XY, rightLaneBoundary_XY] = fcn_plotRoad_calcLaneBoundaries(XYdata, (projectionDistance), (-1));

% Test the function
boundingBoxPolyshape = fcn_plotRoad_calcLaneBoundingBox(leftLaneBoundary_XY, rightLaneBoundary_XY, (-1));

% Does the boundingBoxPolyshape.Verticies have 2 columns?
assert(length(boundingBoxPolyshape.Vertices(1,:))== 2);

% Does boundingBoxPolyshape.Verticies have same number of rows?
assert(length(boundingBoxPolyshape.Vertices(:,1))==2*length(XYdata(:,1)));

% Does boundingBoxPolyshape.NumRegions have 1 region and 0 holes?
assert(1 == boundingBoxPolyshape.NumRegions)
assert(0 == boundingBoxPolyshape.NumHoles)

% Make sure plot did NOT open up
figHandles = get(groot, 'Children');
assert(~any(figHandles==fig_num));


%% Compare speeds of pre-calculation versus post-calculation versus a fast variant

fig_num = 80003;
fprintf(1,'Figure: %.0f: FAST mode comparisons\n',fig_num);
figure(fig_num); close(fig_num);

% Create data
xData = linspace(-2,20,100)';
yData = 2*xData+4;
XYdata = [xData yData];
projectionDistance = []; % Use defaults

% Test the function
[leftLaneBoundary_XY, rightLaneBoundary_XY] = fcn_plotRoad_calcLaneBoundaries(XYdata, (projectionDistance), (-1));

Niterations = 100;

% Do calculation without pre-calculation
tic;
for ith_test = 1:Niterations


    % Test the function
    boundingBoxPolyshape = fcn_plotRoad_calcLaneBoundingBox(leftLaneBoundary_XY, rightLaneBoundary_XY, ([]));


end
slow_method = toc;

% Do calculation with pre-calculation, FAST_MODE on
tic;

for ith_test = 1:Niterations


    % Test the function
    boundingBoxPolyshape = fcn_plotRoad_calcLaneBoundingBox(leftLaneBoundary_XY, rightLaneBoundary_XY, (-1));


end
fast_method = toc;

% Does the boundingBoxPolyshape.Verticies have 2 columns?
assert(length(boundingBoxPolyshape.Vertices(1,:))== 2);

% Does boundingBoxPolyshape.Verticies have same number of rows?
assert(length(boundingBoxPolyshape.Vertices(:,1))==2*length(XYdata(:,1)));

% Does boundingBoxPolyshape.NumRegions have 1 region and 0 holes?
assert(1 == boundingBoxPolyshape.NumRegions)
assert(0 == boundingBoxPolyshape.NumHoles)

% Plot results as bar chart
figure(373737);
clf;
hold on;

X = categorical({'Normal mode','Fast mode'});
X = reordercats(X,{'Normal mode','Fast mode'}); % Forces bars to appear in this exact order, not alphabetized
Y = [slow_method fast_method ]*1000/Niterations;
bar(X,Y)
ylabel('Execution time (Milliseconds)')

% Make sure plot did NOT open up
figHandles = get(groot, 'Children');
assert(~any(figHandles==fig_num));

%% BUG cases
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%  ____  _    _  _____
% |  _ \| |  | |/ ____|
% | |_) | |  | | |  __    ___ __ _ ___  ___  ___
% |  _ <| |  | | | |_ |  / __/ _` / __|/ _ \/ __|
% | |_) | |__| | |__| | | (_| (_| \__ \  __/\__ \
% |____/ \____/ \_____|  \___\__,_|___/\___||___/
%
% See: http://patorjk.com/software/taag/#p=display&v=0&f=Big&t=BUG%20cases
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% All bug case figures start with the number 9

% close all;
% fprintf(1,'Figure: 9XXXXXX: TEST mode cases\n');

%% BUG

%% Fail conditions
if 1==0

    %% Should throw error because leftLaneBoundary_XY does not have 2 column of numbers

    fig_num = 90001;
    fprintf(1,'Figure: %.0f:Bug case\n',fig_num);
    figure(fig_num); close(fig_num);

    % Create data
    xData = linspace(-2,20,100)';
    yData = 2*xData+4;
    XYdata = [xData yData];
    projectionDistance = []; % Use defaults

    % Test the function
    [leftLaneBoundary_XY, rightLaneBoundary_XY] = fcn_plotRoad_calcLaneBoundaries(XYdata, (projectionDistance), (-1));

    % Test the function
    boundingBoxPolyshape = fcn_plotRoad_calcLaneBoundingBox(leftLaneBoundary_XY(:,1), rightLaneBoundary_XY, (fig_num));

    % Does the boundingBoxPolyshape.Verticies have 2 columns?
    assert(length(boundingBoxPolyshape.Vertices(1,:))== 2);

    % Does boundingBoxPolyshape.Verticies have same number of rows?
    assert(length(boundingBoxPolyshape.Vertices(:,1))==2*length(XYdata(:,1)));

    % Does boundingBoxPolyshape.NumRegions have 1 region and 0 holes?
    assert(1 == boundingBoxPolyshape.NumRegions)
    assert(0 == boundingBoxPolyshape.NumHoles)

    % Make sure plot did NOT open up
    figHandles = get(groot, 'Children');
    assert(~any(figHandles==fig_num));

end

% %% Speed test
% 
% % Create data
% xData = linspace(-2,20,100)';
% yData = 2*xData+4;
% XYdata = [xData yData];
% projectionDistance = []; % use default of 12 ft wide lane
% 
% [leftLaneBoundary_XY, rightLaneBoundary_XY] = fcn_plotRoad_calcLaneBoundaries(XYdata, (projectionDistance), (-1));
% 
% 
% 
% fig_num=[];
% REPS=5;
% minTimeSlow=Inf;
% maxTimeSlow=-Inf;
% tic;
% 
% % Slow mode calculation - code copied from plotVehicleXYZ
% for i=1:REPS
%     tstart=tic;
%     boundingBoxPolyshape = fcn_plotRoad_calcLaneBoundingBox(leftLaneBoundary_XY, rightLaneBoundary_XY, (fig_num));
%     telapsed=toc(tstart);
%     minTimeSlow=min(telapsed,minTimeSlow);
%     maxTimeSlow=max(telapsed,maxTimeSlow);
% end
% averageTimeSlow=toc/REPS;
% % Slow mode END
% 
% % Fast Mode Calculation
% fig_num = -1;
% minTimeFast = Inf;
% tic;
% for i=1:REPS
%     tstart = tic;
%     boundingBoxPolyshape = fcn_plotRoad_calcLaneBoundingBox(leftLaneBoundary_XY, rightLaneBoundary_XY, (fig_num));
%     telapsed = toc(tstart);
%     minTimeFast = min(telapsed,minTimeFast);
% end
% averageTimeFast = toc/REPS;
% % Fast mode END
% 
% % Display Console Comparison
% if 1==1
%     fprintf(1,'\n\nComparison of fcn_plotRoad_calcLaneBoundingBox without speed setting (slow) and with speed setting (fast):\n');
%     fprintf(1,'N repetitions: %.0d\n',REPS);
%     fprintf(1,'Slow mode average speed per call (seconds): %.5f\n',averageTimeSlow);
%     fprintf(1,'Slow mode fastest speed over all calls (seconds): %.5f\n',minTimeSlow);
%     fprintf(1,'Fast mode average speed per call (seconds): %.5f\n',averageTimeFast);
%     fprintf(1,'Fast mode fastest speed over all calls (seconds): %.5f\n',minTimeFast);
%     fprintf(1,'Average ratio of fast mode to slow mode (unitless): %.3f\n',averageTimeSlow/averageTimeFast);
%     fprintf(1,'Fastest ratio of fast mode to slow mode (unitless): %.3f\n',maxTimeSlow/minTimeFast);
% end
% %Assertion on averageTime NOTE: Due to the variance, there is a chance that
% %the assertion will fail.
% assert(averageTimeFast<2*averageTimeSlow);

