clear; clc; close all;

% ----------------------- Setup ----------------------- %

% making the background purple
pongFigure = figure('name', 'Pong', 'numbertitle', 'off', 'color', [.6 .6 .8], 'KeyPressFcn', @keyboardFunction);
set(pongFigure, 'ToolBar', 'none');
set(pongFigure, 'MenuBar', 'none');

% making axes black for "screen" effect
pongAxes = axes('color', 'black', 'Xlim', [0 100], 'Ylim', [-5 100]);
set(gca, 'XTick', [], 'YTick', [], 'position', [.1 .1 .8 .8]);

% score handling
scoreTitle = text(101, 105, 'Score', 'color', 'white', 'fontsize', 14);
scoreLabel = text(104, 99, '0', 'color', 'white', 'fontsize', 18);
score = 0;

% pong ball setup
ballVel = [1, 1];
ballPos = [20, 50];
ball = line(ballPos(1), ballPos(2), 'marker', '.', 'markersize', 20, 'color', 'white');

% pong paddle setup
global paddleCenter;
paddleCenter = 45;
paddle = line([paddleCenter - 5, paddleCenter + 5], [0 0], 'linewidth', 4, 'color', 'white');


% ----------------------- Loop ----------------------- %

tic;
while toc < 100
    
    if ballPos(1) > 100 || ballPos(1) < 0
        ballVel(1) = -ballVel(1);
    end
    
    if ballPos(2) > 100
        ballVel(2) = -ballVel(2);
    end
    
    if abs(ballPos(1) - paddleCenter) < 5 && ballPos(2) < 2
        ballVel(2) = -ballVel(2);
    end
    
    if ballPos(2) < 0
        ballPos = [50, 50];
        ballVel = [1, 1];
        score = score + 1;
    end
    
    if paddleCenter <= 5
        paddleCenter = 5;
    elseif paddleCenter >= 95
        paddleCenter = 95;
    end
    
    ballPos = ballPos + ballVel;
    set(ball, 'XData', ballPos(1), 'YData', ballPos(2));
    set(paddle, 'XData', [paddleCenter - 5, paddleCenter + 5]);
    set(scoreLabel, 'String', num2str(score));
    
    pause(0.05);
end

% ----------------------- Functions ----------------------- %

function keyboardFunction(figure, event)
    global paddleCenter;
    switch event.Key
        case 'leftarrow'
            paddleCenter = paddleCenter - 4;
        case 'rightarrow'
            paddleCenter = paddleCenter + 4;
        case 'escape'
            close all; return;
    end
end