function []=RATInstructions(design)

fontcolor=design.grey;

DrawFormattedText(design.window, sprintf('%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s', ...
    'Welcome to the Remote Associations Game.', ...
    'This is a word game.', ...
    '(Press a key to continue reading the instructions.)'), 'center', 'center',fontcolor,[100],[],[],[2]);
Screen('Flip',design.window); 
KbStrokeWait;

DrawFormattedText(design.window, sprintf('%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s', ...
    'On each trial, you will be presented with three words in the middle of the screen.', ...
    'The question is: what word pairs with each of the presented words?', ...
    'There is a correct solution to each question', ...
    'Your task is to find the right solution.', ...
    '(Press a key to continue reading the instructions.)'), 'center', 'center',fontcolor,[100],[],[],[2]);
Screen('Flip',design.window); 
KbStrokeWait;

DrawFormattedText(design.window, sprintf('%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s', ...
    'First, read the presented three words carefully.', ...
    'Then, try to generate a fourth word, which combines with each of the three words', ...
    'and would result in word pairs that make up a common compound word or phrase.', ...
    'Once you come up with the fourth word, hold down the space bar while you say that word outloud.', ...
    'The microphone icon means that we are recording your voice.', ...
        '(Press a key to continue reading the instructions.)'), 'center', 'center',fontcolor,[100],[],[],[2]);
Screen('Flip',design.window);
KbStrokeWait;

DrawFormattedText(design.window, sprintf('%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s', ...
    'You have a total of 30 seconds to come up with the solution,', ...
    'and there are 30 trials in total.', ...
    '(Press a key to continue reading the instructions.)'), 'center', 'center',fontcolor,[100],[],[],[2]);
Screen('Flip',design.window);
KbStrokeWait;


DrawFormattedText(design.window, sprintf('%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s', ...
    'After you are done with the solution to the question,', ...
    'we will ask you to report if you felt a sense of insight ', ...
    'during the solution of the question. ', ...
    '(Press a key to continue reading the instructions.)'), 'center', 'center',fontcolor,[100],[],[],[2]);
Screen('Flip',design.window);
KbStrokeWait;

DrawFormattedText(design.window, sprintf('%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s', ...
    'A feeling of insight is a kind of "Aha!" characterized by suddenness and obviousness.', ...
    'An insight or Aha! moment is when the solution comes to you as if out of nowhere', ...
    '??? akin to a lightbulb moment, mini epiphany, or mini eureka moment.', ...
    'For example, ???Oh! Of course! It???s??????',...
    'This won???t be a huge eureka but just a small surprise', ... 
    'Almost everyone has experienced insights or Aha! moments in the past.', ...
    'Many people report insight moments while having a shower or just before falling asleep.',...
     '(Press a key to continue reading the instructions.)'), 'center', 'center',fontcolor,[100],[],[],[2]);
Screen('Flip',design.window);
KbStrokeWait;

DrawFormattedText(design.window, sprintf('%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s', ...
    'After solving each problem, you will be asked the degree to which you are having an ', ...
    'insight on a scale of 1-6, with 1 being "no insight" and 6 being "a very strong insight".', ...
    'Specifically, a rating of ???1??? means that at first, you didn???t know whether the word was', ...
    'the answer, but after thinking about it slowly, strategically, or stepwise, you figured out ', ... 
    'that it was the answer, and you can report the steps you used to solve the problem', ...
    '(for example, trying to combine the single word with each of the three problem words)', ...
    'A rating of ???2??? indicates an extremely weak feeling of insight.', ...
    'A rating of ???3??? or ???4??? means that you didn???t immediately know the word was the answer,', ...
    'but you didn???t have to think about it much either. ',...
    'A rating of ???5??? indicates a moderately strong feeling of insight. ',...
    'A rating of ???6??? means that when you thought of the word you suddenly knew that it was the answer',...
    '(???It popped into my head???; ???Of course!??? ???That???s so obvious???.???)',...
     '(Press a key to try an example. Use your mouse to select the answer.)'), 'center', 'center',fontcolor,[100],[],[],[2]);
Screen('Flip',design.window);
KbStrokeWait;

Likert(design.window, [0 0 1], 'Did you feel a sense of insight?', 'No', 'Yes', [0.8 0 0], 6, 'Unsure', [0.8 0.8 0.8],[0.8 0.8 0.8] );


DrawFormattedText(design.window, sprintf('%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s', ...
    'If you do not give a response at the end of the 30 seconds, you will be asked whether you ', ...
    'were on the verge of having an insight on a 6-point scale.', ...
    'A ???1??? would be that you were stumped and did not have any of these feelings', ...
    'typically reported when having an insight (e.g., surprise, relief, happiness, ease)', ... 
    'A ???6??? would be that you may feel like you could almost see what the solution was,', ...
    'you would solve the problem with a little more time, or you had feelings associated with', ...
    'having an actual insight, despite not solving the problem. ', ...
    'It is up to you to decide what rating to give each of your responses.', ...
    'There are no right or wrong answers, but try to use the whole scale. ', ...
    '(Press a key to try an example. Use your mouse to select the answer.)'), 'center', 'center',fontcolor,[100],[],[],[2]);
Screen('Flip',design.window);
KbStrokeWait;

Likert(design.window, [0 0 1], 'Did you feel on the verge of insight?', 'No', 'Yes', [0.8 0 0], 6, 'Unsure', [0.8 0.8 0.8],[0.8 0.8 0.8] );

DrawFormattedText(design.window, sprintf('%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s', ...
    'Great! Now press a key to practice the task.'), 'center', 'center',fontcolor,[100],[],[],[2]);
Screen('Flip',design.window);
KbStrokeWait;
