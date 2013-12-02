function ui(obj, parent)
% Sets up the ui for the LoudnessMG Analyser. 
% usage: ui(LoudnessMG, parent)
% 
% We rely on picking up the Tag of the uicontrol objects later, so we only
% set them up, we don't return handles to each of them. We can get the handles 
% again in the settings method with handle = findobj('Tag','YourTagHere');
% 
% Make sure the tags you use are unique. The easiest way to do this is to
% use the name of the analyser in the tag at the start, as is done below. 

% A popup menu, with some text above it.       
textString = textwrap({'Choose Overlap:'}, 40);
uicontrol('Style', 'text', ...
          'FontSize', 9, ...
          'String', textString,...
          'Parent', parent, ...
          'Units', 'Characters', ...
          'Position', [1 22 46 2],...
          'HorizontalAlignment', 'left', ...
          'BackgroundColor', [0.9 0.9 0.9]);

uicontrol('Style', 'edit', ...
          'String', '75',...
          'FontSize', 9, ...
          'Parent', parent, ...
          'Tag', [class(obj), 'OverlapSize'], ...
          'Units', 'Characters',...
          'Position', [1 20.5 4 1.5], ...
          'BackgroundColor',[0.9 0.9 0.9]);

uicontrol('Style', 'popup', ...
          'String', 'percent|millisecs|secs|samples',...
          'Parent', parent, ...
          'Tag', [class(obj), 'OverlapType'], ...
          'Units', 'Characters',...
          'Position', [5 20 15 2], ...
          'BackgroundColor',[0.9 0.9 0.9]);

% A popup menu, with some text above it.    
% textString = textwrap({'Choose WindowSize in samples:'},40);
% uicontrol('Style', 'text', ...
%           'FontSize', 9, ...
%           'String', textString,...
%           'Parent', parent, ...
%           'Units', 'Characters', ...
%           'Position',[1 17 46 2],...
%           'HorizontalAlignment','left', ...
%           'BackgroundColor',[0.9 0.9 0.9]);
% 
% uicontrol('Style',  'popup', ...
%           'String', '4096',...
%           'Parent', parent, ...
%           'Tag', [class(obj), 'WindowSize'], ...
%           'Units', 'Characters',...
%           'Position', [1 15 15 2], ...
%           'BackgroundColor',[0.9 0.9 0.9]);

% Position is [distanceFromLeft distanceFromBottom width height] 
% Units = Characters gives a certain amount of stability, although it may
% cause some problems on some platforms.

