% Here we use fft to have an idea about different frequecies that
% diffrentiate between the yes and no audios 
load proj.mat
Fs =16000;
a_t = length(yes1)/Fs;
N =  a_t * Fs;
k1 = -N/2:N/2-1;
yes1_k = fft(yes1, N); % Need to fftshift in order to plot X[k] for k= [-N/2 to (N/2)-1]
yes1_k = fftshift(yes1_k);
yes2_k = fft(yes2, N); % Need to fftshift in order to plot X[k] for k= [-N/2 to (N/2)-1]
yes2_k = fftshift(yes2_k);
yes3_k = fft(yes3, N); % Need to fftshift in order to plot X[k] for k= [-N/2 to (N/2)-1]
yes3_k = fftshift(yes3_k);
figure(1);
subplot(2,2,1)
stem(k1, abs(yes1_k));
xlabel('k');
ylabel('|Yes1[k]|');
subplot(2,2,2)
stem(k1, abs(yes2_k));
xlabel('k');
ylabel('|Yes2[k]|');
subplot(2,2,3)
stem(k1, abs(yes2_k));
xlabel('k');
ylabel('|Yes3[k]|');
no1_k = fft(no1, N); % Need to fftshift in order to plot X[k] for k= [-N/2 to (N/2)-1]
no1_k = fftshift(no1_k);
no2_k = fft(no2, N); % Need to fftshift in order to plot X[k] for k= [-N/2 to (N/2)-1]
no2_k = fftshift(no2_k);
no3_k = fft(no3, N); % Need to fftshift in order to plot X[k] for k= [-N/2 to (N/2)-1]
no3_k = fftshift(no3_k);
figure(2);
subplot(2,2,1)
stem(k1, abs(no1_k));
xlabel('k');
ylabel('|No1[k]|');
subplot(2,2,2)
stem(k1, abs(no2_k));
xlabel('k');
ylabel('|no2[k]|');
subplot(2,2,3)
stem(k1, abs(no3_k));
xlabel('k');
ylabel('|No3[k]|');