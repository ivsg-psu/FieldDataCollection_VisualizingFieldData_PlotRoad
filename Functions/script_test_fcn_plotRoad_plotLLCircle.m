%% script_test_fcn_plotRoad_plotLLCircle
% This is a script to exercise the function:
% fcn_plotRoad_calcLaneBoundaries.m
% This function was written on 2024_08_15 by S. Brennan, sbrennan@psu.edu

% Revision history:
% 2024_08_15 - S. Brennan
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
LLcenter = [40.43073, -79.87261, 0];
radius = 1000; 

% Test the function
plotFormat = [];
colorMapStringOrMatrix = [];
maxColorsAngles = [];
[h_geoplot, AllLatData, AllLonData, AllXData, AllYData, ringColors] = fcn_plotRoad_plotLLCircle(LLcenter, radius, (plotFormat), (colorMapStringOrMatrix), (maxColorsAngles), (fig_num));
title(sprintf('Example %.0d: fcn_plotRoad_plotLLCircle',fig_num), 'Interpreter','none');
subtitle('Showing basic plotting');

% Check results
% Was a figure created?
assert(all(ishandle(fig_num)));

% Were plot handles returned?
assert(all(ishandle(h_geoplot(:))));

Ncolors = 1;
Nangles = 91;

% Are the dimensions of Lat Long data correct?
assert(isequal(Ncolors,length(AllLatData(:,1))));
assert(isequal(Ncolors,length(AllLonData(:,1))));
assert(Nangles==length(AllLonData(1,:)));
assert(length(AllLatData(1,:))==length(AllLonData(1,:)));

% Are the dimension of X Y data correct?
assert(isequal(Ncolors,length(AllXData(:,1))));
assert(isequal(Ncolors,length(AllYData(:,1))));
assert(length(AllXData(1,:))==length(AllYData(1,:)));
assert(length(AllXData(1,:))==length(AllLatData(1,:)));

% Are the dimensions of the ringColors correct?
assert(isequal(size(ringColors),[Ncolors 3]));

%% DEMO case: Specifying the color as a string

fig_num = 10002; 
titleString = sprintf('DEMO case: Specifying the color as a string');
fprintf(1,'Figure %.0f: %s\n',fig_num, titleString);
figure(fig_num); clf;

% Fill in data
LLcenter = [40.43073, -79.87261, 0];
radius = 1000; 

% Test the function
plotFormat = 'r';
colorMapStringOrMatrix = [];
maxColorsAngles = [];
[h_geoplot, AllLatData, AllLonData, AllXData, AllYData, ringColors] = fcn_plotRoad_plotLLCircle(LLcenter, radius, (plotFormat), (colorMapStringOrMatrix), (maxColorsAngles), (fig_num));
title(sprintf('Example %.0d: fcn_plotRoad_plotLLCircle',fig_num), 'Interpreter','none');
subtitle('Showing color string');

% Check results
% Was a figure created?
assert(all(ishandle(fig_num)));

% Were plot handles returned?
assert(all(ishandle(h_geoplot(:))));

Ncolors = 1;
Nangles = 91;

% Are the dimensions of Lat Long data correct?
assert(isequal(Ncolors,length(AllLatData(:,1))));
assert(isequal(Ncolors,length(AllLonData(:,1))));
assert(Nangles==length(AllLonData(1,:)));
assert(length(AllLatData(1,:))==length(AllLonData(1,:)));

% Are the dimension of X Y data correct?
assert(isequal(Ncolors,length(AllXData(:,1))));
assert(isequal(Ncolors,length(AllYData(:,1))));
assert(length(AllXData(1,:))==length(AllYData(1,:)));
assert(length(AllXData(1,:))==length(AllLatData(1,:)));

% Are the dimensions of the ringColors correct?
assert(isequal(size(ringColors),[Ncolors 3]));

%% DEMO case: specifying the colorMap

fig_num = 10003; 
titleString = sprintf('DEMO case: specifying the colorMap');
fprintf(1,'Figure %.0f: %s\n',fig_num, titleString);
figure(fig_num); clf;

% Fill in data
LLcenter = [40.43073, -79.87261, 0];
radius = 1000; 

% Test the function
plotFormat = [];
colorMapStringOrMatrix = hot;
maxColorsAngles = [];

[h_geoplot, AllLatData, AllLonData, AllXData, AllYData, ringColors] = fcn_plotRoad_plotLLCircle(LLcenter, radius, (plotFormat), (colorMapStringOrMatrix), (maxColorsAngles), (fig_num));
title(sprintf('Example %.0d: fcn_plotRoad_plotLLCircle',fig_num), 'Interpreter','none');
subtitle('Showing color map');

% Check results
% Was a figure created?
assert(all(ishandle(fig_num)));

% Were plot handles returned?
assert(all(ishandle(h_geoplot(:))));

Ncolors = 64;
Nangles = 91;

% Are the dimensions of Lat Long data correct?
assert(Ncolors==length(AllLatData(:,1)));
assert(Ncolors==length(AllLonData(:,1)));
assert(Nangles==length(AllLonData(1,:)));
assert(length(AllLatData(1,:))==length(AllLonData(1,:)));

% Are the dimension of X Y data correct?
assert(Ncolors==length(AllXData(:,1)));
assert(Ncolors==length(AllYData(:,1)));
assert(length(AllXData(1,:))==length(AllYData(1,:)));
assert(length(AllXData(1,:))==length(AllLatData(1,:)));

% Are the dimensions of the ringColors correct?
assert(isequal(size(ringColors),[Ncolors 3]));

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
LLcenter = [40.43073, -79.87261, 0];
radius = 1000; 

% Test the function
plotFormat = '--';
colorMapStringOrMatrix = hot;
maxColorsAngles = [];

[h_geoplot, AllLatData, AllLonData, AllXData, AllYData, ringColors] = fcn_plotRoad_plotLLCircle(LLcenter, radius, (plotFormat), (colorMapStringOrMatrix), (maxColorsAngles), (fig_num));
title(sprintf('Example %.0d: fcn_plotRoad_plotLLCircle',fig_num), 'Interpreter','none');
subtitle('Showing line style');

% Check results
% Was a figure created?
assert(all(ishandle(fig_num)));

% Were plot handles returned?
assert(all(ishandle(h_geoplot(:))));

Ncolors = 64;
Nangles = 91;

% Are the dimensions of Lat Long data correct?
assert(Ncolors==length(AllLatData(:,1)));
assert(Ncolors==length(AllLonData(:,1)));
assert(Nangles==length(AllLonData(1,:)));
assert(length(AllLatData(1,:))==length(AllLonData(1,:)));

% Are the dimension of X Y data correct?
assert(Ncolors==length(AllXData(:,1)));
assert(Ncolors==length(AllYData(:,1)));
assert(length(AllXData(1,:))==length(AllYData(1,:)));
assert(length(AllXData(1,:))==length(AllLatData(1,:)));

% Are the dimensions of the ringColors correct?
assert(isequal(size(ringColors),[Ncolors 3]));

%% Test case: specifying the full plotFormat

fig_num = 20002;
titleString = sprintf('Test case: specifying the full plotFormat');
fprintf(1,'Figure %.0f: %s\n',fig_num, titleString);
figure(fig_num); clf;

% Fill in data
LLcenter = [40.43073, -79.87261, 0];
radius = 1000; 

% Test the function
clear plotFormat
plotFormat.LineStyle = '-';
plotFormat.LineWidth = 1;
plotFormat.Marker = '.';
plotFormat.MarkerSize = 10;
colorMapStringOrMatrix = 'hot';
maxColorsAngles = [];

[h_geoplot, AllLatData, AllLonData, AllXData, AllYData, ringColors] = fcn_plotRoad_plotLLCircle(LLcenter, radius, (plotFormat), (colorMapStringOrMatrix), (maxColorsAngles), (fig_num));
title(sprintf('Example %.0d: fcn_plotRoad_plotLLCircle',fig_num), 'Interpreter','none');
subtitle('Showing full formatted plotting');

% Check results
% Was a figure created?
assert(all(ishandle(fig_num)));

% Were plot handles returned?
assert(all(ishandle(h_geoplot(:))));

Ncolors = 64;
Nangles = 91;

% Are the dimensions of Lat Long data correct?
assert(Ncolors==length(AllLatData(:,1)));
assert(Ncolors==length(AllLonData(:,1)));
assert(Nangles==length(AllLonData(1,:)));
assert(length(AllLatData(1,:))==length(AllLonData(1,:)));

% Are the dimension of X Y data correct?
assert(Ncolors==length(AllXData(:,1)));
assert(Ncolors==length(AllYData(:,1)));
assert(length(AllXData(1,:))==length(AllYData(1,:)));
assert(length(AllXData(1,:))==length(AllLatData(1,:)));

% Are the dimensions of the ringColors correct?
assert(isequal(size(ringColors),[Ncolors 3]));

%% Test case: Specifying the color as a fade-out

fig_num = 20003;
titleString = sprintf('Test case: Specifying the color as a fade-out');
fprintf(1,'Figure %.0f: %s\n',fig_num, titleString);
figure(fig_num); clf;

% Fill in data
LLcenter = [40.43073, -79.87261, 0];
radius = 1000; 

% Test the function
plotFormat = [0 0 1];
colorMapStringOrMatrix = [];
maxColorsAngles = [];

[h_geoplot, AllLatData, AllLonData, AllXData, AllYData, ringColors] = fcn_plotRoad_plotLLCircle(LLcenter, radius, (plotFormat), (colorMapStringOrMatrix), (maxColorsAngles), (fig_num));
title(sprintf('Example %.0d: fcn_plotRoad_plotLLCircle',fig_num), 'Interpreter','none');
subtitle('Showing color fade-out');

% Check results
% Was a figure created?
assert(all(ishandle(fig_num)));

% Were plot handles returned?
assert(all(ishandle(h_geoplot(:))));

Ncolors = 64;
Nangles = 91;

% Are the dimensions of Lat Long data correct?
assert(Ncolors==length(AllLatData(:,1)));
assert(Ncolors==length(AllLonData(:,1)));
assert(Nangles==length(AllLonData(1,:)));
assert(length(AllLatData(1,:))==length(AllLonData(1,:)));

% Are the dimension of X Y data correct?
assert(Ncolors==length(AllXData(:,1)));
assert(Ncolors==length(AllYData(:,1)));
assert(length(AllXData(1,:))==length(AllYData(1,:)));
assert(length(AllXData(1,:))==length(AllLatData(1,:)));

% Are the dimensions of the ringColors correct?
assert(isequal(size(ringColors),[Ncolors 3]));

%% Test case: Changing maxColors

fig_num = 20004;
titleString = sprintf('Test case: Changing maxColors');
fprintf(1,'Figure %.0f: %s\n',fig_num, titleString);
figure(fig_num); clf;

% Fill in data
LLcenter = [40.43073, -79.87261, 0];
radius = 1000; 

% Test the function
colormapMatrix = colormap('winter');
colormapMatrix = flipud(colormapMatrix);

clear plotFormat
plotFormat.LineStyle = '-';
plotFormat.LineWidth = 3;
plotFormat.Marker = 'none';
plotFormat.MarkerSize = 10;
colorMapStringOrMatrix = colormapMatrix;
maxColorsAngles = 128;
[h_geoplot, AllLatData, AllLonData, AllXData, AllYData, ringColors] = fcn_plotRoad_plotLLCircle(LLcenter, radius, (plotFormat), (colorMapStringOrMatrix), (maxColorsAngles), (fig_num));
title(sprintf('Example %.0d: fcn_plotRoad_plotLLCircle',fig_num), 'Interpreter','none');
subtitle('Showing different max colors');

% Check results
% Was a figure created?
assert(all(ishandle(fig_num)));

% Were plot handles returned?
assert(all(ishandle(h_geoplot(:))));

Ncolors = 128;
Nangles = 91;

% Are the dimensions of Lat Long data correct?
assert(Ncolors==length(AllLatData(:,1)));
assert(Ncolors==length(AllLonData(:,1)));
assert(Nangles==length(AllLonData(1,:)));
assert(length(AllLatData(1,:))==length(AllLonData(1,:)));

% Are the dimension of X Y data correct?
assert(Ncolors==length(AllXData(:,1)));
assert(Ncolors==length(AllYData(:,1)));
assert(length(AllXData(1,:))==length(AllYData(1,:)));
assert(length(AllXData(1,:))==length(AllLatData(1,:)));

% Are the dimensions of the ringColors correct?
assert(isequal(size(ringColors),[Ncolors 3]));


%% Test case: Animate a "radar" view with colormap

fig_num = 20005;
titleString = sprintf('Test case: Animate a "radar" view with colormap');
fprintf(1,'Figure %.0f: %s\n',fig_num, titleString);
figure(fig_num); clf;

% Fill in data
LLcenter = [40.43073, -79.87261, 0];
radius = 1000; 

% Test the function
colormapMatrix = colormap('winter');
colormapMatrix = flipud(colormapMatrix);

clear plotFormat
plotFormat.LineStyle = '-';
plotFormat.LineWidth = 3;
plotFormat.Marker = 'none';
plotFormat.MarkerSize = 10;
colorMapStringOrMatrix = colormapMatrix;
maxColorsAngles = [16 90];
[~, AllLatData, AllLonData, AllXData, AllYData, ringColors] = fcn_plotRoad_plotLLCircle(LLcenter, radius, (plotFormat), (colorMapStringOrMatrix), (maxColorsAngles), (-1));

%%%%%% Plot by angles
% NOTE: when plotting by angles, we only need the first and last point, as
% radial projections are just lines
Nangles = length(AllLatData(1,:));
AllLatDataReduced = [LLcenter(1,1)*ones(1,Nangles); AllLatData(end,:)];
AllLonDataReduced = [LLcenter(1,2)*ones(1,Nangles); AllLonData(end,:)];

figure(fig_num);
clf;

Nplots = length(ringColors(:,1));
h_geoplot = fcn_plotRoad_plotLL((LLcenter(1,1:2)), (plotFormat), (fig_num));
set(gca,'MapCenter',LLcenter(1,1:2));

h_colors = zeros(Nplots,1);
for ith_angle = 1:Nplots

    % Append the color to the current plot format
    tempPlotFormat = plotFormat;
    tempPlotFormat.Color = ringColors(Nplots - ith_angle + 1,:);

    % Update the X and Y data to select only the points in this
    % angle
    X_data_selected = AllLatDataReduced(:,ith_angle);
    Y_data_selected = AllLonDataReduced(:,ith_angle);

    % Do the plotting
    h_colors(ith_angle,1)  = fcn_plotRoad_plotLL([X_data_selected Y_data_selected], (tempPlotFormat), (fig_num));
end

%%%%% Peform the animation
angleSkipInterval = Nangles-1;
allNanAngles = nan*AllLatData(:,1);
NfadeColors = length(ringColors(:,1));

if 1==1
    % Method: change the data on only a small set of handles that are
    % always on

    % This "while" method shuts radii on/off using specific indicies. 
    timeIndex = 0;
    while(timeIndex<200)          
        timeIndex = timeIndex+1;
        timeIndexEnd = timeIndex+NfadeColors;
        indicies_on_raw = (timeIndex:timeIndexEnd)';
        indicies_on = mod(indicies_on_raw,Nangles)+1;

        % Change coordinates for rings that are on
        for ith_angle = 1:NfadeColors
            angle_to_change = indicies_on(ith_angle);
            set(h_colors(ith_angle),'LatitudeData',AllLatDataReduced(:,angle_to_change),'LongitudeData', AllLonDataReduced(:,angle_to_change));
        end
        pause(0.02);
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
fprintf(1, 'Plot function - No fast mode tests')

%% testing speed of function
% Nothing to test - figure number is an argument

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

%% Fail conditions
if 1==0

    %% Should throw error because LLcenter must have 3 columns

    fig_num = 90001;
    fprintf(1,'Figure: %.0f:Bug case\n',fig_num);
    figure(fig_num); close(fig_num);

    % Fill in data
    LLcenter = [40.43073, -79.87261, 0];
    radius = 1000;

    % Test the function
    plotFormat = [];
    colorMapStringOrMatrix = [];
    maxColorsAngles = [];
    [h_geoplot, AllLatData, AllLonData, AllXData, AllYData, ringColors] = fcn_plotRoad_plotLLCircle(LLcenter(:,1:2), radius, (plotFormat), (colorMapStringOrMatrix), (maxColorsAngles), (fig_num));
    title(sprintf('Example %.0d: fcn_plotRoad_plotLLCircle',fig_num), 'Interpreter','none');
    subtitle('Showing basic plotting');

    % Check results

    % Were plot handles returned?
    assert(all(ishandle(h_geoplot(:))));

    Ncolors = 1;
    Nangles = 91;

    % Are the dimensions of Lat Long data correct?
    assert(isequal(Ncolors,length(AllLatData(:,1))));
    assert(isequal(Ncolors,length(AllLonData(:,1))));
    assert(Nangles==length(AllLonData(1,:)));
    assert(length(AllLatData(1,:))==length(AllLonData(1,:)));

    % Are the dimension of X Y data correct?
    assert(isequal(Ncolors,length(AllXData(:,1))));
    assert(isequal(Ncolors,length(AllYData(:,1))));
    assert(length(AllXData(1,:))==length(AllYData(1,:)));
    assert(length(AllXData(1,:))==length(AllLatData(1,:)));

    % Are the dimensions of the ringColors correct?
    assert(isequal(size(ringColors),[Ncolors 3]));

    % Make sure plot did NOT open up
    figHandles = get(groot, 'Children');
    assert(~any(figHandles==fig_num));

end