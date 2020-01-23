clear; clc; close all;

% ----------------------------- Setup ------------------------------- %

% --- Window Setup --- %
window = figure;
window.Name = 'Pong';
window.NumberTitle = 'off';
window.ToolBar = 'none';
window.MenuBar = 'none';
window.Color = [.6 .6 .8];
window.KeyPressFcn = @keyboardFunction;

% --- Axis Setup --- %

axis = axes;
axis.Color = 'black';
axis.XLim = [0 100];
axis.YLim = [0 100];
axis.XTick = [];
axis.YTick = [];
axis.Position = [.1 .1 .8 .8];

% --- Score Setup --- %

leftScore = 0;
rightScore = 0;

leftScoreLabel = text(104, 99, '0', 'color', 'white', 'fontsize', 18);
leftScoreLabel.String = num2str(leftScore);

rightScoreLabel = text(-6.5, 99, '0', 'color', 'white', 'fontsize', 18);
rightScoreLabel.String = num2str(rightScore);

leftScoreTitle = text;
leftScoreTitle.String = 'Score';
leftScoreTitle.Position = [-9 105];
leftScoreTitle.Color = 'white';
leftScoreTitle.FontSize = 14;

rightScoreTitle = text;
rightScoreTitle.String = 'Score';
rightScoreTitle.Position = [101 105];
rightScoreTitle.Color = 'white';
rightScoreTitle.FontSize = 14;

% --- Ball Setup --- %

ballPos = [50, 45];
ballVel = [1, 1];
speeds = [-1, 1];

ball = line;
ball.LineWidth = 20;
ball.Marker = '.';
ball.XData = ballPos(1);
ball.YData = ballPos(2);
ball.MarkerSize = 20;
ball.Color = 'white';

% --- Paddle Setup --- %

global leftPaddleCenter;
global rightPaddleCenter;
leftPaddleCenter = 45;
rightPaddleCenter = 45;

leftPaddle = line;
leftPaddle.XData = [0 0];
leftPaddle.YData = [leftPaddleCenter - 8, leftPaddleCenter + 8];
leftPaddle.LineWidth = 6;
leftPaddle.Color = 'white';

rightPaddle = line;
rightPaddle.XData = [100 100];
rightPaddle.YData = [rightPaddleCenter - 8, rightPaddleCenter + 8];
rightPaddle.LineWidth = 6;
rightPaddle.Color = 'white';
 
% ------------------------------ Loop ------------------------------- %

while 1
   
   % start timer
   tic;
   
   % top and bottom collision
   if ballPos(2) < 0 || ballPos(2) > 100
       ballVel(2) = -ballVel(2); 
   end
   

   if ballPos(1) < 0
       ballPos = [50 50];
       rx = speeds(randi(2));
       ry = speeds(randi(2));
       ballVel = [rx ry];
       leftScore = leftScore + 1;
       speeds = [-1 1]
   end
    
   if ballPos(1) >= 100
       ballPos = [50 50];
       rx = speeds(randi(2));
       ry = speeds(randi(2));
       ballVel = [rx ry];
       rightScore = rightScore + 1;
       speeds = [-1 1]
   end
    
   if abs(ballPos(2) - leftPaddleCenter) < 8 && ballPos(1) < 2
       ballVel(1) = -ballVel(1);
       speeds = 1.007 * speeds
%        ballVel(2) = -ballVel(2);
   end
   
   if abs(ballPos(2) - rightPaddleCenter) < 8 && ballPos(1) > 98
       ballVel(1) = -ballVel(1);
       speeds = 1.007 * speeds
%        ballVel(2) = -ballVel(2);
   end
   
   ballPos = ballPos + ballVel;
   
   ball.XData = ballPos(1);
   ball.YData = ballPos(2);
   
   leftPaddleCenter = ballPos(2);
   leftPaddle.YData = [leftPaddleCenter - 8, leftPaddleCenter + 8];
   rightPaddle.YData = [rightPaddleCenter - 8, rightPaddleCenter + 8];
   
   leftScoreLabel.String = num2str(leftScore);
   rightScoreLabel.String = num2str(rightScore);
   
   % 60 fps
   pause(1/60 - toc);
end

% ---------------------------- Functions ---------------------------- %

function keyboardFunction(figure, event)
%     global leftPaddleCenter;
    global rightPaddleCenter;
    
%     if strcmp(event.Key, 'w'), leftPaddleCenter = leftPaddleCenter + 5; end
%     if strcmp(event.Key, 's'), leftPaddleCenter = leftPaddleCenter - 5; end
    if strcmp(event.Key, 'uparrow'), rightPaddleCenter = rightPaddleCenter + 8; end
    if strcmp(event.Key, 'downarrow'), rightPaddleCenter = rightPaddleCenter - 8; end
    
    if strcmp(event.Key, 'escape'), close all; return; end
    
end