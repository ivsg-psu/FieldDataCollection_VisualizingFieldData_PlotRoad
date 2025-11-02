%% script_test_fcn_plotRoad_plotLL.m
% This is a script to exercise the function: fcn_plotRoad_plotLL.m
% This function was written on 2023_06_07 by S. Brennan, sbrennan@psu.edu
% and Vaishnavi Wagh, vbw5054@psu.edu

% Revision history:
% 2023_06_07 - S. Brennan
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

%% DEMO case: only opens and initializes plot

fig_num = 10001; 
titleString = sprintf('DEMO case: only opens and initializes plot');
fprintf(1,'Figure %.0f: %s\n',fig_num, titleString);
figure(fig_num); clf;

% call the function with empty inputs, and it should create the plot with
% the focus on the test track, satellite view
h_geoplot = fcn_plotRoad_plotLL;

% Check results
assert(ishandle(h_geoplot));

%% DEMO case: all defaults, no data. Also opens and initializes plot

fig_num = 10002; 
titleString = sprintf('DEMO case: all defaults, no data. Also opens and initializes plot');
fprintf(1,'Figure %.0f: %s\n',fig_num, titleString);
figure(fig_num); clf;

LLdata = [];

% Test the function
plotFormat = [];
h_geoplot = fcn_plotRoad_plotLL((LLdata), (plotFormat), (fig_num));

title(sprintf('Example %.0d: showing initializing plot to figure number',fig_num), 'Interpreter','none');

% Check results
assert(ishandle(h_geoplot));

%% DEMO case: ppens and inializes plot to the data point

fig_num = 10003; 
titleString = sprintf('DEMO case: ppens and inializes plot to the data point');
fprintf(1,'Figure %.0f: %s\n',fig_num, titleString);
figure(fig_num); clf;

LLdata = [40.43073, -79.87261, 0];
% LLdata = [40.86368573, -77.83592832, 0];

% Test the function
plotFormat = [];
h_geoplot = fcn_plotRoad_plotLL((LLdata), (plotFormat), (fig_num));

title(sprintf('Example %.0d: showing initializing plot to figure number',fig_num), 'Interpreter','none');

% Check results
assert(ishandle(h_geoplot));

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

%% Test case: Plot LL data 

% Plot data onto an empty figure. This will force the code to check to see
% if the figure has data inside it, and if not, it will prepare the figure
% the same way as a new figure.

fig_num = 20001;
titleString = sprintf('Test case: Plot LL data');
fprintf(1,'Figure %.0f: %s\n',fig_num, titleString);
figure(fig_num); clf;

% Fill in some dummy data (East curve from scenario 1_1)

data3 = [
    -77.83108116099999,40.86426763900005,0
    -77.83098509099995,40.86432365200005,0
    -77.83093857199998,40.86435301300003,0
    -77.83087253399998,40.86439877000004,0
    -77.83080882499996,40.86444684500003,0
    -77.83075077399997,40.86449883100005,0
    -77.83069596999997,40.86455288200005,0
    -77.83064856399994,40.86461089600004,0
    -77.83060707999994,40.86467151800008,0
    -77.83057291199998,40.86473474700006,0
    -77.83054614799994,40.86479999100004,0
    -77.83052443199995,40.86486635700004,0
    -77.83051053899999,40.86493399600005,0
    -77.83050385699994,40.86500232600008,0
    -77.83050469499995,40.86507096000003,0
    -77.83051096999998,40.86513880700005,0
    -77.83051548199995,40.86516167900004,0
    -77.83052813799998,40.86520696400004,0
    -77.83055303799995,40.86527300500006,0
    -77.83058410099994,40.86533739600003,0
    -77.83062308399997,40.86539921800005,0
    -77.83066833899994,40.86545839100006,0
    -77.83071974699999,40.86551445800006,0
    -77.83077704999994,40.86556697700007,0
    -77.83084030799995,40.86561520700008,0
    -77.83090661499995,40.86566081200004,0
    -77.83097722599996,40.86570252900003,0
    -77.83105323399997,40.86573830000003,0
    -77.83113270799998,40.86576916300004,0
    -77.83121508099998,40.86579495800004,0
    -77.83129931099995,40.86581674200005,0
    -77.83138581099996,40.86583237300005,0
    -77.83147340899995,40.86584355000008,0
    -77.83156186599996,40.86584960200003,0
    -77.83165067999994,40.86585007100007,0
    -77.83173939599999,40.86584604200004,0
    -77.83182788999994,40.86583809200005,0
    -77.83191641299999,40.86582709200007,0
    -77.83198191299994,40.86581637600005,0
    -77.83211176999998,40.86579081600007,0
    ];

% NOTE: above data is in BAD column order, so we
% have to manually rearrange it.
LLdata = [data3(:,2), data3(:,1), data3(:,3)];

% Test the function
plotFormat = [];
h_geoplot = fcn_plotRoad_plotLL((LLdata), (plotFormat), (fig_num));

title(sprintf('Example %.0d: showing plotting of data',fig_num), 'Interpreter','none');

% Check results
assert(ishandle(h_geoplot));

%% Test case: plot data onto an existing figure

fig_num = 20002;
titleString = sprintf('Test case: Plot data onto an existing figure');
fprintf(1,'Figure %.0f: %s\n',fig_num, titleString);
figure(fig_num); clf;

% call the function with empty inputs, but with a figure number,
% and it should create the plot with
% the focus on the test track, satellite view
LLdata = [];

% Test the function
plotFormat = [];
h_geoplot = fcn_plotRoad_plotLL((LLdata), (plotFormat), (fig_num));

% Check results
assert(ishandle(h_geoplot));


% Now call the function again to plot data into an existing figure to check
% that this works
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
LLdata = [data3(:,2), data3(:,1), data3(:,3)];

% Test the function
plotFormat = [];
h_geoplot = fcn_plotRoad_plotLL((LLdata), (plotFormat), (fig_num));

title(sprintf('Example %.0d: showing plotting of data on existing figure',fig_num), 'Interpreter','none');

% Check results
assert(ishandle(h_geoplot));

%% Test case: plot data with simple formatting string

fig_num = 20003;
titleString = sprintf('Test case: Plot data with simple formatting string');
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
LLdata = [data3(:,2), data3(:,1), data3(:,3)];

% Test the function
plotFormat = 'y.-';
h_geoplot = fcn_plotRoad_plotLL((LLdata), (plotFormat), (fig_num));

title(sprintf('Example %.0d: showing use of simple formatting string',fig_num), 'Interpreter','none');

% Check results
assert(ishandle(h_geoplot));

%% Test case: Plot data with user-given color vector

fig_num = 20004;
titleString = sprintf('Test case: Plot data with user-given color vector');
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
LLdata = [data3(:,2), data3(:,1), data3(:,3)];

% Test the function
plotFormat = [0 1 0];
h_geoplot = fcn_plotRoad_plotLL((LLdata), (plotFormat), (fig_num));

title(sprintf('Example %.0d: showing use of color vector',fig_num), 'Interpreter','none');

% Check results
assert(ishandle(h_geoplot));


%% Test case: Plot data with structure input

fig_num = 20005;
titleString = sprintf('Test case: Plot data with structure input');
fprintf(1,'Figure %.0f: %s\n',fig_num, titleString);
figure(fig_num); clf;

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
fcn_plotRoad_plotHeadTailXY(XYdata, fig_num, plotFormat);

title(sprintf('Example %.0d: showing  color numbers',fig_num), 'Interpreter','none');

% Check results
assert(ishandle(h_plot));

%% Test case: Start of the PennDOT site 1 area

fig_num = 20005;
titleString = sprintf('Test case: Start of the PennDOT site 1 area');
fprintf(1,'Figure %.0f: %s\n',fig_num, titleString);
figure(fig_num); clf;

% Fill in data
LLdata = [
    40.4305,-79.873,0
];


% Test the function
clear plotFormat
plotFormat.Color = [0 0.7 0];
plotFormat.Marker = '.';
plotFormat.MarkerSize = 10;
plotFormat.LineStyle = '-';
plotFormat.LineWidth = 3;
h_geoplot = fcn_plotRoad_plotLL((LLdata), (plotFormat), (fig_num));
% set(gca,'MapCenter',LLdata(1,1:2));

title(sprintf('Example %.0d: showing use of format structure',fig_num), 'Interpreter','none');

% Check results
assert(ishandle(h_geoplot));

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
fprintf(1, 'Plot function - No fast mode tests')

% %% Basic example - NO FIGURE
% 
% fig_num = 80001;
% fprintf(1,'Figure: %.0f: FAST mode, empty fig_num\n',fig_num);
% figure(fig_num); close(fig_num);
% 
% 
% % Make sure plot did NOT open up
% figHandles = get(groot, 'Children');
% assert(~any(figHandles==fig_num));
% 
% 
% %% Basic example - NO FIGURE
% 
% fig_num = 80002;
% fprintf(1,'Figure: %.0f: FAST mode, fig_num=-1\n',fig_num);
% figure(fig_num); close(fig_num);
% 
% 
% % Make sure plot did NOT open up
% figHandles = get(groot, 'Children');
% assert(~any(figHandles==fig_num));
% 
% %% Compare speeds of pre-calculation versus post-calculation versus a fast variant
% 
% fig_num = 80003;
% fprintf(1,'Figure: %.0f: FAST mode comparisons\n',fig_num);
% figure(fig_num); close(fig_num);
% 
% Niterations = 100;
% 
% % Do calculation without pre-calculation
% tic;
% for ith_test = 1:Niterations
% 
% 
% 
% end
% slow_method = toc;
% 
% % Do calculation with pre-calculation, FAST_MODE on
% tic;
% 
% for ith_test = 1:Niterations
% 
% 
% 
% end
% fast_method = toc;
% 
% 
% % Plot results as bar chart
% figure(373737);
% clf;
% hold on;
% 
% X = categorical({'Normal mode','Fast mode'});
% X = reordercats(X,{'Normal mode','Fast mode'}); % Forces bars to appear in this exact order, not alphabetized
% Y = [slow_method fast_method ]*1000/Niterations;
% bar(X,Y)
% ylabel('Execution time (Milliseconds)')
% 
% % Make sure plot did NOT open up
% figHandles = get(groot, 'Children');
% assert(~any(figHandles==fig_num));

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

% %% Fail conditions
% if 1==0
% 
%     %% Should throw error because XYdata must have 2 columns
% 
%     fig_num = 90001;
%     fprintf(1,'Figure: %.0f:Bug case\n',fig_num);
%     figure(fig_num); close(fig_num);
% 
%     % Make sure plot did NOT open up
%     figHandles = get(groot, 'Children');
%     assert(~any(figHandles==fig_num));
% end


% %% testing speed of function
% 
% 
% % Now call the function again to plot data into an existing figure to check
% % that this works
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
% LLdata = [data3(:,2), data3(:,1), data3(:,3)];
% 
% % Test the function
% clear plotFormat
% plotFormat.Color = [0 1 1];
% plotFormat.Marker = '.';
% plotFormat.MarkerSize = 10;
% plotFormat.LineStyle = '-';
% plotFormat.LineWidth = 3;
% labelText = 'Test of text';
% 
% % Speed Test Calculation
% fig_num=[];
% REPS=5; minTimeSlow=Inf;
% tic;
% % Slow mode calculation - code copied from plotVehicleXYZ
% for i=1:REPS
%     tstart=tic;
%     h_geoplot = fcn_plotRoad_plotLL((LLdata), (plotFormat), (fig_num));
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
%     h_geoplot = fcn_plotRoad_plotLL((LLdata), (plotFormat), (fig_num));
%     telapsed = toc(tstart);
%     minTimeFast = min(telapsed,minTimeFast);
% end
% averageTimeFast = toc/REPS;
% 
% % Display Console Comparison
% if 1==1
%     fprintf(1,'\n\nComparison of fcn_plotRoad_plotLL without speed setting (slow) and with speed setting (fast):\n');
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
% assert(averageTimeFast<2*averageTimeSlow);