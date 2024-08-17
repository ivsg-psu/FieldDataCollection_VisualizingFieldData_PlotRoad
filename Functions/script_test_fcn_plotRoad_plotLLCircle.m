%% script_test_fcn_plotRoad_plotLLCircle
% This is a script to exercise the function:
% fcn_plotRoad_calcLaneBoundaries.m
% This function was written on 2024_08_15 by S. Brennan, sbrennan@psu.edu

close all;

%% Basic Example
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%   ____            _        ______                           _
%  |  _ \          (_)      |  ____|                         | |
%  | |_) | __ _ ___ _  ___  | |__  __  ____ _ _ __ ___  _ __ | | ___
%  |  _ < / _` / __| |/ __| |  __| \ \/ / _` | '_ ` _ \| '_ \| |/ _ \
%  | |_) | (_| \__ \ | (__  | |____ >  < (_| | | | | | | |_) | |  __/
%  |____/ \__,_|___/_|\___| |______/_/\_\__,_|_| |_| |_| .__/|_|\___|
%                                                      | |
%                                                      |_|
% See: https://patorjk.com/software/taag/#p=display&f=Big&t=Basic%20Example
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%§
% function only plots, has no outputs

%% BASIC example 1 - all defaults
fig_num = 1;
figure(fig_num);
clf;

% Fill in data
LL_center = [40.43073, -79.87261, 0];
radius = 1000; 

% Test the function
plotFormat = [];
colorMapStringOrMatrix = [];
maxColors = [];
h_geoplot = fcn_plotRoad_plotLLCircle(LL_center, radius, (plotFormat), (colorMapStringOrMatrix), (maxColors), (fig_num));
title(sprintf('Example %.0d: fcn_plotRoad_plotLLCircle',fig_num), 'Interpreter','none');
subtitle('Showing basic plotting');

% Check results
assert(all(ishandle(h_geoplot(:))));


%% BASIC example 2 - specifying the color as a string
fig_num = 2;
figure(fig_num);
clf;

% Fill in data
LL_center = [40.43073, -79.87261, 0];
radius = 1000; 

% Test the function
plotFormat = 'r';
colorMapStringOrMatrix = [];
maxColors = [];
h_geoplot = fcn_plotRoad_plotLLCircle(LL_center, radius, (plotFormat), (colorMapStringOrMatrix), (maxColors), (fig_num));
title(sprintf('Example %.0d: fcn_plotRoad_plotLLCircle',fig_num), 'Interpreter','none');
subtitle('Showing color string');

% Check results
assert(all(ishandle(h_geoplot(:))));



%% BASIC example 3 - specifying the colorMap
fig_num = 3;
figure(fig_num);
clf;

% Fill in data
LL_center = [40.43073, -79.87261, 0];
radius = 1000; 

% Test the function
plotFormat = [];
colorMapStringOrMatrix = hot;
maxColors = [];

h_geoplot = fcn_plotRoad_plotLLCircle(LL_center, radius, (plotFormat), (colorMapStringOrMatrix), (maxColors), (fig_num));
title(sprintf('Example %.0d: fcn_plotRoad_plotLLCircle',fig_num), 'Interpreter','none');
subtitle('Showing color map');

% Check results
assert(all(ishandle(h_geoplot(:))));




%% BASIC example 4 - specifying the linestyle
fig_num = 4;
figure(fig_num);
clf;

% Fill in data
LL_center = [40.43073, -79.87261, 0];
radius = 1000; 

% Test the function
plotFormat = '--';
colorMapStringOrMatrix = hot;
maxColors = [];

h_geoplot = fcn_plotRoad_plotLLCircle(LL_center, radius, (plotFormat), (colorMapStringOrMatrix), (maxColors), (fig_num));
title(sprintf('Example %.0d: fcn_plotRoad_plotLLCircle',fig_num), 'Interpreter','none');
subtitle('Showing line style');

% Check results
assert(all(ishandle(h_geoplot(:))));


%% BASIC example 5 - specifying the full plotFormat
fig_num = 5;
figure(fig_num);
clf;

% Fill in data
LL_center = [40.43073, -79.87261, 0];
radius = 1000; 

% Test the function
clear plotFormat
plotFormat.LineStyle = '-';
plotFormat.LineWidth = 1;
plotFormat.Marker = '.';
plotFormat.MarkerSize = 10;
colorMapStringOrMatrix = 'hot';
maxColors = [];

h_geoplot = fcn_plotRoad_plotLLCircle(LL_center, radius, (plotFormat), (colorMapStringOrMatrix), (maxColors), (fig_num));
title(sprintf('Example %.0d: fcn_plotRoad_plotLLCircle',fig_num), 'Interpreter','none');
subtitle('Showing full formatted plotting');

% Check results
assert(all(ishandle(h_geoplot(:))));



%% BASIC example 6 - specifying the color as a fade-out
fig_num = 6;
figure(fig_num);
clf;

% Fill in data
LL_center = [40.43073, -79.87261, 0];
radius = 1000; 

% Test the function
plotFormat = [0 0 1];
colorMapStringOrMatrix = [];
maxColors = [];

h_geoplot = fcn_plotRoad_plotLLCircle(LL_center, radius, (plotFormat), (colorMapStringOrMatrix), (maxColors), (fig_num));
title(sprintf('Example %.0d: fcn_plotRoad_plotLLCircle',fig_num), 'Interpreter','none');
subtitle('Showing color fade-out');

% Check results
assert(all(ishandle(h_geoplot(:))));


%% BASIC example 7 - showing an animation
fig_num = 7;
figure(fig_num);
clf;

% Fill in data
LL_center = [40.43073, -79.87261, 0];
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
maxColors = 64;
h_geoplot = fcn_plotRoad_plotLLCircle(LL_center, radius, (plotFormat), (colorMapStringOrMatrix), (maxColors), (fig_num));
title(sprintf('Example %.0d: fcn_plotRoad_plotLLCircle',fig_num), 'Interpreter','none');
subtitle('Showing color fade-out');

% Check results
assert(all(ishandle(h_geoplot(:))));

% Each of the figure handles now has data in them as XYZ. We save this
% information to turn it off/on in plotting
Nrings = length(h_geoplot);
Nangles = length(length(h_geoplot(1).LatitudeData));

AllLatData = zeros(Nrings,Nangles);
AllLonData = zeros(Nrings,Nangles);
for ith_handle = 1:Nrings
    AllLatData(ith_handle,:) = h_geoplot(ith_handle).LatitudeData;
    AllLonData(ith_handle,:) = h_geoplot(ith_handle).LongitudeData;
end

%% Do the animation of expanding rings
ringSkipInterval = Nrings/4;
allNan = nan*AllLatData(1,:);

if 1==1
    % This "while" method shuts rings on/off using specific indicies. 
    timeIndex = 0;
    patternOnOff = mod((1:Nrings)',ringSkipInterval)==(0);
    last_rings_on = find(patternOnOff);

    while(1)        
        timeIndex = timeIndex+1;
        this_index = mod(timeIndex,ringSkipInterval)+1; % This forces this_index to go from 1 to ringSkipInterval, repeatedly
        patternOnOff = mod((1:Nrings)',ringSkipInterval)==(this_index-1);
        current_rings_on = [find(patternOnOff); Nrings];

        % Turn rings on
        for ith_ring = 1:length(current_rings_on)
            ring_to_change = current_rings_on(ith_ring);
            set(h_geoplot(ring_to_change),'LatitudeData',AllLatData(ring_to_change,:),'LongitudeData', AllLonData(ring_to_change,:));
        end
        
        % Turn old ring off
        last_rings_on = last_rings_on(last_rings_on~=Nrings);
        for ith_ring = 1:length(last_rings_on)
            ring_to_change = last_rings_on(ith_ring);
            set(h_geoplot(ring_to_change),'LatitudeData',allNan,'LongitudeData', allNan);
        end

        % Move current to last
        last_rings_on = current_rings_on;
        pause(0.1);
    end
else
    % This for loop checks every ring
    for timeIndex = 1:100
        this_index = mod(timeIndex,ringSkipInterval)+1; % This forces this_index to go from 1 to ringSkipInterval, repeatedly
        patternOnOff = mod((1:Nrings)',ringSkipInterval)==(this_index-1);
        for ith_handle = 1:Nrings-1
            if 1==patternOnOff(ith_handle,1)
                % Turn this ring on
                set(h_geoplot(ith_handle),'LatitudeData',AllLatData(ith_handle,:),'LongitudeData', AllLonData(ith_handle,:));
            else
                % Turn the last on-ring off
                set(h_geoplot(ith_handle),'LatitudeData',allNan,'LongitudeData', allNan);
            end
        end
        pause(0.0);
    end
end

%% Animate a "radar" view
for timeIndex = 1:100
    this_index = mod(timeIndex,Nangles)+1; % This forces this_index to go from 1 to Nangles, repeatedly
    URHERE
    for ith_handle = 1:Nrings-1
        if 1==patternOnOff(ith_handle,1)
            % Turn this ring on
            set(h_geoplot(ith_handle),'LatitudeData',AllLatData(ith_handle,:),'LongitudeData', AllLonData(ith_handle,:));
        else
            % Turn the last on-ring off
            set(h_geoplot(ith_handle),'LatitudeData',allNan,'LongitudeData', allNan);
        end
    end
    pause(0.0);
end

%% testing speed of function
% Nothing to test - figure number is an argument

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
%     h_geoplot = fcn_plotRoad_plotLLI(LLIdata, (plotFormat),  (colorMap), (maxColors), (fig_num));
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
%     h_geoplot = fcn_plotRoad_plotLLI(LLIdata, (plotFormat),  (colorMap), (maxColors), (fig_num));
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