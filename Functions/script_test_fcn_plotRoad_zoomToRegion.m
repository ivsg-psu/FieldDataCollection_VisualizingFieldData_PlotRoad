%% script_test_fcn_plotRoad_zoomToRegion
% This is a script to exercise the function: fcn_plotRoad_zoomToRegion
% This function was written on 2025_10_31 by Aneesh Batchu, abb6486@psu.edu


% Revision history:
% 2025_10_31 - Wrote the code originally

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

%% DEMO case: Zoom into BRIDGE region by using default settings

fig_num = 10001; 
titleString = sprintf('DEMO case: Zoom into BRIDGE region by using default settings');
fprintf(1,'Figure %.0f: %s\n',fig_num, titleString);
figure(fig_num); clf;


% Creates the plot with the focus on the test track, satellite view
fcn_plotRoad_plotLL(([]), ([]), (fig_num));

zoomScenario = 'TestTrack';   % Test Scenario
zoomRegion = 'Bridge';   % Test Region
zoom_level = [];  % Zoom level

% Zoom into region
fcn_plotRoad_zoomToRegion(zoomScenario, zoomRegion, (zoom_level), (fig_num))

title(sprintf('%s', titleString), 'Interpreter','none');


% Make sure plot opened up
assert(isequal(get(gcf,'Number'),fig_num));

%% DEMO case: Zoom into PENDULUM region by using default settings

fig_num = 10002; 
titleString = sprintf('DEMO case: Zoom into PENDULUM region by using default settings');
fprintf(1,'Figure %.0f: %s\n',fig_num, titleString);
figure(fig_num); clf;


% Creates the plot with the focus on the test track, satellite view
fcn_plotRoad_plotLL(([]), ([]), (fig_num));

zoomScenario = 'TestTrack';   % Test Scenario
zoomRegion = 'Pendulum';   % Test Region
zoom_level = []; % Zoom level

% Zoom into region
fcn_plotRoad_zoomToRegion(zoomScenario, zoomRegion, (zoom_level), (fig_num))

title(sprintf('%s', titleString), 'Interpreter','none');


% Make sure plot opened up
assert(isequal(get(gcf,'Number'),fig_num));


%% DEMO case: Zoom into VEHICLE DURABILITY COURSE region 

fig_num = 10003; 
titleString = sprintf('DEMO case: Zoom into VEHICLE DURABILITY COURSE region');
fprintf(1,'Figure %.0f: %s\n',fig_num, titleString);
figure(fig_num); clf;


% Creates the plot with the focus on the test track, satellite view
fcn_plotRoad_plotLL(([]), ([]), (fig_num));

zoomScenario = 'TestTrack';   % Test Scenario
zoomRegion = 'VehicleDurabilityCourse';  % Test Region
zoom_level = [];  % Zoom level

% Zoom into region
fcn_plotRoad_zoomToRegion(zoomScenario, zoomRegion, (zoom_level), (fig_num))

title(sprintf('%s', titleString), 'Interpreter','none');


% Make sure plot opened up
assert(isequal(get(gcf,'Number'),fig_num));


%% DEMO case: Zoom into NOMINAL SITE region 

fig_num = 10004; 
titleString = sprintf('DEMO case: Zoom into NOMINAL SITE region');
fprintf(1,'Figure %.0f: %s\n',fig_num, titleString);
figure(fig_num); clf;


% Creates the plot with the focus on the test track, satellite view
fcn_plotRoad_plotLL(([]), ([]), (fig_num));

zoomScenario = 'TestTrack';   % Test Scenario
zoomRegion = 'NominalSite';  % Test Region
zoom_level = [];  % Zoom level

% Zoom into region
fcn_plotRoad_zoomToRegion(zoomScenario, zoomRegion, (zoom_level), (fig_num))

title(sprintf('%s', titleString), 'Interpreter','none');


% Make sure plot opened up
assert(isequal(get(gcf,'Number'),fig_num));

%% DEMO case: Zoom into VEGETATION SITE ONE region 

fig_num = 10005; 
titleString = sprintf('DEMO case: Zoom into VEGETATION SITE ONE region ');
fprintf(1,'Figure %.0f: %s\n',fig_num, titleString);
figure(fig_num); clf;


% Creates the plot with the focus on the test track, satellite view
fcn_plotRoad_plotLL(([]), ([]), (fig_num));

zoomScenario = 'TestTrack';   % Test Scenario
zoomRegion = 'VegetationSiteOne';  % Test Region
zoom_level = [];  % Zoom level

% Zoom into region
fcn_plotRoad_zoomToRegion(zoomScenario, zoomRegion, (zoom_level), (fig_num))

title(sprintf('%s', titleString), 'Interpreter','none');


% Make sure plot opened up
assert(isequal(get(gcf,'Number'),fig_num));

%% DEMO case: Zoom into VEGETATION SITE TWO region

fig_num = 10006; 
titleString = sprintf('DEMO case: Zoom into VEGETATION SITE TWO region');
fprintf(1,'Figure %.0f: %s\n',fig_num, titleString);
figure(fig_num); clf;


% Creates the plot with the focus on the test track, satellite view
fcn_plotRoad_plotLL(([]), ([]), (fig_num));

zoomScenario = 'TestTrack';   % Test Scenario
zoomRegion = 'VegetationSiteTwo';  % Test Region
zoom_level = [];  % Zoom level

% Zoom into region
fcn_plotRoad_zoomToRegion(zoomScenario, zoomRegion, (zoom_level), (fig_num))

title(sprintf('%s', titleString), 'Interpreter','none');


% Make sure plot opened up
assert(isequal(get(gcf,'Number'),fig_num));

%% DEMO case: Zoom into CRASH TEST COURSE region 

fig_num = 10007; 
titleString = sprintf('DEMO case: Zoom into CRASH TEST COURSE region');
fprintf(1,'Figure %.0f: %s\n',fig_num, titleString);
figure(fig_num); clf;


% Creates the plot with the focus on the test track, satellite view
fcn_plotRoad_plotLL(([]), ([]), (fig_num));

zoomScenario = 'TestTrack';   % Test Scenario
zoomRegion = 'CrashTestCourse';  % Test Region
zoom_level = [];  % Zoom level

% Zoom into region
fcn_plotRoad_zoomToRegion(zoomScenario, zoomRegion, (zoom_level), (fig_num))

title(sprintf('%s', titleString), 'Interpreter','none');


% Make sure plot opened up
assert(isequal(get(gcf,'Number'),fig_num));

%% DEMO case: Zoom into VEHICLE HANDLING AREA region 

fig_num = 10008; 
titleString = sprintf('DEMO case: Zoom into VEHICLE HANDLING AREA region');
fprintf(1,'Figure %.0f: %s\n',fig_num, titleString);
figure(fig_num); clf;


% Creates the plot with the focus on the test track, satellite view
fcn_plotRoad_plotLL(([]), ([]), (fig_num));

zoomScenario = 'TestTrack';   % Test Scenario
zoomRegion = 'VehicleHandlingArea';  % Test Region
zoom_level = [];  % Zoom level

% Zoom into region
fcn_plotRoad_zoomToRegion(zoomScenario, zoomRegion, (zoom_level), (fig_num))

title(sprintf('%s', titleString), 'Interpreter','none');


% Make sure plot opened up
assert(isequal(get(gcf,'Number'),fig_num));

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

%% Test case: Zoom into PENDULUM region by adjusting the zoom level (19) (Default = 21)

fig_num = 20001;
titleString = sprintf('Test case: Zoom into PENDULUM region by adjusting the zoom level (19) (Default = 21)');
fprintf(1,'Figure %.0f: %s\n',fig_num, titleString);
figure(fig_num); clf;


% Fill in data
data3 = [
    -77.83108116099999,40.86426763900005,0
    -77.83098509099995,40.86432365200005,0
    -77.83093857199998,40.86435301300003,0
    -77.83087253399998,40.86439877000004,0
    -77.83080882499996,40.86444684500003,0
    -77.83075077399997,40.86449883100005,0
    -77.83069596999997,40.86455288200005,0
    -77.83064856399994,40.86461089600004,0];

% NOTE: above data is in BAD column order, so we
% have to manually rearrange it.
time = linspace(0,10,length(data3(:,1)))';
LLIdata = [data3(:,2), data3(:,1), time];

% Test the function
clear plotFormat
plotFormat.LineStyle = 'none';
plotFormat.LineWidth = 3;
plotFormat.Marker = '.';
plotFormat.MarkerSize = 20;
colorMapString = 'turbo';

% Reduce the colormap
Ncolors = 40;
colorMapMatrix = colormap(colorMapString);
reducedColorMap = fcn_plotRoad_reduceColorMap(colorMapMatrix, Ncolors, -1);

[~, ~]  = fcn_plotRoad_plotLLI(LLIdata, (plotFormat),  (reducedColorMap), (fig_num));


zoomScenario = 'Test Track';   % Test Scenario
zoomRegion = 'Pendulum';  % Test Region
zoom_level = 19;  % Zoom level

% Zoom into region
fcn_plotRoad_zoomToRegion(zoomScenario, zoomRegion, (zoom_level), (fig_num))

title(sprintf('%s', titleString), 'Interpreter','none');

% Make sure plot opened up
assert(isequal(get(gcf,'Number'),fig_num));

%% Test case: zoomScenario and zoomRegion are not case senstive

fig_num = 20002;
titleString = sprintf('Test case: zoomScenario and zoomRegion are not case senstive');
fprintf(1,'Figure %.0f: %s\n',fig_num, titleString);
figure(fig_num); clf;


% Fill in data
data3 = [
    -77.83108116099999,40.86426763900005,0
    -77.83098509099995,40.86432365200005,0
    -77.83093857199998,40.86435301300003,0
    -77.83087253399998,40.86439877000004,0
    -77.83080882499996,40.86444684500003,0
    -77.83075077399997,40.86449883100005,0
    -77.83069596999997,40.86455288200005,0
    -77.83064856399994,40.86461089600004,0];

% NOTE: above data is in BAD column order, so we
% have to manually rearrange it.
time = linspace(0,10,length(data3(:,1)))';
LLIdata = [data3(:,2), data3(:,1), time];

% Test the function
clear plotFormat
plotFormat.LineStyle = 'none';
plotFormat.LineWidth = 3;
plotFormat.Marker = '.';
plotFormat.MarkerSize = 20;
colorMapString = 'turbo';

% Reduce the colormap
Ncolors = 40;
colorMapMatrix = colormap(colorMapString);
reducedColorMap = fcn_plotRoad_reduceColorMap(colorMapMatrix, Ncolors, -1);

[~, ~]  = fcn_plotRoad_plotLLI(LLIdata, (plotFormat),  (reducedColorMap), (fig_num));


zoomScenario = 'TeStTrAck';   % Test Scenario
zoomRegion = 'PenDulUm';  % Test Region
zoom_level = 19;  % Zoom level

% Zoom into region
fcn_plotRoad_zoomToRegion(zoomScenario, zoomRegion, (zoom_level), (fig_num))

title(sprintf('%s', titleString), 'Interpreter','none');

% Make sure plot opened up
assert(isequal(get(gcf,'Number'),fig_num));


%% Test case: zoomScenario and zoomRegion can have any number of spaces

fig_num = 20003;
titleString = sprintf('Test case: zoomScenario and zoomRegion can have any number of spaces');
fprintf(1,'Figure %.0f: %s\n',fig_num, titleString);
figure(fig_num); clf;


% Fill in data
data3 = [
    -77.83108116099999,40.86426763900005,0
    -77.83098509099995,40.86432365200005,0
    -77.83093857199998,40.86435301300003,0
    -77.83087253399998,40.86439877000004,0
    -77.83080882499996,40.86444684500003,0
    -77.83075077399997,40.86449883100005,0
    -77.83069596999997,40.86455288200005,0
    -77.83064856399994,40.86461089600004,0];

% NOTE: above data is in BAD column order, so we
% have to manually rearrange it.
time = linspace(0,10,length(data3(:,1)))';
LLIdata = [data3(:,2), data3(:,1), time];

% Test the function
clear plotFormat
plotFormat.LineStyle = 'none';
plotFormat.LineWidth = 3;
plotFormat.Marker = '.';
plotFormat.MarkerSize = 20;
colorMapString = 'turbo';

% Reduce the colormap
Ncolors = 40;
colorMapMatrix = colormap(colorMapString);
reducedColorMap = fcn_plotRoad_reduceColorMap(colorMapMatrix, Ncolors, -1);

[~, ~]  = fcn_plotRoad_plotLLI(LLIdata, (plotFormat),  (reducedColorMap), (fig_num));


zoomScenario = 'T est Trac k';   % Test Scenario
zoomRegion = 'Pe nd ulum';  % Test Region
zoom_level = 19;  % Zoom level

% Zoom into region
fcn_plotRoad_zoomToRegion(zoomScenario, zoomRegion, (zoom_level), (fig_num))

title(sprintf('%s', titleString), 'Interpreter','none');

% Make sure plot opened up
assert(isequal(get(gcf,'Number'),fig_num));


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

zoomScenario = 'TestTrack';   % Test Scenario
zoomRegion = 'Pendulum';   % Test Region
zoom_level = []; % Zoom level

% Zoom into region
fcn_plotRoad_zoomToRegion(zoomScenario, zoomRegion, (zoom_level), ([]))

% Make sure plot did NOT open up
figHandles = get(groot, 'Children');
assert(~any(figHandles==fig_num));


%% Basic example - NO FIGURE

fig_num = 80002;
fprintf(1,'Figure: %.0f: FAST mode, fig_num=-1\n',fig_num);
figure(fig_num); close(fig_num);

zoomScenario = 'TestTrack';   % Test Scenario
zoomRegion = 'Pendulum';   % Test Region
zoom_level = []; % Zoom level

% Zoom into region
fcn_plotRoad_zoomToRegion(zoomScenario, zoomRegion, (zoom_level), (-1))

% Make sure plot did NOT open up
figHandles = get(groot, 'Children');
assert(~any(figHandles==fig_num));

%% Compare speeds of pre-calculation versus post-calculation versus a fast variant

fig_num = 80003;
fprintf(1,'Figure: %.0f: FAST mode comparisons\n',fig_num);
figure(fig_num); close(fig_num);

zoomScenario = 'TestTrack';   % Test Scenario
zoomRegion = 'Pendulum';   % Test Region
zoom_level = []; % Zoom level


Niterations = 100;

% Do calculation without pre-calculation
tic;
for ith_test = 1:Niterations

    % Zoom into region
    fcn_plotRoad_zoomToRegion(zoomScenario, zoomRegion, (zoom_level), ([]))

end
slow_method = toc;

% Do calculation with pre-calculation, FAST_MODE on
tic;

for ith_test = 1:Niterations

    % Zoom into region
    fcn_plotRoad_zoomToRegion(zoomScenario, zoomRegion, (zoom_level), (-1))

end
fast_method = toc;

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

    %% Should throw error because zoomScenario is not a string

    fig_num = 90001;
    fprintf(1,'Figure: %.0f:Bug case\n',fig_num);
    figure(fig_num); close(fig_num);

    zoomScenario = 5;   % Test Scenario
    zoomRegion = 'Pendulum';   % Test Region
    zoom_level = []; % Zoom level

    % Zoom into region
    fcn_plotRoad_zoomToRegion(zoomScenario, zoomRegion, (zoom_level), (fig_num))

    % Make sure plot did NOT open up
    figHandles = get(groot, 'Children');
    assert(~any(figHandles==fig_num));

   %% Should throw error because zoomRegion is not a string

    fig_num = 90002;
    fprintf(1,'Figure: %.0f:Bug case\n',fig_num);
    figure(fig_num); close(fig_num);

    zoomScenario = 'TestTrack';   % Test Scenario
    zoomRegion = 66;   % Test Region
    zoom_level = []; % Zoom level

    % Zoom into region
    fcn_plotRoad_zoomToRegion(zoomScenario, zoomRegion, (zoom_level), (fig_num))

    % Make sure plot did NOT open up
    figHandles = get(groot, 'Children');
    assert(~any(figHandles==fig_num));

    %% Should throw error because TestTrackPitt does not exist in scenarios

    fig_num = 90003;
    fprintf(1,'Figure: %.0f:Bug case\n',fig_num);
    figure(fig_num); close(fig_num);

    zoomScenario = 'TestTrackPitt';   % Test Scenario
    zoomRegion = 'Pendulum';   % Test Region
    zoom_level = []; % Zoom level

    % Zoom into region
    fcn_plotRoad_zoomToRegion(zoomScenario, zoomRegion, (zoom_level), (fig_num))

    % Make sure plot did NOT open up
    figHandles = get(groot, 'Children');
    assert(~any(figHandles==fig_num));


end
