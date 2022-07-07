function FramedRectWText(win, text, textColor, rectColor, varargin)
% 
%   FramedRectWText(win, text, textColor, rectColor, xCenter, yCenter, height, width)
%   FramedRectWText(win, text, textColor, rectColor, rect)
% 
% function writes TEXT in the center of the outline of a rectangle to
% screen WIN.  Rectangle is centered at XCENTER, YCENTER and is of size
% HEIGHT and WIDTH. If a single vector RECT is provided, rect specifies
% upper-left and bottom-right corners of rectangle.
%
% This does not automatically flip the screen; you will have to do that
% when you are ready to display your stimuli.
% 
% 05.20.06 M.Diaz
% 02.05.10 S.Fraundorf - PTB-3 version
% 08.22.12 S.Fraundorf - updated error messages

if nargin==5
    if sum(size(varargin{1}) ~= [1 4])
        error('CogToolbox:FramedRectWText:ImproperRect', 'Rect should be a 4-element vector');
    end
    corners=varargin{1};
    xCenter=round(sum(corners([1 3]))/2);
    yCenter=round(sum(corners([2 4]))/2);
elseif nargin==8
    xCenter=varargin{1};
    yCenter=varargin{2};
    height=varargin{3};
    width=varargin{4};
    corners=[xCenter-round(width/2), yCenter-round(height/2), xCenter+round(width/2), yCenter+round(height/2)];
else
    error('CogToolbox:FramedRectWText:WrongInputNo', 'Wrong number of inputs');
end
penSize=2;

Screen('FrameRect', win, rectColor, corners, penSize);
WriteCentered(win, text, xCenter, yCenter, textColor);