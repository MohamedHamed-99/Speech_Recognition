Fs = 16000; 
rec = audiorecorder(Fs, 16, 1); 
disp('Record your message now, and press ENTER when done.'); recordblocking(rec, 2);
yes1 = getaudiodata(rec, 'double')';
yes1 = yes1 / max(abs(yes1));
rec1 = audiorecorder(Fs, 16, 1); 
disp('Record your message now, and press ENTER when done.'); recordblocking(rec1, 2); 
no1 = getaudiodata(rec1, 'double')';
no1 = no1 / max(abs(no1));
rec2 = audiorecorder(Fs, 16, 1); 
disp('Record your message now, and press ENTER when done.'); recordblocking(rec2, 2);
yes2 = getaudiodata(rec2, 'double')';
yes2 = yes2 / max(abs(yes2));
rec3 = audiorecorder(Fs, 16, 1); 
disp('Record your message now, and press ENTER when done.'); recordblocking(rec3, 2); 
no2 = getaudiodata(rec3, 'double')';
no2 = no2 / max(abs(no2));
rec4 = audiorecorder(Fs, 16, 1); 
disp('Record your message now, and press ENTER when done.'); recordblocking(rec4, 2);
yes3 = getaudiodata(rec4, 'double')';
yes3 = yes3 / max(abs(yes3));
rec5 = audiorecorder(Fs, 16, 1); 
disp('Record your message now, and press ENTER when done.'); recordblocking(rec5, 2); 
no3 = getaudiodata(rec5, 'double')';
no3 = no3 / max(abs(no3));
save proj.mat yes1 yes2 yes3 no1 no2 no3