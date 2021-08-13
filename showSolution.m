function showSolution(design,Trialtype,Solution)

  % Draw Solution in the middle of the screen in Times in red
        Screen('TextSize', design.window, design.fontsize);
        Screen('TextFont', design.window, 'Times');
        DrawFormattedText(design.window, Solution, 'center',...
            design.screenYpixels * 0.55, [1 0 0]);
        
        if contains(Trialtype,'Practice')
            Screen('TextSize', design.window, 35);
            Screen('TextFont', design.window, 'Times');
            DrawFormattedText(design.window, '(This was the correct solution)', 'center',...
                design.screenYpixels * 0.90, design.grey);
        end
        
        Screen('Flip', design.window);
        WaitSecs(2)
end