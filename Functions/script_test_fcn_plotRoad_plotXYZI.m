%% script_test_fcn_plotRoad_plotXYZI
% This is a script to exercise the function: fcn_plotRoad_plotXYZI
% This function was written on 2023_08_12 by S. Brennan, sbrennan@psu.edu


% Revision history:
% 2023_08_12
% -- first write of the code
% 2025_11_02 - Aneesh Batchu
% -- Updated the script to the latest format
% 2025_11_06 - Aneesh Batchu
% -- Added a test case with NaNs in the input data

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
titleString = sprintf('DEMO case: Showing plot of entire cell array)');
fprintf(1,'Figure %.0f: %s\n',fig_num, titleString);
figure(fig_num); clf;

time = linspace(0,10,100)';
XYZIdata = [time sin(time) 1/25*(time-5).^2  cos(time)];

% Test the function
plotFormat = [];
colorMapString = [];
h_plot = fcn_plotRoad_plotXYZI(XYZIdata, (plotFormat),  (colorMapString), (fig_num));
title(sprintf('Example %.0d: showing basic plotting',fig_num), 'Interpreter','none');

% Check results
assert(all(ishandle(h_plot(:))));

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
%% Test case: Plotting by specifying the color

fig_num = 20001; 
titleString = sprintf('Test case: Plotting by specifying the color');
fprintf(1,'Figure %.0f: %s\n',fig_num, titleString);
figure(fig_num); clf;

time = linspace(0,10,100)';
XYZIdata = [time sin(time) 1/25*(time-5).^2  cos(time)];

% Test the function
plotFormat = 'r';
colorMapString = [];
h_plot = fcn_plotRoad_plotXYZI(XYZIdata, (plotFormat),  (colorMapString), (fig_num));
title(sprintf('Example %.0d: showing user-defined color to produce colormap',fig_num), 'Interpreter','none');

% Check results
assert(all(ishandle(h_plot(:))));


%% Test case: Plotting by specifying the colorMap

fig_num = 20002; 
titleString = sprintf('Test case: Plotting by specifying the colorMap');
fprintf(1,'Figure %.0f: %s\n',fig_num, titleString);
figure(fig_num); clf;

time = linspace(0,10,100)';
XYZIdata = [time sin(time) 1/25*(time-5).^2  cos(time)];

% Test the function
plotFormat = [];
colorMapString = 'hot';
h_plot = fcn_plotRoad_plotXYZI(XYZIdata, (plotFormat),  (colorMapString), (fig_num));
title(sprintf('Example %.0d: showing user-defined color map',fig_num), 'Interpreter','none');

% Check results
good_indicies = ~isnan(h_plot);
assert(all(ishandle(h_plot(good_indicies,1))));


%% Test case: Plotting by specifying the linestyle

fig_num = 20003; 
titleString = sprintf('Test case: Plotting by specifying the linestyle');
fprintf(1,'Figure %.0f: %s\n',fig_num, titleString);
figure(fig_num); clf;

time = linspace(0,10,100)';
XYZIdata = [time sin(time) 1/25*(time-5).^2  cos(time)];

% Test the function
plotFormat = '-';
colorMapString = 'hot';
h_plot = fcn_plotRoad_plotXYZI(XYZIdata, (plotFormat),  (colorMapString), (fig_num));
title(sprintf('Example %.0d: showing use of a linestyle',fig_num), 'Interpreter','none');

% Check results
good_indicies = ~isnan(h_plot);
assert(all(ishandle(h_plot(good_indicies,1))));

%% Test case: Plotting by specifying the full plotFormat

fig_num = 20004; 
titleString = sprintf('Test case: Plotting by specifying the full plotFormat');
fprintf(1,'Figure %.0f: %s\n',fig_num, titleString);
figure(fig_num); clf;

time = linspace(0,10,100)';
XYZIdata = [time sin(time) 1/25*(time-5).^2  cos(time)];

% Test the function
clear plotFormat
plotFormat.LineStyle = ':';
plotFormat.LineWidth = 5;
plotFormat.Marker = '+';
plotFormat.MarkerSize = 10;
colorMapString = 'hot';
h_plot = fcn_plotRoad_plotXYZI(XYZIdata, (plotFormat),  (colorMapString), (fig_num));
title(sprintf('Example %.0d: showing use of a complex plotFormat',fig_num), 'Interpreter','none');

% Check results
good_indicies = ~isnan(h_plot);
assert(all(ishandle(h_plot(good_indicies,1))));

%% Test case: Plotting by specifying a reduced colormap (for speed)

fig_num = 20005; 
titleString = sprintf('Test case: Plotting by specifying a reduced colormap (for speed)');
fprintf(1,'Figure %.0f: %s\n',fig_num, titleString);
figure(fig_num); clf;

time = linspace(0,10,100)';
XYZIdata = [time sin(time) 1/25*(time-5).^2  cos(time)];

% Test the function
clear plotFormat
plotFormat.LineStyle = ':';
plotFormat.LineWidth = 5;
plotFormat.Marker = '+';
plotFormat.MarkerSize = 10;
colorMapString = 'hot';
colormapValues = colormap(colorMapString);
indicies_to_keep = (1:8:256)';
colormapValues = colormapValues(indicies_to_keep,:);

h_plot = fcn_plotRoad_plotXYZI(XYZIdata, (plotFormat),  (colormapValues), (fig_num));
title(sprintf('Example %.0d: showing use of a complex plotFormat',fig_num), 'Interpreter','none');

% Check results
good_indicies = find(~isnan(h_plot));
assert(all(ishandle(h_plot(good_indicies,1)))); %#ok<FNDSB>

%% Test case: Plotting by changing marker size, same colorfig_num 

fig_num = 20006; 
titleString = sprintf('Test case: Plotting by changing marker size, same colorfig_num');
fprintf(1,'Figure %.0f: %s\n',fig_num, titleString);
figure(fig_num); clf;

time = linspace(0,10,100)';
XYZIdata = [time sin(time) 1/25*(time-5).^2  cos(time)];

% Test the function
clear plotFormat
plotFormat.LineStyle = 'none';
plotFormat.LineWidth = 5;
plotFormat.Marker = '.';
plotFormat.MarkerSize = 10;
% colorMapString = 'turbo';

% Reduce the colormap
Ncolors = 40;
% colorMapMatrix = colormap(colorMapString);
% reducedColorMap = fcn_plotRoad_reduceColorMap(colorMapMatrix, Ncolors, -1);
reducedColorMap = repmat([0 0 0.5],Ncolors,1);

% Specify the sizes (must be same size as reducedColorMap)
markerSizeMatrix = 2*(1:Ncolors)';
plotFormat.MarkerSize = markerSizeMatrix;

[h_plot, indiciesInEachPlot]  = fcn_plotRoad_plotXYZI(XYZIdata, (plotFormat),  (reducedColorMap), (fig_num));
title(sprintf('Example %.0d: showing use of a complex plotFormat',fig_num), 'Interpreter','none');

% Was a figure created?
assert(all(ishandle(fig_num)));

% Check results
good_indicies = find(~isnan(h_plot));
assert(all(ishandle(h_plot(good_indicies,1)))); %#ok<FNDSB>

% Check that the number of indicies matches the amount of data in the plot
for ith_handle = 1:length(h_plot)
    if ~isnan(h_plot(ith_handle))
        dataPlotted = get(h_plot(ith_handle),'XData');
        NumInPlot = length(dataPlotted);
        assert(isequal(NumInPlot,length(indiciesInEachPlot{ith_handle})));
    end
end

%% BASIC example 99 - specifying the full plotFormat, including reduced color map and changing marker size 

fig_num = 20007; 
titleString = sprintf('Test case: Plotting by specifying the full plotFormat, including reduced color map and changing marker size ');
fprintf(1,'Figure %.0f: %s\n',fig_num, titleString);
figure(fig_num); clf;

time = linspace(0,10,100)';
XYZIdata = [time sin(time) 1/25*(time-5).^2  cos(time)];

% Test the function
clear plotFormat
plotFormat.LineStyle = 'none';
plotFormat.LineWidth = 5;
plotFormat.Marker = '.';
plotFormat.MarkerSize = 10;
colorMapString = 'turbo';

% Reduce the colormap
Ncolors = 40;
colorMapMatrix = colormap(colorMapString);
reducedColorMap = fcn_plotRoad_reduceColorMap(colorMapMatrix, Ncolors, -1);

% Specify the sizes (must be same size as reducedColorMap)
markerSizeMatrix = 2*(1:Ncolors)';
plotFormat.MarkerSize = markerSizeMatrix;

[h_plot, indiciesInEachPlot]  = fcn_plotRoad_plotXYZI(XYZIdata, (plotFormat),  (reducedColorMap), (fig_num));
title(sprintf('Example %.0d: showing use of a complex plotFormat',fig_num), 'Interpreter','none');

% Was a figure created?
assert(all(ishandle(fig_num)));

% Check results
good_indicies = find(~isnan(h_plot));
assert(all(ishandle(h_plot(good_indicies,1))));

% Check that the number of indicies matches the amount of data in the plot
for ith_handle = 1:length(h_plot)
    if ~isnan(h_plot(ith_handle))
        dataPlotted = get(h_plot(ith_handle),'XData');
        NumInPlot = length(dataPlotted);
        assert(isequal(NumInPlot,length(indiciesInEachPlot{ith_handle})));
    end
end

%% Test case: Plotting when input data (XYZIdata) contains NaNs

fig_num = 20008; 
titleString = sprintf('Test case: Plotting when input data (XYZIdata) contains NaNs');
fprintf(1,'Figure %.0f: %s\n',fig_num, titleString);
figure(fig_num); clf;

% NaN matrix
NaN_matrix = nan(5,4); 

time = linspace(0,10,100)';
XYZIdata_noNaNs = [time sin(time) 1/25*(time-5).^2  cos(time)];

XYZIdata = [XYZIdata_noNaNs; NaN_matrix];

% Test the function
plotFormat = 'r';
colorMapString = [];
h_plot = fcn_plotRoad_plotXYZI(XYZIdata, (plotFormat),  (colorMapString), (fig_num));
title(sprintf('Example %.0d: showing user-defined color to produce colormap',fig_num), 'Interpreter','none');

% Check results
assert(all(ishandle(h_plot(:))));


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

time = linspace(0,10,100)';
XYZIdata = [time sin(time) 1/25*(time-5).^2  cos(time)];

% Test the function
plotFormat = [];
colorMapString = [];
fcn_plotRoad_plotXYZI(XYZIdata, (plotFormat),  (colorMapString), ([]));

% Make sure plot did NOT open up
figHandles = get(groot, 'Children');
assert(~any(figHandles==fig_num));
close(figure(1))

%% Basic example - NO FIGURE

fig_num = 80002;
fprintf(1,'Figure: %.0f: FAST mode, fig_num=-1\n',fig_num);
figure(fig_num); close(fig_num);

time = linspace(0,10,100)';
XYZIdata = [time sin(time) 1/25*(time-5).^2  cos(time)];

% Test the function
plotFormat = [];
colorMapString = [];
fcn_plotRoad_plotXYZI(XYZIdata, (plotFormat),  (colorMapString), (-1));

% Make sure plot did NOT open up
figHandles = get(groot, 'Children');
assert(~any(figHandles==fig_num));
close(figure(1))

%% Compare speeds of pre-calculation versus post-calculation versus a fast variant

fig_num = 80003;
fprintf(1,'Figure: %.0f: FAST mode comparisons\n',fig_num);
figure(fig_num); close(fig_num);

time = linspace(0,10,100)';
XYZIdata = [time sin(time) 1/25*(time-5).^2  cos(time)];

% Test the function
plotFormat = [];
colorMapString = [];

Niterations = 100;

% Do calculation without pre-calculation
tic;
for ith_test = 1:Niterations

    % Test the function
    fcn_plotRoad_plotXYZI(XYZIdata, (plotFormat),  (colorMapString), ([]));


end
slow_method = toc;

% Do calculation with pre-calculation, FAST_MODE on
tic;

for ith_test = 1:Niterations

    % Test the function
    fcn_plotRoad_plotXYZI(XYZIdata, (plotFormat),  (colorMapString), (-1));



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
close(figure(1))

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

    %% Should throw error because XYdata has only one column

    fig_num = 90001;
    fprintf(1,'Figure: %.0f:Bug case\n',fig_num);
    figure(fig_num); close(fig_num);

    time = linspace(0,10,100)';
    XYZIdata = [time sin(time) 1/25*(time-5).^2  cos(time)];

    % Test the function
    plotFormat = [];
    colorMapString = [];
    fcn_plotRoad_plotXYZI(XYZIdata(:,1:3), (plotFormat),  (colorMapString), (fig_num));


    % Make sure plot did NOT open up
    figHandles = get(groot, 'Children');
    assert(~any(figHandles==fig_num));

end



% %% testing speed of function
% 
% 
% 
% time = linspace(0,10,100)';
% XYZIdata = [time sin(time) 1/25*(time-5).^2  cos(time)];
% 
% 
% % Test the function
% clear plotFormat
% plotFormat.LineStyle = ':';
% plotFormat.LineWidth = 5;
% plotFormat.Marker = '+';
% plotFormat.MarkerSize = 10;
% colorMapString = 'hot';
% 
% % Speed Test Calculation
% fig_num=[];
% REPS=5; minTimeSlow=Inf;
% tic;
% 
% % Slow mode calculation
% for i=1:REPS
%     tstart=tic;
%     h_plot = fcn_plotRoad_plotXYZI(XYZIdata, (plotFormat),  (colorMapString), (fig_num));
%     telapsed=toc(tstart);
%     minTimeSlow=min(telapsed,minTimeSlow);
% end
% averageTimeSlow=toc/REPS;
% %slow mode END
% 
% % Fast Mode Calculation
% fig_num = -1;
% minTimeFast = Inf;
% tic;
% for i=1:REPS
%     tstart = tic;
%     h_plot = fcn_plotRoad_plotXYZI(XYZIdata, (plotFormat),  (colorMapString), (fig_num));
%     telapsed = toc(tstart);
%     minTimeFast = min(telapsed,minTimeFast);
% end
% averageTimeFast = toc/REPS;
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
% %Assertion on averageTime NOTE: Due to the variance, there is a chance that
% %the assertion will fail.
% assert(averageTimeFast<averageTimeSlow);