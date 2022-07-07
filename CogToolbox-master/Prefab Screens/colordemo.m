% colordemo
%
% Displays a number of color patches against white, gray, and black
% backgrounds.  This can be used to pick out appropriate RGB values to use
% as your colors in the Stroop tasks (since the same RGB value can look
% quite different on different monitors)
%
% Thanks to Sarah Brown-Schmidt, Alison Trude, Molly Lewis, and Eun-Kyung
% Lee for input on this
%
% 02.05.10 - S.Fraundorf
% 02.22.10 - S.Fraundorf - allow colordemo to run by itself w/o opening a
%                          window already.  added more colors.
% 06.21.11 - S.Fraundorf - added more colors

%% TEXT PROPERTIES
TextSize = 18;
TextFont = 'Arial';

%% WINDOW
[mainwindow rect] = Screen('OpenWindow',0);
Screen('TextSize',mainwindow,TextSize);
Screen('TextFont',mainwindow,TextFont);
Screen('TextStyle',mainwindow,0); % rm any bold

XRight = rect(3);
XCenter = rect(3)/2;
YBottom = rect(4);
YCenter = YBottom/2;

%% DEFINE COLORS
colors = {[255 255 0], 'yellow 1'; ...
 [200 200 0], 'yellow 2'; ...
 [128 128 128], 'gray'; ...
 [0 255 0], 'green 1'; ...
 [0 200 0], 'green 2'; ...
 [0 128 0], 'green 3'; ...
 [255 150 0], 'orange 1'; ...
 [255 165 0], 'orange 2'; ...
 [255 140 0], 'orange 3'; ...
 [255 0 0], 'red 1'; ...
 [200 0 0], 'red 2'; ...
 [255 100 100], 'red 3'; ...
 [225 0 0], 'red 4'; ...
 [200 0 255], 'purple 1'; ...
 [128 0 128], 'purple 2'; ...
 [156 102 31], 'brown 1'; ...
 [120 42 42], 'brown 2'; ...
 [165 42 42], 'brown 3'; ...
 [139 69 19], 'brown 4'; ...
 [255 0 255], 'pink 1'; ...
 [255 175 255], 'pink 2'; ...
 [255 215 255], 'pink 3'; ...
 [255 195 255], 'pink 4'; ...
 [0 0 255], 'blue 1'; ...
 [128 128 255], 'blue 2'; ...
 [50 50 255], 'blue 3'; ...
 [200 200 255], 'blue 4'; ...
 [0 0 0], 'black'; ...
 [255 255 255], 'white'};

%% RUN TEST
bgcols = [255 255 255; 128 128 128; 0 0 0]; % black, gray, white
for bg = 1:3
    x = 25;
    y = 25;
    Screen('FillRect',mainwindow,bgcols(bg,:));
    for i=1:size(colors,1)
      x = x+150;
      if x > (XRight-100)
          x = 175;
          y = y + 150 + (TextSize*1.5);
      end
      %FilledRect(mainwindow,colors,[x y x+100 y+100]);

      Screen('FillRect', mainwindow, colors{i,1}, [x-50, y, x+50, y+100]);
      WriteCentered(mainwindow, colors{i,2}, x, y+100+(TextSize*1.5), colors{i,1});
  end
  Screen('Flip',mainwindow);
  getKeys;
end

%% SHUTDOWN
Screen('CloseAll');