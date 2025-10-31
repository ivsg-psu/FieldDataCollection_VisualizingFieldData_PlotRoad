function fcn_plotRoad_zoomToRegion(zoomScenario, zoomRegion, varargin)
%% fcn_plotRoad_zoomToRegion
% 
% Zooms an existing geoaxes (current axes) to a predefined region (e.g.,
% Pendulum) for a given scenario (e.g., Test Track)
%
% FORMAT:
%
%      fcn_plotRoad_zoomToRegion(zoomScenario, zoomRegion, (zoom_level), (fig_num))
%
% INPUTS:
%
%      zoomScenario: The scenario collection name (e.g., 'TestTrack').
%
%      zoomRegion:   The specific region within the scenario
%                    (e.g., 'Bridge', 'Pendulum', 'VegetationSiteOne', ...).
%
% (OPTIONAL INPUTS)
%
%      zoom_level:   (scalar) Map zoom level to apply to the target region.
%                    Defaults to 21 if omitted or [].
%
%      fig_num:      (scalar) Figure number to target for plotting. If
%                    provided, the function will attempt to use the current
%                    axes from this figure and perform the zoom operation.
%                    If set to -1, the function runs in "max speed" mode:
%                    input checks and debugging are disabled and no plots
%                    are produced.
%
% OUTPUTS:
%
%      (none)        
%
% DEPENDENCIES:
%
%      - fcn_DebugTools_checkInputsToFunctions 
%
%
% EXAMPLES:
% 
%   See script_test_fcn_plotRoad_zoomToRegion.m
%   for a full test suite.
% 
% This function was written on 2025_10_31 by Aneesh Batchu
% Questions or comments? abb6486@psu.edu

% Revision History
%
% 2025_10_31 - Aneesh Batchu
% -- Wrote this code originally

%% Debugging and Input checks

% Check if flag_max_speed set. This occurs if the fig_num variable input
% argument (varargin) is given a number of -1, which is not a valid figure
% number.
MAX_NARGIN = 4; % The largest Number of argument inputs to the function
flag_max_speed = 0;
if (nargin==MAX_NARGIN && isequal(varargin{end},-1))
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
        narginchk(2,MAX_NARGIN);

        % Check the zoomScenario input
        fcn_DebugTools_checkInputsToFunctions(...
            zoomScenario, '_of_chars');

        % Check the zoomRegion input
        fcn_DebugTools_checkInputsToFunctions(...
            zoomRegion, '_of_chars');
    end
end

% Does user want to specify Zoom Level?
zoom_level = 21;
if (3<=nargin)
    temp = varargin{1};
    if ~isempty(temp)
        zoom_level = temp;
    end
end

% Does user want to specify fig_num?
flag_do_plots = 0;
if (0==flag_max_speed) &&  (MAX_NARGIN<=nargin)
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
%
% Clean up the inputs: Lower case and Remove spaces
zoomScenario = lower(strrep(zoomScenario, ' ', ''));
zoomRegion   = lower(strrep(zoomRegion, ' ', ''));

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

    figure(fig_num);
    h_axis = gca; % Get current axis


    switch zoomScenario % Scenario

        case{'testtrack'} % Scenario - Test Track

            switch zoomRegion

                case {'bridge'} % Bridge region at the test track

                    % Bridge
                    set(h_axis, 'MapCenter', [40.864162844376345 -77.837295866787045], 'ZoomLevel', zoom_level);

                case {'pendulum'}

                    % Large Impact Pendulum
                    set(h_axis, 'MapCenter', [40.864488410607457 -77.830725795805066], 'ZoomLevel', zoom_level);


                case {'vegetationsiteone'}

                    % Vegetation Site One
                    set(h_axis, 'MapCenter', [40.865764389475238 -77.832054078189856], 'ZoomLevel', zoom_level);


                case {'vegetationsitetwo'}

                    % Vegetation Site Two
                    set(h_axis, 'MapCenter', [40.864106290029248 -77.831221734372292], 'ZoomLevel', zoom_level);


                case {'nominalsite'}

                    %  Nominal Site
                    set(h_axis, 'MapCenter', [40.865456805931245 -77.833832458903515], 'ZoomLevel', zoom_level);


                case {'vehicledurabilitycourse'}
                    
                    % Vehicle Durablity Course
                    set(h_axis, 'MapCenter', [40.865182810643333 -77.834382791104034], 'ZoomLevel', zoom_level);


                case {'crashtestcourse'}
                    
                    % Crash Test Course
                    set(h_axis, 'MapCenter', [40.863280121802759 -77.832867343010662], 'ZoomLevel', zoom_level);


                case {'vehiclehandlingarea'}

                    % Vehicle Handling Area
                    set(h_axis, 'MapCenter', [40.862841391967955 -77.834655820934302], 'ZoomLevel', zoom_level);

                otherwise
                    error('Unrecognized test track region: %s',zoomRegion);

            end

        otherwise
            error('Unrecognized scenario: %s',zoomRegion);
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
