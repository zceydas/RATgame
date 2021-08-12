# RATgame
Remote Associates Task (RAT) for measuring convergent creative thinking.

## Task description

In this game, on each trial, participants are presented with three remotely associated words and they are asked to come up with a fourth word that relates to all three. Participants have 15 seconds to come up with a new word. Once they come up with a new word, they press the SPACE bar to speak the new word out loud. Their responses are recorded as an audio file. There is a right 'solution' to each trial. Participants' responses are scored as correct/incorrect. Greater total correct scores represent greater convergent thinking. Example words were selected from Bowden, Jung-Beeman, 2003. For a test-retest design, I selected 90 trials in total, 45 in  test match the other 45 in re-test in terms of % of people that solved each problem correctly within 15 second. Thus, on each session, participants are presented with 45 trials.

## Instructions on how to use the code

1. Download the folder on your computer.
2. Open Matlab (Psychtoolbox needs to be installed).
3. Use these commands to clear your workspace: close all; clear all; clear mex; clear PsychPortAudio;
4. Drag/drop the RATtask.m on the command window.
5. When prompted, enter the subject ID.
6. When prompted, enter the session number. Enter 1 for the first session (test), Enter 2 for the second session (re-test).
7. When prompted, indicate whether you are recording EEG measures. Enter 1 for YES, Enter 0 for NO.
8. When you are done with the experiment, you will have a subject folder that contains all your results including the recordings.

## Warning

Audio recording function implemented in Psychtoolbox is barely compatible with Matlab 2020b+ on Mac. That means, Matlab might crash if you try to re-run the script. Clear all commands might or might not work, so you might need to exit matlab before re-running this script on the same session.

