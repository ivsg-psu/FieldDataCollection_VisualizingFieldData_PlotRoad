%% script_test_fcn_plotRoad_plotXY
% This is a script to exercise the function: fcn_plotRoad_plotXY
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
XYdata = [time sin(time)];

% Test the function
plotFormat = [];
h_plot = fcn_plotRoad_plotXY(XYdata, (plotFormat), (fig_num));
title(sprintf('Example %.0d: showing basic plotting',fig_num), 'Interpreter','none');

% Check results
assert(ishandle(h_plot));

%% DEMO case: Plotting with basic plot string

fig_num = 10002; 
titleString = sprintf('DEMO case: Plotting with basic plot string)');
fprintf(1,'Figure %.0f: %s\n',fig_num, titleString);
figure(fig_num); clf;

time = linspace(0,10,100)';
XYdata = [time sin(time)];

% Test the function
plotFormat = 'r.-';
h_plot = fcn_plotRoad_plotXY(XYdata, (plotFormat), (fig_num));
title(sprintf('Example %.0d: showing basic plot string',fig_num), 'Interpreter','none');

% Check results
assert(ishandle(h_plot));

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

%% Test case: Plotting with color numbers
% Load the first marker cluster - call it by name

fig_num = 20001;
titleString = sprintf('Test case: Plotting with color numbers');
fprintf(1,'Figure %.0f: %s\n',fig_num, titleString);
figure(fig_num); close(fig_num);

time = linspace(0,10,100)';
XYdata = [time sin(time)];

% Test the function
plotFormat = [1 0.4 1];
h_plot = fcn_plotRoad_plotXY(XYdata, (plotFormat), (fig_num));
title(sprintf('Example %.0d: showing  color numbers',fig_num), 'Interpreter','none');

% Check results
assert(ishandle(h_plot));

%% Test case: Plotting with structure input

fig_num = 20002;
titleString = sprintf('Test case: Plotting with structure input');
fprintf(1,'Figure %.0f: %s\n',fig_num, titleString);
figure(fig_num); close(fig_num);

time = linspace(0,10,100)';
XYdata = [time sin(time)];

% Test the function
clear plotFormat
plotFormat.Color = [0 0.7 0];
plotFormat.Marker = '.';
plotFormat.MarkerSize = 10;
plotFormat.LineStyle = '-';
plotFormat.LineWidth = 3;
h_plot = fcn_plotRoad_plotXY(XYdata, (plotFormat), (fig_num));
title(sprintf('Example %.0d: showing  color numbers',fig_num), 'Interpreter','none');

% Check results
assert(ishandle(h_plot));


%% Test case: Plotting when input data (XYdata) contains NaNs

fig_num = 20003;
titleString = sprintf('Test case: Plotting when input data (XYdata) contains NaNs');
fprintf(1,'Figure %.0f: %s\n',fig_num, titleString);
figure(fig_num); close(fig_num);

NaN_matrix = nan(5,2); 

time = linspace(0,10,100)';
XYdata_noNaNs = [time sin(time)];

% XY data with NaNs
XYdata = [XYdata_noNaNs; NaN_matrix]; 


% Test the function
clear plotFormat
plotFormat.Color = [0 0.7 0];
plotFormat.Marker = '.';
plotFormat.MarkerSize = 10;
plotFormat.LineStyle = '-';
plotFormat.LineWidth = 3;
h_plot = fcn_plotRoad_plotXY(XYdata, (plotFormat), (fig_num));
title(sprintf('Example %.0d: showing  color numbers',fig_num), 'Interpreter','none');

% Check results
assert(ishandle(h_plot));

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
XYdata = [time sin(time)];

% Test the function
clear plotFormat
plotFormat.Color = [0 0.7 0];
plotFormat.Marker = '.';
plotFormat.MarkerSize = 10;
plotFormat.LineStyle = '-';
plotFormat.LineWidth = 3;

fcn_plotRoad_plotXY(XYdata, (plotFormat), ([]));

% Make sure plot did NOT open up
figHandles = get(groot, 'Children');
assert(~any(figHandles==fig_num));


%% Basic example - NO FIGURE

fig_num = 80002;
fprintf(1,'Figure: %.0f: FAST mode, fig_num=-1\n',fig_num);
figure(fig_num); close(fig_num);

time = linspace(0,10,100)';
XYdata = [time sin(time)];

% Test the function
clear plotFormat
plotFormat.Color = [0 0.7 0];
plotFormat.Marker = '.';
plotFormat.MarkerSize = 10;
plotFormat.LineStyle = '-';
plotFormat.LineWidth = 3;

fcn_plotRoad_plotXY(XYdata, (plotFormat), (-1));


% Make sure plot did NOT open up
figHandles = get(groot, 'Children');
assert(~any(figHandles==fig_num));

%% Compare speeds of pre-calculation versus post-calculation versus a fast variant

fig_num = 80003;
fprintf(1,'Figure: %.0f: FAST mode comparisons\n',fig_num);
figure(fig_num); close(fig_num);

time = linspace(0,10,100)';
XYdata = [time sin(time)];

% Test the function
clear plotFormat
plotFormat.Color = [0 0.7 0];
plotFormat.Marker = '.';
plotFormat.MarkerSize = 10;
plotFormat.LineStyle = '-';
plotFormat.LineWidth = 3;

Niterations = 100;

% Do calculation without pre-calculation
tic;
for ith_test = 1:Niterations

    fcn_plotRoad_plotXY(XYdata, (plotFormat), ([]));

end
slow_method = toc;

% Do calculation with pre-calculation, FAST_MODE on
tic;

for ith_test = 1:Niterations

    fcn_plotRoad_plotXY(XYdata, (plotFormat), (-1));

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

    %% Should throw error because XYdata has only one column

    fig_num = 90001;
    fprintf(1,'Figure: %.0f:Bug case\n',fig_num);
    figure(fig_num); close(fig_num);

    time = linspace(0,10,100)';
    XYdata = [time sin(time)];

    % Test the function
    clear plotFormat
    plotFormat.Color = [0 0.7 0];
    plotFormat.Marker = '.';
    plotFormat.MarkerSize = 10;
    plotFormat.LineStyle = '-';
    plotFormat.LineWidth = 3;

    fcn_plotRoad_plotXY(XYdata(:,1), (plotFormat), (fig_num));

    % Make sure plot did NOT open up
    figHandles = get(groot, 'Children');
    assert(~any(figHandles==fig_num));

end

% %% testing speed of function
% 
% 
% time = linspace(0,10,100)';
% XYdata = [time sin(time)];
% 
% % Test the function
% clear plotFormat
% plotFormat.Color = [0 0.7 0];
% plotFormat.Marker = '.';
% plotFormat.MarkerSize = 10;
% plotFormat.LineStyle = '-';
% plotFormat.LineWidth = 3;
% 
% 
% % Speed Test Calculation
% fig_num=[];
% REPS=5; minTimeSlow=Inf;
% tic;
% 
% % Slow mode calculation
% for i=1:REPS
%     tstart=tic;
%     h_plot = fcn_plotRoad_plotXY(XYdata, (plotFormat), (fig_num));
%     telapsed=toc(tstart);
%     minTimeSlow=min(telapsed,minTimeSlow);
% end
% averageTimeSlow=toc/REPS;
% % Slow mode END
% 
% close all;
% 
% % Fast Mode Calculation
% fig_num = -1;
% minTimeFast = Inf;
% tic;
% for i=1:REPS
%     tstart = tic;
%     h_plot = fcn_plotRoad_plotXY(XYdata, (plotFormat), (fig_num));
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
% % assert(averageTimeFast<2*averageTimeSlow);