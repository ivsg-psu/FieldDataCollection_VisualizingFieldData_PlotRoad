%% script_test_fcn_plotRoad_plotLLI
% This is a script to exercise the function: fcn_plotRoad_plotLLI
% This function was written on 2023_08_12 by S. Brennan, sbrennan@psu.edu

% Revision history:
% 2023_08_12 - S. Brennan
% -- first write of the code
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

%% DEMO case: Plotting with all defaults

fig_num = 10001; 
titleString = sprintf('DEMO case: Plotting with all defaults');
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
plotFormat = [];
colorMap = [];
[h_plot, indiciesInEachPlot]  = fcn_plotRoad_plotLLI(LLIdata, (plotFormat),  (colorMap), (fig_num));
title(sprintf('Example %.0d: showing basic plotting',fig_num), 'Interpreter','none');

% Was a figure created?
assert(all(ishandle(fig_num)));

% Check results
assert(all(ishandle(h_plot(:))));

% Check that the number of indicies matches the amount of data in the plot
for ith_handle = 1:length(h_plot)
    dataPlotted = get(h_plot(ith_handle),'LatitudeData');    
    NumInPlot = length(dataPlotted);
    assert(isequal(NumInPlot,length(indiciesInEachPlot{ith_handle})));
end

%% DEMO case: Specifying the color as a string

fig_num = 10002; 
titleString = sprintf('DEMO case: Specifying the color as a string');
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
plotFormat = 'r';
colorMap = [];
[h_plot, indiciesInEachPlot]  = fcn_plotRoad_plotLLI(LLIdata, (plotFormat),  (colorMap), (fig_num));
title(sprintf('Example %.0d: showing user-defined color to produce colormap',fig_num), 'Interpreter','none');

% Was a figure created?
assert(all(ishandle(fig_num)));

% Check results
assert(all(ishandle(h_plot(:))));

% Check that the number of indicies matches the amount of data in the plot
for ith_handle = 1:length(h_plot)
    dataPlotted = get(h_plot(ith_handle),'LatitudeData');    
    NumInPlot = length(dataPlotted);
    assert(isequal(NumInPlot,length(indiciesInEachPlot{ith_handle})));
end


%% DEMO case: specifying the colorMap

fig_num = 10003; 
titleString = sprintf('DEMO case: specifying the colorMap');
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
plotFormat = [];
colorMap = 'hot';
[h_plot, indiciesInEachPlot]  = fcn_plotRoad_plotLLI(LLIdata, (plotFormat),  (colorMap), (fig_num));
title(sprintf('Example %.0d: showing user-defined color map',fig_num), 'Interpreter','none');

% Was a figure created?
assert(all(ishandle(fig_num)));

% Check results
good_indicies = ~isnan(h_plot);
assert(all(ishandle(h_plot(good_indicies,1))));

% Check that the number of indicies matches the amount of data in the plot
for ith_handle = 1:length(h_plot)
    if ~isnan(h_plot(ith_handle))
        dataPlotted = get(h_plot(ith_handle),'LatitudeData');
        NumInPlot = length(dataPlotted);
        assert(isequal(NumInPlot,length(indiciesInEachPlot{ith_handle})));
    end
end


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

%% Test case: Specifying the linestyle

% Plot data onto an empty figure. This will force the code to check to see
% if the figure has data inside it, and if not, it will prepare the figure
% the same way as a new figure.

fig_num = 20001;
titleString = sprintf('Test case: Specifying the linestyle');
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
plotFormat = '-';
colorMap = 'hot';
[h_plot, indiciesInEachPlot]  = fcn_plotRoad_plotLLI(LLIdata, (plotFormat),  (colorMap), (fig_num));
title(sprintf('Example %.0d: showing use of a linestyle',fig_num), 'Interpreter','none');

% Was a figure created?
assert(all(ishandle(fig_num)));

% Check results
good_indicies = find(~isnan(h_plot));
assert(all(ishandle(h_plot(good_indicies,1)))); %#ok<FNDSB>

% Check that the number of indicies matches the amount of data in the plot
for ith_handle = 1:length(h_plot)
    if ~isnan(h_plot(ith_handle))
        dataPlotted = get(h_plot(ith_handle),'LatitudeData');
        NumInPlot = length(dataPlotted);
        assert(isequal(NumInPlot,length(indiciesInEachPlot{ith_handle})));
    end
end

%% Test case: changing marker size, same color

fig_num = 20002;
titleString = sprintf('Test case: changing marker size, same color');
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
plotFormat.MarkerSize = 5;
% colorMapString = 'turbo';

% Reduce the colormap
Ncolors = 40;
% colorMapMatrix = colormap(colorMapString);
% reducedColorMap = fcn_plotRoad_reduceColorMap(colorMapMatrix, Ncolors, -1);
reducedColorMap = repmat([0 0 0.5],Ncolors,1);


% Specify the sizes (must be same size as reducedColorMap)
markerSizeMatrix = 2*(1:Ncolors)';
plotFormat.MarkerSize = markerSizeMatrix;

[h_plot, indiciesInEachPlot]  = fcn_plotRoad_plotLLI(LLIdata, (plotFormat),  (reducedColorMap), (fig_num));
set(gca,'MapCenter', [40.864567288895223 -77.830697913696483], 'ZoomLevel',19.5);
title(sprintf('Example %.0d: showing use of a complex plotFormat',fig_num), 'Interpreter','none');

% Was a figure created?
assert(all(ishandle(fig_num)));

% Check results
good_indicies = find(~isnan(h_plot));
assert(all(ishandle(h_plot(good_indicies,1)))); %#ok<FNDSB>

% Check that the number of indicies matches the amount of data in the plot
for ith_handle = 1:length(h_plot)
    if ~isnan(h_plot(ith_handle))
        dataPlotted = get(h_plot(ith_handle),'LatitudeData');
        NumInPlot = length(dataPlotted);
        assert(isequal(NumInPlot,length(indiciesInEachPlot{ith_handle})));
    end
end

%% Test case: specifying the full plotFormat, including reduced color map and changing marker size 

fig_num = 20003;
titleString = sprintf('Test case: specifying the full plotFormat, including reduced color map and changing marker size ');
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
plotFormat.MarkerSize = 5;
colorMapString = 'turbo';

% Reduce the colormap
Ncolors = 40;
colorMapMatrix = colormap(colorMapString);
reducedColorMap = fcn_plotRoad_reduceColorMap(colorMapMatrix, Ncolors, -1);

% Specify the sizes (must be same size as reducedColorMap)
markerSizeMatrix = 2*(1:Ncolors)';
plotFormat.MarkerSize = markerSizeMatrix;

[h_plot, indiciesInEachPlot]  = fcn_plotRoad_plotLLI(LLIdata, (plotFormat),  (reducedColorMap), (fig_num));
set(gca,'MapCenter', [40.864567288895223 -77.830697913696483], 'ZoomLevel',19.5);
title(sprintf('Example %.0d: showing use of a complex plotFormat',fig_num), 'Interpreter','none');

% Was a figure created?
assert(all(ishandle(fig_num)));

% Check results
good_indicies = find(~isnan(h_plot));
assert(all(ishandle(h_plot(good_indicies,1))));

% Check that the number of indicies matches the amount of data in the plot
for ith_handle = 1:length(h_plot)
    if ~isnan(h_plot(ith_handle))
        dataPlotted = get(h_plot(ith_handle),'LatitudeData');
        NumInPlot = length(dataPlotted);
        assert(isequal(NumInPlot,length(indiciesInEachPlot{ith_handle})));
    end
end


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
% fprintf(1, 'Plot function - No fast mode tests')

%% Basic example - NO FIGURE

fig_num = 80001;
fprintf(1,'Figure: %.0f: FAST mode, empty fig_num\n',fig_num);
figure(fig_num); close(fig_num);

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
plotFormat = [];
colorMap = [];
[~, ~]  = fcn_plotRoad_plotLLI(LLIdata, (plotFormat),  (colorMap), ([]));


% Make sure plot did NOT open up
figHandles = get(groot, 'Children');
assert(~any(figHandles==fig_num));


%% Basic example - NO FIGURE

fig_num = 80002;
fprintf(1,'Figure: %.0f: FAST mode, fig_num=-1\n',fig_num);
figure(fig_num); close(fig_num);

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
plotFormat = [];
colorMap = [];
[~, ~]  = fcn_plotRoad_plotLLI(LLIdata, (plotFormat),  (colorMap), (-1));


% Make sure plot did NOT open up
figHandles = get(groot, 'Children');
assert(~any(figHandles==fig_num));

%% Compare speeds of pre-calculation versus post-calculation versus a fast variant

fig_num = 80003;
fprintf(1,'Figure: %.0f: FAST mode comparisons\n',fig_num);
figure(fig_num); close(fig_num);

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
plotFormat = [];
colorMap = [];


Niterations = 100;

% Do calculation without pre-calculation
tic;
for ith_test = 1:Niterations

    [~, ~]  = fcn_plotRoad_plotLLI(LLIdata, (plotFormat),  (colorMap), ([]));

end
slow_method = toc;

% Do calculation with pre-calculation, FAST_MODE on
tic;

for ith_test = 1:Niterations

    [~, ~]  = fcn_plotRoad_plotLLI(LLIdata, (plotFormat),  (colorMap), (-1));

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

    %% Should throw error because LLIdata must have 3 columns

    fig_num = 90001;
    fprintf(1,'Figure: %.0f:Bug case\n',fig_num);
    figure(fig_num); close(fig_num);

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
    plotFormat = [];
    colorMap = [];
    [~, ~]  = fcn_plotRoad_plotLLI(LLIdata(:,1:2), (plotFormat),  (colorMap), (fig_num));

    % Make sure plot did NOT open up
    figHandles = get(groot, 'Children');
    assert(~any(figHandles==fig_num));

end


% %% testing speed of function
% 
% 
% % Fill in data
% data3 = [
%     -77.83108116099999,40.86426763900005,0
%     -77.83098509099995,40.86432365200005,0
%     -77.83093857199998,40.86435301300003,0
%     -77.83087253399998,40.86439877000004,0
%     -77.83080882499996,40.86444684500003,0
%     -77.83075077399997,40.86449883100005,0
%     -77.83069596999997,40.86455288200005,0
%     -77.83064856399994,40.86461089600004,0];
% 
% % NOTE: above data is in BAD column order, so we
% % have to manually rearrange it.
% time = linspace(0,10,length(data3(:,1)))';
% LLIdata = [data3(:,2), data3(:,1), time];
% 
% 
% % Test the function
% clear plotFormat
% plotFormat.LineStyle = ':';
% plotFormat.LineWidth = 5;
% plotFormat.Marker = '+';
% plotFormat.MarkerSize = 10;
% colorMap = 'hot';
% 
% % Speed Test Calculation
% fig_num=[];
% REPS=5; minTimeSlow=Inf;
% tic;
% 
% % Slow mode calculation
% for i=1:REPS
%     tstart=tic;
%     [h_plot, indiciesInEachPlot]  = fcn_plotRoad_plotLLI(LLIdata, (plotFormat),  (colorMap), (fig_num));
%     telapsed=toc(tstart);
%     minTimeSlow=min(telapsed,minTimeSlow);
% end
% averageTimeSlow=toc/REPS;
% % Slow mode END
% 
% 
% % Fast Mode Calculation
% fig_num = -1;
% minTimeFast = Inf;
% tic;
% for i=1:REPS
%     tstart = tic;
%     [h_plot, indiciesInEachPlot]  = fcn_plotRoad_plotLLI(LLIdata, (plotFormat),  (colorMap), (fig_num));
%     telapsed = toc(tstart);
%     minTimeFast = min(telapsed,minTimeFast);
% end
% averageTimeFast = toc/REPS;
% % Fast mode END
% 
% % Display Console Comparison
% if 1==1
%     fprintf(1,'\n\nComparison of fcn_PlotTestTrack_plotTraceENU without speed setting (slow) and with speed setting (fast):\n');
%     fprintf(1,'N repetitions: %.0d\n',REPS);
%     fprintf(1,'Slow mode average speed per call (seconds): %.5f\n',averageTimeSlow);
%     fprintf(1,'Slow mode fastest speed over all calls (seconds): %.5f\n',minTimeSlow);
%     fprintf(1,'Fast mode average speed per call (seconds): %.5f\n',averageTimeFast);
%     fprintf(1,'Fast mode fastest speed over all calls (seconds): %.5f\n',minTimeFast);
%     fprintf(1,'Average ratio of fast mode to slow mode (unitless): %.3f\n',averageTimeSlow/averageTimeFast);
%     fprintf(1,'Fastest ratio of fast mode to slow mode (unitless): %.3f\n',minTimeSlow/minTimeFast);
% end
% 
% % Assertion on averageTime NOTE: Due to the variance, there is a chance
% % that the assertion will fail. assert(averageTimeFast<2*averageTimeSlow);