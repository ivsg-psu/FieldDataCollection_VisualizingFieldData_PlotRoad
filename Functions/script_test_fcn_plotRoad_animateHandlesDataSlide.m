%% script_test_fcn_plotRoad_animateHandlesDataSlide
% This is a script to exercise the function:
% fcn_plotRoad_animateHandlesDataSlide
% This function was written on 2024_08_15 by S. Brennan, sbrennan@psu.edu


% Revision history:
% 
% 2024_08_15 - S. Brennan
% -- Wrote the code originally
% 2025_10_31 - Aneesh Batchu
% -- Updated the script to the latest format
% 2025_11_06 - Aneesh Batchu
% -- Added a test case with NaNs in the input data

% NOTE: There are no plots in the debug section of the function. 

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


%% DEMO case: Showing animation of simple points in XY 

fig_num = 10001; 
titleString = sprintf('DEMO case: Showing animation of simple points in XY');
fprintf(1,'Figure %.0f: %s\n',fig_num, titleString);
figure(fig_num); clf;

% Fill in data
time = linspace(0,15,100)';
ydata = sin(time);

% Fill in some plot handles by plotting the first Ncolor points
Ncolors = 4;
colorMapMatrix = colormap('winter');
reducedColorMap = fcn_plotRoad_reduceColorMap(colorMapMatrix, Ncolors, -1);
h_plots = zeros(Ncolors,1);

for ith_plot = 1:Ncolors
    dataToPlot = [time(ith_plot,1) ydata(ith_plot,1)];
    h_plots(ith_plot) = fcn_plotRoad_plotXY(dataToPlot, (reducedColorMap(ith_plot,:)), (fig_num));
end
title(sprintf('Example %.0d: fcn_plotRoad_animateHandlesDataSlide',fig_num), 'Interpreter','none');
subtitle('Showing animation of XY data');

%%%% Do the animation 
handleList = h_plots;
Xdata = time;
Ydata = ydata;
afterPlotColor = [];
for timeIndex = 1:400
    fcn_plotRoad_animateHandlesDataSlide(timeIndex, handleList, Xdata, Ydata, (afterPlotColor), (fig_num))
    pause(0.02);
end

% Make sure plot opened up
assert(isequal(get(gcf,'Number'),fig_num));

%% DEMO case: Do an animation of line segments in XY

fig_num = 10002; 
titleString = sprintf('DEMO case: Do an animation of line segments in XY');
fprintf(1,'Figure %.0f: %s\n',fig_num, titleString);
figure(fig_num); clf;

% Fill in data
Npoints = 200;
time = linspace(0,15,Npoints)';
ydata = sin(time);

clear plotFormat
plotFormat.Color = [0 0.7 0];
plotFormat.Marker = '.';
plotFormat.MarkerSize = 10;
plotFormat.LineStyle = '-';
plotFormat.LineWidth = 3;

% Fill in some plot handles by plotting the first Ncolor points
Ncolors = 5;
colorMapMatrix = colormap('turbo');
reducedColorMap = fcn_plotRoad_reduceColorMap(colorMapMatrix, Ncolors, -1);
h_plots = zeros(Ncolors,1);
range=4;

for ith_plot = 1:Ncolors
    dataToPlot = [time(ith_plot:ith_plot+range,1) ydata(ith_plot:ith_plot+range,1)];
    plotFormat.Color = reducedColorMap(ith_plot,:);
    h_plots(ith_plot) = fcn_plotRoad_plotXY(dataToPlot, (plotFormat), (fig_num));
end
title(sprintf('Example %.0d: fcn_plotRoad_animateHandlesDataSlide',fig_num), 'Interpreter','none');
subtitle('Showing animation of XY data');

%%%% Do the animation 
handleList = h_plots;
Xdata = time;
Ydata = ydata;
afterPlotColor = [];
for timeIndex = 1:406
    fcn_plotRoad_animateHandlesDataSlide(timeIndex, handleList, Xdata, Ydata, (afterPlotColor), (fig_num))
    pause(0.02);
end

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

%% Test case: Points in XY with trail

fig_num = 20001;
titleString = sprintf('Test case: Points in XY with trail');
fprintf(1,'Figure %.0f: %s\n',fig_num, titleString);
figure(fig_num); clf;

% Fill in data
Npoints = 200;
time = linspace(0,15,Npoints)';
ydata = sin(time);

clear plotFormat
plotFormat.Color = [0 0.7 0];
plotFormat.Marker = '.';
plotFormat.MarkerSize = 10;
plotFormat.LineStyle = '-';
plotFormat.LineWidth = 3;

% Fill in some plot handles by plotting the first Ncolor points
Ncolors = 5;
colorMapMatrix = colormap('turbo');
reducedColorMap = fcn_plotRoad_reduceColorMap(colorMapMatrix, Ncolors, -1);
h_plots = zeros(Ncolors,1);
range=4;

for ith_plot = 1:Ncolors
    dataToPlot = [time(ith_plot:ith_plot+range,1) ydata(ith_plot:ith_plot+range,1)];
    plotFormat.Color = reducedColorMap(ith_plot,:);
    h_plots(ith_plot) = fcn_plotRoad_plotXY(dataToPlot, (plotFormat), (fig_num));
end
title(sprintf('Example %.0d: fcn_plotRoad_animateHandlesDataSlide',fig_num), 'Interpreter','none');
subtitle('Showing animation of XY data');


handleList = h_plots;
Xdata = time;
Ydata = ydata;
afterPlotColor = [0.5 0.5 0.5];
for timeIndex = 1:406
    fcn_plotRoad_animateHandlesDataSlide(timeIndex, handleList, Xdata, Ydata, (afterPlotColor), (fig_num))
    pause(0.02);
end

% Make sure plot opened up
assert(isequal(get(gcf,'Number'),fig_num));

%% Test case: geoplot XY with trail

fig_num = 20002;
titleString = sprintf('Test case: geoplot XY with trail');
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


clear plotFormat
plotFormat.Color = [0 0.7 0];
plotFormat.Marker = '.';
plotFormat.MarkerSize = 10;
plotFormat.LineStyle = '-';
plotFormat.LineWidth = 3;

% Fill in some plot handles by plotting the first Ncolor points
Ncolors = 5;
colorMapMatrix = colormap('turbo');
reducedColorMap = fcn_plotRoad_reduceColorMap(colorMapMatrix, Ncolors, -1);
h_geoplots = zeros(Ncolors,1);
range=4;

for ith_plot = 1:Ncolors
    dataToPlot = [LLdata(ith_plot:ith_plot+range,1) LLdata(ith_plot:ith_plot+range,2)];
    plotFormat.Color = reducedColorMap(ith_plot,:);
    h_geoplots(ith_plot) = fcn_plotRoad_plotLL(dataToPlot, (plotFormat), (fig_num));
end
title(sprintf('Example %.0d: fcn_plotRoad_animateHandlesDataSlide',fig_num), 'Interpreter','none');
subtitle('Showing geoplot animation of XY data');

%%%% animate results
handleList = h_geoplots;
Xdata = LLdata(:,1);
Ydata = LLdata(:,2);
afterPlotColor = [1 1 0]; % Yellow
for timeIndex = 1:40
    fcn_plotRoad_animateHandlesDataSlide(timeIndex, handleList, Xdata, Ydata, (afterPlotColor), (fig_num))
    pause(0.02);
end

% Make sure plot opened up
assert(isequal(get(gcf,'Number'),fig_num));


%% Test case: Plotting when input data contains NaNs

fig_num = 20001;
titleString = sprintf('Test case: Plotting when input data contains NaNs');
fprintf(1,'Figure %.0f: %s\n',fig_num, titleString);
figure(fig_num); clf;

% Fill in data
Npoints = 200;
time = linspace(0,15,Npoints)';
ydata = sin(time);

clear plotFormat
plotFormat.Color = [0 0.7 0];
plotFormat.Marker = '.';
plotFormat.MarkerSize = 10;
plotFormat.LineStyle = '-';
plotFormat.LineWidth = 3;

% Fill in some plot handles by plotting the first Ncolor points
Ncolors = 5;
colorMapMatrix = colormap('turbo');
reducedColorMap = fcn_plotRoad_reduceColorMap(colorMapMatrix, Ncolors, -1);
h_plots = zeros(Ncolors,1);
range=4;

for ith_plot = 1:Ncolors
    dataToPlot = [time(ith_plot:ith_plot+range,1) ydata(ith_plot:ith_plot+range,1)];
    plotFormat.Color = reducedColorMap(ith_plot,:);
    h_plots(ith_plot) = fcn_plotRoad_plotXY(dataToPlot, (plotFormat), (fig_num));
end
title(sprintf('Example %.0d: fcn_plotRoad_animateHandlesDataSlide',fig_num), 'Interpreter','none');
subtitle('Showing animation of XY data');


handleList = h_plots;
Xdata = [time; NaN];
Ydata = [ydata; NaN];
afterPlotColor = [0.5 0.5 0.5];
for timeIndex = 1:406
    fcn_plotRoad_animateHandlesDataSlide(timeIndex, handleList, Xdata, Ydata, (afterPlotColor), (fig_num))
    pause(0.02);
end

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
fprintf(1,'Not applicable - only a plotting function\n');

%% testing speed of function
% Not applicable - only a plotting function

% %% Basic example - EMPTY FIGURE NUMBER 
% 
% fig_num = 80001;
% fprintf(1,'Figure: %.0f: FAST mode, empty fig_num\n',fig_num);
% figure(fig_num); close(fig_num);
% 
% % Fill in data
% Npoints = 200;
% time = linspace(0,15,Npoints)';
% ydata = sin(time);
% 
% clear plotFormat
% plotFormat.Color = [0 0.7 0];
% plotFormat.Marker = '.';
% plotFormat.MarkerSize = 10;
% plotFormat.LineStyle = '-';
% plotFormat.LineWidth = 3;
% 
% % Fill in some plot handles by plotting the first Ncolor points
% Ncolors = 5;
% colorMapMatrix = colormap('turbo');
% reducedColorMap = fcn_plotRoad_reduceColorMap(colorMapMatrix, Ncolors, -1);
% h_plots = zeros(Ncolors,1);
% range=4;
% 
% for ith_plot = 1:Ncolors
%     dataToPlot = [time(ith_plot:ith_plot+range,1) ydata(ith_plot:ith_plot+range,1)];
%     plotFormat.Color = reducedColorMap(ith_plot,:);
%     h_plots(ith_plot) = fcn_plotRoad_plotXY(dataToPlot, (plotFormat), (fig_num));
% end
% title(sprintf('Example %.0d: fcn_plotRoad_animateHandlesDataSlide',fig_num), 'Interpreter','none');
% subtitle('Showing animation of XY data');
% 
% 
% handleList = h_plots;
% Xdata = time;
% Ydata = ydata;
% afterPlotColor = [0.5 0.5 0.5];
% for timeIndex = 1:406
%     fcn_plotRoad_animateHandlesDataSlide(timeIndex, handleList, Xdata, Ydata, (afterPlotColor), ([]))
%     pause(0.02);
% end
% 
% % Make sure plot opened up
% assert(isequal(get(gcf,'Number'),fig_num));
% 
% %% Basic example - "-1" as FIGURE NUMBER
% 
% fig_num = 80002;
% fprintf(1,'Figure: %.0f: FAST mode, fig_num=-1\n',fig_num);
% figure(fig_num); close(fig_num);
% 
% % Fill in data
% Npoints = 200;
% time = linspace(0,15,Npoints)';
% ydata = sin(time);
% 
% clear plotFormat
% plotFormat.Color = [0 0.7 0];
% plotFormat.Marker = '.';
% plotFormat.MarkerSize = 10;
% plotFormat.LineStyle = '-';
% plotFormat.LineWidth = 3;
% 
% % Fill in some plot handles by plotting the first Ncolor points
% Ncolors = 5;
% colorMapMatrix = colormap('turbo');
% reducedColorMap = fcn_plotRoad_reduceColorMap(colorMapMatrix, Ncolors, -1);
% h_plots = zeros(Ncolors,1);
% range=4;
% 
% for ith_plot = 1:Ncolors
%     dataToPlot = [time(ith_plot:ith_plot+range,1) ydata(ith_plot:ith_plot+range,1)];
%     plotFormat.Color = reducedColorMap(ith_plot,:);
%     h_plots(ith_plot) = fcn_plotRoad_plotXY(dataToPlot, (plotFormat), (fig_num));
% end
% title(sprintf('Example %.0d: fcn_plotRoad_animateHandlesDataSlide',fig_num), 'Interpreter','none');
% subtitle('Showing animation of XY data');
% 
% 
% handleList = h_plots;
% Xdata = time;
% Ydata = ydata;
% afterPlotColor = [0.5 0.5 0.5];
% for timeIndex = 1:406
%     fcn_plotRoad_animateHandlesDataSlide(timeIndex, handleList, Xdata, Ydata, (afterPlotColor), (-1))
%     pause(0.02);
% end
% 
% 
% % Make sure plot opened up
% assert(isequal(get(gcf,'Number'),fig_num));
% 
% %% Compare speeds of pre-calculation versus post-calculation versus a fast variant
% 
% fig_num = 80003;
% fprintf(1,'Figure: %.0f: FAST mode comparisons\n',fig_num);
% figure(fig_num); close(fig_num);
% 
% % Fill in data
% Npoints = 200;
% time = linspace(0,15,Npoints)';
% ydata = sin(time);
% 
% clear plotFormat
% plotFormat.Color = [0 0.7 0];
% plotFormat.Marker = '.';
% plotFormat.MarkerSize = 10;
% plotFormat.LineStyle = '-';
% plotFormat.LineWidth = 3;
% 
% % Fill in some plot handles by plotting the first Ncolor points
% Ncolors = 5;
% colorMapMatrix = colormap('turbo');
% reducedColorMap = fcn_plotRoad_reduceColorMap(colorMapMatrix, Ncolors, -1);
% h_plots = zeros(Ncolors,1);
% range=4;
% 
% for ith_plot = 1:Ncolors
%     dataToPlot = [time(ith_plot:ith_plot+range,1) ydata(ith_plot:ith_plot+range,1)];
%     plotFormat.Color = reducedColorMap(ith_plot,:);
%     h_plots(ith_plot) = fcn_plotRoad_plotXY(dataToPlot, (plotFormat), (fig_num));
% end
% title(sprintf('Example %.0d: fcn_plotRoad_animateHandlesDataSlide',fig_num), 'Interpreter','none');
% subtitle('Showing animation of XY data');
% 
% 
% handleList = h_plots;
% Xdata = time;
% Ydata = ydata;
% afterPlotColor = [0.5 0.5 0.5];
% 
% Niterations = 100;
% 
% % Do calculation without pre-calculation
% tic;
% for ith_test = 1:Niterations
% 
%     fcn_plotRoad_animateHandlesDataSlide(Niterations, handleList, Xdata, Ydata, (afterPlotColor), ([]))
%     pause(0.02);
% 
% end
% slow_method = toc;
% 
% % Do calculation with pre-calculation, FAST_MODE on
% tic;
% 
% for ith_test = 1:Niterations
% 
%     fcn_plotRoad_animateHandlesDataSlide(Niterations, handleList, Xdata, Ydata, (afterPlotColor), (-1))
%     pause(0.02);
% 
% end
% fast_method = toc;
% 
% % Make sure plot opened up
% assert(isequal(get(gcf,'Number'),fig_num));
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

    %% Should throw error because ydata is not a 1 column of numbers

    fig_num = 90001;
    fprintf(1,'Figure: %.0f:Bug case\n',fig_num);
    figure(fig_num); close(fig_num);

    % Fill in data
    Npoints = 200;
    time = linspace(0,15,Npoints)';
    ydata = sin(time);

    clear plotFormat
    plotFormat.Color = [0 0.7 0];
    plotFormat.Marker = '.';
    plotFormat.MarkerSize = 10;
    plotFormat.LineStyle = '-';
    plotFormat.LineWidth = 3;

    % Fill in some plot handles by plotting the first Ncolor points
    Ncolors = 5;
    colorMapMatrix = colormap('turbo');
    reducedColorMap = fcn_plotRoad_reduceColorMap(colorMapMatrix, Ncolors, -1);
    h_plots = zeros(Ncolors,1);
    range=4;

    for ith_plot = 1:Ncolors
        dataToPlot = [time(ith_plot:ith_plot+range,1) ydata(ith_plot:ith_plot+range,1)];
        plotFormat.Color = reducedColorMap(ith_plot,:);
        h_plots(ith_plot) = fcn_plotRoad_plotXY(dataToPlot, (plotFormat), (fig_num));
    end
    title(sprintf('Example %.0d: fcn_plotRoad_animateHandlesDataSlide',fig_num), 'Interpreter','none');
    subtitle('Showing animation of XY data');


    handleList = h_plots;
    Xdata = time;
    Ydata = ydata;
    afterPlotColor = [0.5 0.5 0.5];
    for timeIndex = 1:406
        fcn_plotRoad_animateHandlesDataSlide(timeIndex, handleList, Xdata, [Ydata, Ydata], (afterPlotColor), ([]))
        pause(0.02);
    end

end

