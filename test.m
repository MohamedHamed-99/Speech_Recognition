%Testing yes_no2 function 
load proj.mat
Fs = 16000; % sampling rate (Hz)
rec = audiorecorder(Fs, 16, 1); % create recording device
% record the signal for 5 seconds
disp('Record your message now, and press ENTER when done.'); recordblocking(rec, 2);
% get the signal from the recording device 
msg1 = getaudiodata(rec, 'double');
display(yes_no2(msg1,Fs))