%getting the avg to sperate between the yes and the no to fi the threshold 
load proj.mat
fs = 16000;
N = length(yes1);
k1 = round(N*5000/fs); % FFT component corresponding to 5000 Hz 
k2 = round(N*11025/fs); % FFT component corresponding to 11025 Hz
yes1_k = abs(fft(yes1));
avg_yes1 = sum(yes1_k(1:k1))/sum(yes1_k(k1:k2)); % avg = 4.2771

yes2_k = abs(fft(yes2));
avg_yes2 = sum(yes2_k(1:k1))/sum(yes2_k(k1:k2)); % avg= 6.9813


yes3_k = abs(fft(yes3));
avg_yes3 = sum(yes3_k(1:k1))/sum(yes3_k(k1:k2)); % avg = 2.28191


no1_k = abs(fft(no1));
avg_no1 = sum(no1_k(1:k1))/sum(no1_k(k1:k2)); %15.0552

no2_k = abs(fft(no2));
avg_no2 = sum(no2_k(1:k1))/sum(no2_k(k1:k2)); %18.21649

no3_k = abs(fft(no3));
avg_no3 = sum(no3_k(1:k1))/sum(no3_k(k1:k2)); % 37.5732
x = [avg_yes3 avg_yes2 avg_yes1];
y = [avg_no1 avg_no2 avg_no3];
figure(1)
hist(x)
figure(2)
hist(y)
