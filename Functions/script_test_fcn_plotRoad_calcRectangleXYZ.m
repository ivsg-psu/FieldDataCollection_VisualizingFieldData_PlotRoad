%% script_test_fcn_plotRoad_calcRectangleXYZ.m
% This is a script to exercise the function:
% fcn_plotRoad_calcRectangleXYZ.m


% Revision history:
% 2023_08_13 by S. Brennan, sbrennan@psu.edu
% -- start writing function by heavily modifying version from PlotTestTrack
% 2025_11_01 - Aneesh Batchu
% -- Updated the script to the latest format

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

%% DEMO case: Basic rectangle, 2D

fig_num = 10001; 
titleString = sprintf('DEMO case: Basic rectangle, 2D');
fprintf(1,'Figure %.0f: %s\n',fig_num, titleString);
figure(fig_num); clf;

centerPointXYZ = [0 0];
LWH = [4 2];
yawAngle = [];
centerOffsetLWH = [];

cornersXYZ = fcn_plotRoad_calcRectangleXYZ(centerPointXYZ, LWH, (yawAngle), (centerOffsetLWH), (fig_num));
title(sprintf('Example %.0d: Basic rectangle, 2D',fig_num), 'Interpreter','none');

% Check results
assert(all(ishandle(fig_num)));
assert(length(cornersXYZ(:,1))==5);
assert(length(cornersXYZ(1,:))==2);
assert(isequal(round(cornersXYZ,4),[...
    -2    -1
    2    -1
    2     1
    -2     1
    -2    -1]));


%% DEMO case: Basic 2D rectangle, moved location

fig_num = 10002; 
titleString = sprintf('DEMO case: Basic 2D rectangle, moved location');
fprintf(1,'Figure %.0f: %s\n',fig_num, titleString);
figure(fig_num); clf;


centerPointXYZ = [2 1];
LWH = [4 2];
yawAngle = [];
centerOffsetLWH = [];

cornersXYZ = fcn_plotRoad_calcRectangleXYZ(centerPointXYZ, LWH, (yawAngle), (centerOffsetLWH), (fig_num));
title(sprintf('Example %.0d: basic rectangle',fig_num), 'Interpreter','none');

% Check results
assert(all(ishandle(fig_num)));
assert(length(cornersXYZ(:,1))==5);
assert(length(cornersXYZ(1,:))==2);
assert(isequal(round(cornersXYZ,4),[...
    0     0
    4     0
    4     2
    0     2
    0     0]));

%% DEMO case: Basic 2D rectangle, moved and rotated

fig_num = 10003; 
titleString = sprintf('DEMO case: Basic 2D rectangle, moved and rotated');
fprintf(1,'Figure %.0f: %s\n',fig_num, titleString);
figure(fig_num); clf;


centerPointXYZ = [2 1];
LWH = [4 2];
yawAngle = 45*pi/180;
centerOffsetLWH = [];

cornersXYZ = fcn_plotRoad_calcRectangleXYZ(centerPointXYZ, LWH, (yawAngle), (centerOffsetLWH), (fig_num));
title(sprintf('Example %.0d: Basic 2D rectangle, moved and rotated',fig_num), 'Interpreter','none');

% Check results
assert(all(ishandle(fig_num)));
assert(length(cornersXYZ(:,1))==5);
assert(length(cornersXYZ(1,:))==2);
assert(isequal(round(cornersXYZ,4),[...
    1.2929   -1.1213
    4.1213    1.7071
    2.7071    3.1213
    -0.1213    0.2929
    1.2929   -1.1213]));

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

%% Test case: Basic 2D rectangle, moved and rotated and measured from back corner

fig_num = 20001;
titleString = sprintf('Test case: Basic 2D rectangle, moved and rotated and measured from back corner');
fprintf(1,'Figure %.0f: %s\n',fig_num, titleString);
figure(fig_num); clf;

centerPointXYZ = [0 0];
LWH = [4 2];
yawAngle = 45*pi/180;
centerOffsetLWH = [2 1];

cornersXYZ = fcn_plotRoad_calcRectangleXYZ(centerPointXYZ, LWH, (yawAngle), (centerOffsetLWH), (fig_num));
title(sprintf('Example %.0d: Basic 2D rectangle, moved and rotated and measured from back corner',fig_num), 'Interpreter','none');

% Check results
assert(all(ishandle(fig_num)));
assert(length(cornersXYZ(:,1))==5);
assert(length(cornersXYZ(1,:))==2);
assert(isequal(round(cornersXYZ,4),[...
    0         0
    2.8284    2.8284
    1.4142    4.2426
    -1.4142    1.4142
    0         0]));


%% Test case: Basic 3D rectangle, moved and rotated and measured from back corner

fig_num = 20002;
titleString = sprintf('Test case: Basic 3D rectangle, moved and rotated and measured from back corner');
fprintf(1,'Figure %.0f: %s\n',fig_num, titleString);
figure(fig_num); clf;

centerPointXYZ = [0 0 0];
LWH = [4 2 1];
yawAngle = 45*pi/180;
centerOffsetLWH = [2 1 0.5];

cornersXYZ = fcn_plotRoad_calcRectangleXYZ(centerPointXYZ, LWH, (yawAngle), (centerOffsetLWH), (fig_num));
title(sprintf('Example %.0d: Basic 3D rectangle, moved and rotated and measured from back corner',fig_num), 'Interpreter','none');

% Check results
assert(all(ishandle(fig_num)));
assert(length(cornersXYZ(:,1))==5*6);
assert(length(cornersXYZ(1,:))==3);
assert(isequal(round(cornersXYZ,4),[...
         0         0         0
   -1.4142    1.4142         0
    1.4142    4.2426         0
    2.8284    2.8284         0
         0         0         0
         0         0         0
         0         0    1.0000
   -1.4142    1.4142    1.0000
   -1.4142    1.4142         0
         0         0         0
         0         0         0
    2.8284    2.8284         0
    2.8284    2.8284    1.0000
         0         0    1.0000
         0         0         0
         0         0    1.0000
    2.8284    2.8284    1.0000
    1.4142    4.2426    1.0000
   -1.4142    1.4142    1.0000
         0         0    1.0000
    2.8284    2.8284    1.0000
    2.8284    2.8284         0
    1.4142    4.2426         0
    1.4142    4.2426    1.0000
    2.8284    2.8284    1.0000
    1.4142    4.2426    1.0000
   -1.4142    1.4142    1.0000
   -1.4142    1.4142         0
    1.4142    4.2426         0
    1.4142    4.2426    1.0000]));


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

centerPointXYZ = [0 0];
LWH = [4 2];
yawAngle = [];
centerOffsetLWH = [];

cornersXYZ = fcn_plotRoad_calcRectangleXYZ(centerPointXYZ, LWH, (yawAngle), (centerOffsetLWH), ([]));

% Check results
assert(length(cornersXYZ(:,1))==5);
assert(length(cornersXYZ(1,:))==2);
assert(isequal(round(cornersXYZ,4),[...
    -2    -1
    2    -1
    2     1
    -2     1
    -2    -1]));


% Make sure plot did NOT open up
figHandles = get(groot, 'Children');
assert(~any(figHandles==fig_num));


%% Basic example - NO FIGURE

fig_num = 80002;
fprintf(1,'Figure: %.0f: FAST mode, fig_num=-1\n',fig_num);
figure(fig_num); close(fig_num);

centerPointXYZ = [0 0];
LWH = [4 2];
yawAngle = [];
centerOffsetLWH = [];

cornersXYZ = fcn_plotRoad_calcRectangleXYZ(centerPointXYZ, LWH, (yawAngle), (centerOffsetLWH), (-1));

% Check results
assert(length(cornersXYZ(:,1))==5);
assert(length(cornersXYZ(1,:))==2);
assert(isequal(round(cornersXYZ,4),[...
    -2    -1
    2    -1
    2     1
    -2     1
    -2    -1]));

% Make sure plot did NOT open up
figHandles = get(groot, 'Children');
assert(~any(figHandles==fig_num));

%% Compare speeds of pre-calculation versus post-calculation versus a fast variant

fig_num = 80003;
fprintf(1,'Figure: %.0f: FAST mode comparisons\n',fig_num);
figure(fig_num); close(fig_num);

centerPointXYZ = [0 0];
LWH = [4 2];
yawAngle = [];
centerOffsetLWH = [];

Niterations = 100;

% Do calculation without pre-calculation
tic;
for ith_test = 1:Niterations

    cornersXYZ = fcn_plotRoad_calcRectangleXYZ(centerPointXYZ, LWH, (yawAngle), (centerOffsetLWH), ([]));

end
slow_method = toc;

% Do calculation with pre-calculation, FAST_MODE on
tic;

for ith_test = 1:Niterations


    cornersXYZ = fcn_plotRoad_calcRectangleXYZ(centerPointXYZ, LWH, (yawAngle), (centerOffsetLWH), (-1));

end
fast_method = toc;

% Check results
assert(length(cornersXYZ(:,1))==5);
assert(length(cornersXYZ(1,:))==2);
assert(isequal(round(cornersXYZ,4),[...
    -2    -1
    2    -1
    2     1
    -2     1
    -2    -1]));


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

    %% Should throw error because centerPointXYZ must have at least 2 columns

    fig_num = 90001;
    fprintf(1,'Figure: %.0f:Bug case\n',fig_num);
    figure(fig_num); close(fig_num);

    centerPointXYZ = [0 0];
    LWH = [4 2];
    yawAngle = [];
    centerOffsetLWH = [];

    cornersXYZ = fcn_plotRoad_calcRectangleXYZ(centerPointXYZ(:,1), LWH, (yawAngle), (centerOffsetLWH), (fig_num));
    % Make sure plot did NOT open up
    figHandles = get(groot, 'Children');
    assert(~any(figHandles==fig_num));
end
% %% Testing speed mode
% 
% centerPointXYZ = [0 0];
% LWH = [4 2];
% yawAngle = 45*pi/180;
% centerOffsetLWH = [2 1];
% 
% 
% % Speed Test Calculation
% fig_num=[];
% REPS=5; minTimeSlow=Inf;
% tic;
% 
% % Slow mode calculation - code copied from plotVehicleXYZ
% for i=1:REPS
%     tstart=tic;
%     cornersXYZ = fcn_plotRoad_calcRectangleXYZ(centerPointXYZ, LWH, (yawAngle), (centerOffsetLWH), (fig_num));
%     telapsed=toc(tstart);
%     minTimeSlow=min(telapsed,minTimeSlow);
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
%     cornersXYZ = fcn_plotRoad_calcRectangleXYZ(centerPointXYZ, LWH, (yawAngle), (centerOffsetLWH), (fig_num));
%     telapsed = toc(tstart);
%     minTimeFast = min(telapsed,minTimeFast);
% end
% averageTimeFast = toc/REPS;
% 
% % Display Console Comparison
% if 1==1
%     fprintf(1,'\n\nComparison of fcn_plotRoad_calcRectangleXYZ without speed setting (slow) and with speed setting (fast):\n');
%     fprintf(1,'N repetitions: %.0d\n',REPS);
%     fprintf(1,'Slow mode average speed per call (seconds): %.5f\n',averageTimeSlow);
%     fprintf(1,'Slow mode fastest speed over all calls (seconds): %.5f\n',minTimeSlow);
%     fprintf(1,'Fast mode average speed per call (seconds): %.5f\n',averageTimeFast);
%     fprintf(1,'Fast mode fastest speed over all calls (seconds): %.5f\n',minTimeFast);
%     fprintf(1,'Average ratio of fast mode to slow mode (unitless): %.3f\n',averageTimeSlow/averageTimeFast);
%     fprintf(1,'Fastest ratio of fast mode to slow mode (unitless): %.3f\n',minTimeSlow/minTimeFast);
% end
% %Assertion on averageTime NOTE: Due to the variance, there is a chance that
% %the assertion will fail.
% assert(averageTimeFast<averageTimeSlow);
% diff = averageTimeFast*10000 - averageTimeSlow*10000;
