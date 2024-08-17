function h_geoplot = fcn_plotRoad_plotLLCircle(LLcenter, radius, varargin)
%fcn_plotRoad_plotLLcircle    geoplots a circle
% 
% FORMAT:
%
%      h_geoplot = fcn_plotRoad_plotLLI(LL_center, radius, (plotFormat), (colorMapStringOrMatrix), (maxColors), (fig_num))
%
% INPUTS:  
%
%      LLcenter: an [1x2+] vector with 2 or more columns, and first row's 1
%      and 2 columns correspond to the [Latitude Longitude] coordinate of
%      the circle center to plot.
%      
%      radius: an [1x1] scalar of the radius to plot, in meters
%      
%      (OPTIONAL INPUTS)
%
%      plotFormat: one of the following:
%      
%          * a format string, e.g. 'b-', that dictates the plot style.
%          a colormap is created using this color value as 100%, with only
%          one color output, and one plot at the radius specified.
%          * a [1x3] color vector specifying the RGB ratios from 0 to 1
%          a colormap is created using this value as 100%, to grey as 0%,
%          8 levels. A radius is calculated for all 8 levels
%          * a structure whose subfields for the plot properties to change, for example:
%            plotFormat.LineWideth = 3;
%            plotFormat.MarkerSize = 10;
%            plotFormat.Color = [1 0.5 0.5];
%            A full list of properties can be found by examining the plot
%            handle, for example: h_geoplot = plot(1:10); get(h_geoplot)
%          If a color is specified, a colormap as with a [1x3] color vector
%          - this supercedes any colormap.  If no color or colormap is
%          specified, then the default current colormap color is used. If
%          no color is specified, but a colormap is given, the colormap is
%          used.
%
%      colorMapStringOrMatrix: a string specifying the colormap for the
%      plot, or a matrix of colors defining a colormap. The default is to
%      use the current colormap. If a colorMapStringOrMatrix is given, then
%      plot outputs are given with radii at each color
%
%      maxColors: the maximum number of colors to use in a colormap to
%      populate concentric circles. Most colormaps are 256 colors,
%      producing a very dense ring set. By setting maxColors to a lower
%      value, such as 64 or 32, faster plotting speeds can be achieved.
%      Default is 64.
%
%      fig_num: a figure number to plot results. If set to -1, skips any
%      input checking or debugging, no figures will be generated, and sets
%      up code to maximize speed.
%
% OUTPUTS:
%
%      h_geoplot: the handle to the plotting results, with one handle per
%      colormap entry.
%
% DEPENDENCIES:
%
%      fcn_plotRoad_plotXY
%
% EXAMPLES:
%
%       See the script:
% 
%       script_test_fcn_plotRoad_plotLLI 
%  
%       for a full test suite.
%
% This function was written on 2024_08_12 by Sean Brennan
% Questions or comments? sbrennan@psu.edu

% Revision history
% 2024_08_12 - Sean Brennan
% -- Created function by copying out of load script in Geometry library

%% Debugging and Input checks

% Check if flag_max_speed set. This occurs if the fig_num variable input
% argument (varargin) is given a number of -1, which is not a valid figure
% number.
flag_max_speed = 0;
if (nargin==6 && isequal(varargin{end},-1))
    flag_do_debug = 0; % % % % Flag to plot the results for debugging
    flag_check_inputs = 0; % Flag to perform input checking
    flag_max_speed = 1;
else
    % Check to see if we are externally setting debug mode to be "on"
    flag_do_debug = 0; % % % % Flag to plot the results for debugging
    flag_check_inputs = 1; % Flag to perform input checking
    MATLABFLAG_PLOTROAD_FLAG_CHECK_INPUTS = getenv("MATLABFLAG_PLOTROAD_FLAG_CHECK_INPUTS");
    MATLABFLAG_PLOTROAD_FLAG_DO_DEBUG = getenv("MATLABFLAG_PLOTROAD_FLAG_DO_DEBUG");
    if ~isempty(MATLABFLAG_PLOTROAD_FLAG_CHECK_INPUTS) && ~isempty(MATLABFLAG_PLOTROAD_FLAG_DO_DEBUG)
        flag_do_debug = str2double(MATLABFLAG_PLOTROAD_FLAG_DO_DEBUG); 
        flag_check_inputs  = str2double(MATLABFLAG_PLOTROAD_FLAG_CHECK_INPUTS);
    end
end

% flag_do_debug = 1;

if flag_do_debug
    st = dbstack; %#ok<*UNRCH>
    fprintf(1,'STARTING function: %s, in file: %s\n',st(1).name,st(1).file);
    debug_fig_num = 999978; %#ok<NASGU>
else
    debug_fig_num = []; %#ok<NASGU>
end


%% check input arguments
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%   _____                   _
%  |_   _|                 | |
%    | |  _ __  _ __  _   _| |_ ___
%    | | | '_ \| '_ \| | | | __/ __|
%   _| |_| | | | |_) | |_| | |_\__ \
%  |_____|_| |_| .__/ \__,_|\__|___/
%              | |
%              |_|
% See: http://patorjk.com/software/taag/#p=display&f=Big&t=Inputs
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

if 0==flag_max_speed
    if flag_check_inputs == 1
        % Are there the right number of inputs?
        narginchk(2,6);

        % % Check the points input to be length greater than or equal to 2
        % fcn_DebugTools_checkInputsToFunctions(...
        %     points, '2column_of_numbers',[2 3]);
        %
        % % Check the transverse_tolerance input is a positive single number
        % fcn_DebugTools_checkInputsToFunctions(transverse_tolerance, 'positive_1column_of_numbers',1);
        %
        % % Check the station_tolerance input is a positive single number
        % if ~isempty(station_tolerance)
        %     fcn_DebugTools_checkInputsToFunctions(station_tolerance, 'positive_1column_of_numbers',1);
        % end
    end
end


% Does user want to specify plotFormat?
% plotFormat = 'k';
plotFormat = [];
flag_plot_many_colors = 0;
if 3 <= nargin
    input = varargin{1};
    if ~isempty(input)
        if ischar(input) && length(input)<=4
            plotFormat = fcn_plotRoad_extractFormatFromString(input);
        elseif isnumeric(input)  % Numbers are a color style
            plotFormat.Color = input;
            flag_plot_many_colors = 1;
        elseif isstruct(input)  % Structures give properties
            plotFormat = input;
            flag_plot_many_colors = 1;
        else
            warning('on','backtrace');
            warning('An unkown input plotFormat is detected - throwing an error.')
            error('Unknown plotFormat input detected')
        end
    end
end


% Does user want to specify colorMapStringOrMatrixToUse?
colorMapStringOrMatrixToUse = [];
if (4<=nargin)
    temp = varargin{2};
    if ~isempty(temp)
        colorMapStringOrMatrixToUse = temp;
        if ischar(colorMapStringOrMatrixToUse)
            colorMapStringOrMatrixToUse = colormap(colorMapStringOrMatrixToUse);
        end
        flag_plot_many_colors = 1;
    end
end

% Does user want to specify maxColors?
maxColors = 64;
if (5<=nargin)
    temp = varargin{3};
    if ~isempty(temp)
        maxColors = temp;
    end
end

% Does user want to specify fig_num?
flag_do_plots = 0;
if (0==flag_max_speed) &&  (6<=nargin)
    temp = varargin{end};
    if ~isempty(temp)
        fig_num = temp;
        flag_do_plots = 1;
    end
end


%% Solve for the Maxs and Mins
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%   __  __       _       
%  |  \/  |     (_)      
%  | \  / | __ _ _ _ __  
%  | |\/| |/ _` | | '_ \ 
%  | |  | | (_| | | | | |
%  |_|  |_|\__,_|_|_| |_|
% 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% Check the colorMapStringOrMatrix - this will determine how many circles we need to make
if isempty(colorMapStringOrMatrixToUse)
    if isfield(plotFormat,'Color')
        colorToScale = plotFormat.Color;
    else
        % Find the next color
        if isempty(plotFormat)
            % Is the figure clear?
            temp_fig_handle = gcf;
            if isempty(temp_fig_handle.Children)
                flag_make_new_plot = 1;
            end
            colors = get(gca,'ColorOrder');
            index  = get(gca,'ColorOrderIndex');

            % Clear the figure again?
            if flag_make_new_plot
                clf;
            end
        end
        colorToScale = colors(index,:);
    end
end


% Is a fade-out needed?
if 0 == flag_plot_many_colors
    colorMapStringOrMatrixToUse = colorToScale;
elseif isempty(colorMapStringOrMatrixToUse)
    ratios = linspace(0,1,maxColors)';

    % Create transition into a grey, 
    fadeGrey = 0.5*[1 1 1];
    colorMapStringOrMatrixToUse = (1-ratios)*colorToScale + ratios*fadeGrey;
end

% How many colors do we have?
Ncolors = length(colorMapStringOrMatrixToUse(:,1)); 
if Ncolors>maxColors
    reducedIndicies = round(linspace(1,Ncolors,maxColors));
    reducedColorMap = colorMapStringOrMatrixToUse(reducedIndicies,:);
    Ncolors = maxColors;
else
    reducedColorMap = colorMapStringOrMatrixToUse;
end


%% Convert LLA data to ENU to perform radius calculations
% Create a GPS object with the reference latitude, longitude, and altitude

% Get the reference LLA
reference_latitude = 40.86368573;
reference_longitude = -77.83592832;
reference_altitude = 344.189;
MATLABFLAG_PLOTROAD_REFERENCE_LATITUDE = getenv("MATLABFLAG_PLOTROAD_REFERENCE_LATITUDE");
MATLABFLAG_PLOTROAD_REFERENCE_LONGITUDE = getenv("MATLABFLAG_PLOTROAD_REFERENCE_LONGITUDE");
MATLABFLAG_PLOTROAD_REFERENCE_ALTITUDE = getenv("MATLABFLAG_PLOTROAD_REFERENCE_ALTITUDE");
if ~isempty(MATLABFLAG_PLOTROAD_REFERENCE_LATITUDE) && ~isempty(MATLABFLAG_PLOTROAD_REFERENCE_LONGITUDE) && ~isempty(MATLABFLAG_PLOTROAD_REFERENCE_ALTITUDE)
    reference_latitude  = str2double(MATLABFLAG_PLOTROAD_REFERENCE_LATITUDE);
    reference_longitude = str2double(MATLABFLAG_PLOTROAD_REFERENCE_LONGITUDE);
    reference_altitude  = str2double(MATLABFLAG_PLOTROAD_REFERENCE_ALTITUDE);
end

% Open a GPS class object
gps_object = GPS(reference_latitude, reference_longitude, reference_altitude);

% Find the ENU coordinates of the center of the circle
ENU_center  = gps_object.WGSLLA2ENU(LLcenter(:,1), LLcenter(:,2), 0);

%% Calculate each circle's coordinates

% There is a circle for every color, but the radius gets larger
radii = linspace(0,radius,Ncolors+1)';

% Drop the zero radius - this isn't useful
radii = radii(2:end,1);

% Generate theta values at every 4 degrees as a row vector (1xM)
Mthetas = 91;
theta = linspace(0, 2*pi, Mthetas); 

% Generate X and Y data as N rows by M columns
Xcircle = ones(Ncolors,Mthetas)*ENU_center(1,1) + radii*cos(theta);
Ycircle = ones(Ncolors,Mthetas)*ENU_center(1,2) + radii*sin(theta);

%% Initialize the output
h_geoplot = nan(Ncolors,1);

%% Plot the results (for debugging)?
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%   _____       _                 
%  |  __ \     | |                
%  | |  | | ___| |__  _   _  __ _ 
%  | |  | |/ _ \ '_ \| | | |/ _` |
%  | |__| |  __/ |_) | |_| | (_| |
%  |_____/ \___|_.__/ \__,_|\__, |
%                            __/ |
%                           |___/ 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

if flag_do_plots

    % Is plotFormat filled? If not, set defaults
    if isempty(plotFormat) || ~isfield(plotFormat,'LineStyle') || ~isfield(plotFormat,'LineWidth')
        if ~isfield(plotFormat,'LineStyle') 
            plotFormat.LineStyle = '-';
        end
        if ~isfield(plotFormat,'LineWidth')
            plotFormat.LineWidth = 3;
        end
    end

    % Center plot on circle center
    h_geoplot = fcn_plotRoad_plotLL((LLcenter(1,1:2)), (plotFormat), (fig_num));
    set(gca,'MapCenter',LLcenter(1,1:2));

    for ith_color = Ncolors:-1:1

        % Convert the ENU coordinates back into LLA coordinates
        lla_coords = gps_object.ENU2WGSLLA([Xcircle(ith_color,:)' Ycircle(ith_color,:)' zeros(Mthetas,1)]);

        % Append the color to the current plot format
        tempPlotFormat = plotFormat;
        tempPlotFormat.Color = reducedColorMap(ith_color,:);

        % Update the X and Y data to select only the points in this
        % color
        X_data_selected = lla_coords(:,1);
        Y_data_selected = lla_coords(:,2);

        % Do the plotting
        h_geoplot(ith_color,1)  = fcn_plotRoad_plotLL([X_data_selected Y_data_selected], (tempPlotFormat), (fig_num));
    end


end % Ends check if plotting

if flag_do_debug
    fprintf(1,'ENDING function: %s, in file: %s\n\n',st(1).name,st(1).file);
end

end % Ends main function

%% Functions follow
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%   ______                _   _
%  |  ____|              | | (_)
%  | |__ _   _ _ __   ___| |_ _  ___  _ __  ___
%  |  __| | | | '_ \ / __| __| |/ _ \| '_ \/ __|
%  | |  | |_| | | | | (__| |_| | (_) | | | \__ \
%  |_|   \__,_|_| |_|\___|\__|_|\___/|_| |_|___/
%
% See: https://patorjk.com/software/taag/#p=display&f=Big&t=Functions
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%§



