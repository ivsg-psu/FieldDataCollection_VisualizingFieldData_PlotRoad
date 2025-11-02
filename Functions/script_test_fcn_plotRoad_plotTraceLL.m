%% script_test_fcn_plotRoad_plotTraceLL.m
% This is a script to exercise the function: fcn_plotRoad_plotTraceLL.m
% This function was written on 2023_08_14 by S. Brennan, sbrennan@psu.edu


% Revision history:
% 2023_08_14 - S. Brennan
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

%% DEMO case: Showing plot of entire cell array
% Load the first marker cluster - call it by name

fig_num = 10001; 
titleString = sprintf('DEMO case: Showing plot of entire cell array');
fprintf(1,'Figure %.0f: %s\n',fig_num, titleString);
figure(fig_num); clf;

plotFormat = [];
flag_plot_headers_and_tailers = [];

% load from data
LLA_positions_cell_array = fcn_INTERNAL_loadData; 

% Plot ENU cell array
h_plot = fcn_plotRoad_plotTraceLL(LLA_positions_cell_array, (plotFormat), (flag_plot_headers_and_tailers), (fig_num));

title(sprintf('Fig %.0d: showing plot of entire cell array in LLA',fig_num), 'Interpreter','none');

% Check results
assert(all(ishandle(h_plot)));

%% DEMO case: Showing plot of entire cell array
% Load the first marker cluster - call it by name

fig_num = 10002; 
titleString = sprintf('DEMO case: Showing plot of entire cell array');
fprintf(1,'Figure %.0f: %s\n',fig_num, titleString);
figure(fig_num); clf;

plotFormat = [];
flag_plot_headers_and_tailers = [];

% Load data
LLA_positions_cell_array = fcn_INTERNAL_loadData; 
for ith_data = 1:length(LLA_positions_cell_array)
    ENU_data_to_plot = LLA_positions_cell_array{ith_data};

    % Plot ENU cell array
    h_plot = fcn_plotRoad_plotTraceLL(ENU_data_to_plot, (plotFormat), (flag_plot_headers_and_tailers), (fig_num));

    % Check results
    assert(all(ishandle(h_plot)));

end

title(sprintf('Fig %.0d: showing plot of entire cell array in LLA',fig_num),'Interpreter','none');


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

%% Test case: showing plot_color

fig_num = 20001;
titleString = sprintf('Test case: Specifying the linestyle');
fprintf(1,'Figure %.0f: %s\n',fig_num, titleString);
figure(fig_num); clf;

flag_plot_headers_and_tailers = 0;

clear plotFormat
plotFormat.Color = [0 0 1];
plotFormat.Marker = '.';
plotFormat.MarkerSize = 10;
plotFormat.LineStyle = '-';
plotFormat.LineWidth = 5;

% Load data
LLA_positions_cell_array = fcn_INTERNAL_loadData;

% Plot ENU cell array
h_plot = fcn_plotRoad_plotTraceLL(LLA_positions_cell_array, (plotFormat), (flag_plot_headers_and_tailers), (fig_num));

title(sprintf('Fig %.0d: showing plot_color',fig_num), 'Interpreter','none');

% Check results
assert(all(ishandle(h_plot)));


%% Test case: showing flag_plot_headers_and_tailers, otherwise same as Ex 3
% Load the first marker cluster - call it by name

fig_num = 20002;
titleString = sprintf('Test case: showing flag_plot_headers_and_tailers, otherwise same as Ex 3');
fprintf(1,'Figure %.0f: %s\n',fig_num, titleString);
figure(fig_num); clf;

flag_plot_headers_and_tailers = 1;

clear plotFormat
plotFormat.Color = [0 0 1];
plotFormat.Marker = '.';
plotFormat.MarkerSize = 10;
plotFormat.LineStyle = '-';
plotFormat.LineWidth = 5;

% Load data
LLA_positions_cell_array = fcn_INTERNAL_loadData;

% Plot ENU cell array
h_plot = fcn_plotRoad_plotTraceLL(LLA_positions_cell_array, (plotFormat), (flag_plot_headers_and_tailers), (fig_num));

title(sprintf('Fig %.0d: showing flag_plot_headers_and_tailers',fig_num), 'Interpreter','none');

% Check results
assert(all(ishandle(h_plot)));


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
% Speed testing not possible as this is a function where figure number is
% required

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

    %% Should throw error because LLIdata must have 3 columns

    fig_num = 90001;
    fprintf(1,'Figure: %.0f:Bug case\n',fig_num);
    figure(fig_num); close(fig_num);

    flag_plot_headers_and_tailers = 1;

    clear plotFormat
    plotFormat.Color = [0 0 1];
    plotFormat.Marker = '.';
    plotFormat.MarkerSize = 10;
    plotFormat.LineStyle = '-';
    plotFormat.LineWidth = 5;

    % Load data
    LLA_positions_cell_array = fcn_INTERNAL_loadData;

    % Plot ENU cell array
    h_plot = fcn_plotRoad_plotTraceLL(LLA_positions_cell_array{1}(:,1:2), (plotFormat), (flag_plot_headers_and_tailers), (fig_num));


    % Make sure plot did NOT open up
    figHandles = get(groot, 'Children');
    assert(~any(figHandles==fig_num));

end

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


function LLA_positions_cell_array = fcn_INTERNAL_loadData

%% Fill in data for testing
% Load the first marker cluster - call it by name
LLA_positions_cell_array{1} = 1.0e+02 *[
    0.408623854107731  -0.778367360663248   3.667869999985497
    0.408623527614556  -0.778366824471459   3.667869999850096
    0.408623228140075  -0.778366298073317   3.667860000095597
    0.408622834336925  -0.778365531515185   3.668379999958485
    0.408622432755178  -0.778364682365638   3.668739999760671
    0.408622053936209  -0.778363776401051   3.669000000069386
    0.408621723905615  -0.778362865478155   3.669120000111036
    0.408621412026466  -0.778361862594228   3.669249999930642
    0.408621166253217  -0.778360964599280   3.669500000276769
    0.408621037130544  -0.778360422209667   3.669740000166511
    ];

LLA_positions_cell_array{2} = 1.0e+02 *[
    0.408621037130544  -0.778360422209667   3.669740000166511
    0.408620910581732  -0.778359831355492   3.669909999911038
    0.408620760813066  -0.778358978379926   3.670060000357283
    0.408620644987599  -0.778358116648858   3.670059999702186
    0.408620553242639  -0.778357182124869   3.670040000064136
    0.408620490528764  -0.778356042548437   3.670179999861086
    0.408620477379800  -0.778354960113735   3.670410000100996
    0.408620527307769  -0.778353604867370   3.670229999998058
    0.408620634754331  -0.778352424976358   3.670540000052632
    0.408620794353143  -0.778351296379382   3.670539999995281
    0.408621037282434  -0.778350014117954   3.670389999900177
    0.408621352257419  -0.778348728541404   3.670570000009770
    0.408621720385415  -0.778347512981890   3.670230000461088
    0.408622195735826  -0.778346200650471   3.670770000265628
    0.408622912146380  -0.778344579701966   3.671360000088283
    0.408623502390288  -0.778343399258920   3.672010000005752
    ];

LLA_positions_cell_array{3} = 1.0e+02 *[
    0.408623502390288  -0.778343399258920   3.672010000005752
    0.408623823082493  -0.778342794745478   3.672610000179001
    0.408624551055474  -0.778341485008913   3.673870000077450
    0.408625365120639  -0.778340070200358   3.674870000165449
    0.408625635118899  -0.778339612838710   3.674679999876076
    0.408626104740356  -0.778338810095173   3.675210000424097
    0.408626576569184  -0.778338002386662   3.675600000155037
    0.408626919252242  -0.778337416269483   3.675720000282946
    0.408627390201705  -0.778336619415988   3.675150000059706
    0.408627852398521  -0.778335823717256   3.676519999448042
    0.408628479660438  -0.778334747373473   3.676910000483610
    0.408629094581277  -0.778333700652997   3.677340000033700
    0.408629740672029  -0.778332593975040   3.677589999674629
    0.408630260090558  -0.778331696525266   3.677810000180061
    0.408630764290284  -0.778330829756372   3.678300000336009
    0.408631289253163  -0.778329929404911   3.678600000067062
    0.408631804955124  -0.778329044058944   3.678799999808977
    0.408632293932271  -0.778328210373197   3.679050000024036
    0.408632705160062  -0.778327511986843   3.679229999953498
    0.408633084813624  -0.778326864338324   3.679320000010756
    0.408633662308712  -0.778325867826726   3.679089999563726
    0.408634169908534  -0.778325004785828   3.679979999874208
    0.408634644129081  -0.778324195751327   3.680510000226133
    0.408635092318332  -0.778323431230610   3.680630000091892
    0.408635564629046  -0.778322630508557   3.681249999269378
    0.408636010454227  -0.778321864956050   3.681070000551346
    0.408636521362880  -0.778320991345114   3.680979999523698
    0.408636976978745  -0.778320208253084   3.681300000269231
    0.408637347142726  -0.778319575775352   3.681359999872883
    0.408637778312331  -0.778318829260005   3.682259999770026
    0.408638322811597  -0.778317891439188   3.682050000253030
    0.408638802778403  -0.778317059027921   3.682120002045467
    0.408639335696130  -0.778316132709792   3.682580004820194
    0.408639910546490  -0.778315144557028   3.682929999704857
    0.408640515586353  -0.778314099043665   3.683170000405118
    0.408641139178260  -0.778313026165848   3.683140001454500
    0.408641702677991  -0.778312046877916   3.683280001693282
    0.408642252571069  -0.778311114906378   3.683789999701637
    ];

LLA_positions_cell_array{4} = 1.0e+02 *[
    0.408642252571069  -0.778311114906378   3.683789999701637
    0.408642912127771  -0.778310038255036   3.683999999414922
    0.408643623337391  -0.778308985728842   3.684830000158788
    0.408644286595829  -0.778308137576304   3.684869999998250
    0.408644921044209  -0.778307412391722   3.685080000765020
    0.408645689116139  -0.778306654084958   3.685949999411057
    0.408646577881266  -0.778305930570878   3.687249999828023
    0.408647603095110  -0.778305334333136   3.688770000000163
    0.408648529879331  -0.778304996240297   3.690300000315188
    0.408649410400107  -0.778304813353941   3.692009999976025
    0.408650417548742  -0.778304737922569   3.692779999766870
    ];

LLA_positions_cell_array{5} = 1.0e+02 *[
    0.408650417548742  -0.778304737922569   3.692779999766870
    0.408650975954674  -0.778304763137331   3.693409999348094
    0.408651940702053  -0.778304922168343   3.694659999904711
    0.408652789159778  -0.778305183752297   3.695800000069042
    0.408653672911305  -0.778305603313501   3.696889999769326
    0.408654398172712  -0.778306076688765   3.697979999465836
    0.408655319771976  -0.778306856443722   3.699360000198093
    ];

end


%% testing speed of function
% Speed testing not possible as this is a function where figure number is
% required

% flag_plot_headers_and_tailers = 1;
%
% clear plotFormat
% plotFormat.Color = [0 0 1];
% plotFormat.Marker = '.';
% plotFormat.MarkerSize = 10;
% plotFormat.LineStyle = '-';
% plotFormat.LineWidth = 5;
%
% % load from data
% Array = load("Data\ExampleLLAArrays.mat","LLA_positions_cell_array");
% LLA_positions_cell_array = Array.LLA_positions_cell_array;
%
% % Speed Test Calculation
% fig_num=[];
% REPS=5; minTimeSlow=Inf;
% tic;
%
% % Slow mode calculation - code copied from plotVehicleXYZ
% for i=1:REPS
%     tstart=tic;
%     h_plot = fcn_plotRoad_plotTraceLL(LLA_positions_cell_array, (plotFormat), (flag_plot_headers_and_tailers), (fig_num));
%
%     telapsed=toc(tstart);
%     minTimeSlow=min(telapsed,minTimeSlow);
% end
% averageTimeSlow=toc/REPS;
% % Slow mode END
%
% % Fast Mode Calculation
% fig_num = -1;
% minTimeFast = Inf;
% tic;
% for i=1:REPS
%     tstart = tic;
%     h_plot = fcn_plotRoad_plotTraceLL(LLA_positions_cell_array, (plotFormat), (flag_plot_headers_and_tailers), (fig_num));
%
%     telapsed = toc(tstart);
%     minTimeFast = min(telapsed,minTimeFast);
% end
% averageTimeFast = toc/REPS;
%
% % Display Console Comparison
% if 1==1
%     fprintf(1,'\n\nComparison of fcn_plotRoad_plotTraceLL without speed setting (slow) and with speed setting (fast):\n');
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