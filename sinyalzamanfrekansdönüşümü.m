% Bir sinyalin zaman domaininden frekans domaine dönüşümü için kullanılan yöntemler için örnek kodlar
% FFT ile frekans dönüşümü 

% Örnek sinyal oluşturma
fs = 1000; % örnekleme frekansı (Hz)
t = 0:1/fs:1-1/fs; % 1 saniye boyunca örnekler
x = 5*sin(2*pi*50*t) + 3*sin(2*pi*120*t);

% FFT uygulama
N = length(x);
X = fft(x);
f = (0:N-1)*(fs/N); % frekans eksenini oluşturma

% FFT sonucunu görselleştirme
figure;
subplot(2,1,1), plot(t,x),title("Zaman Domaininde Sinyal");
xlabel("Zaman");
ylabel("Genlik");
subplot(2,1,2),plot(f,abs(X)), title("Frekans Domaininde Sinyal");
xlabel('Frekans (Hz)');
ylabel('FFT Magnitude');
%% Welch ile frekans dönüşümü 
% Örnek sinyal oluşturma
fs = 1000; % örnekleme frekansı (Hz)
t = 0:1/fs:1-1/fs; % 1 saniye boyunca örnekler
x = 5*sin(2*pi*50*t) + 3*sin(2*pi*120*t);

% Welch yöntemiyle spektral yoğunluğu hesaplama
[Pxx,f] = pwelch(x,[],[],[],fs);

% Spektral yoğunluğu görselleştirme
figure;
subplot(2,1,1), plot(t,x),title("Zaman Domaininde Sinyal");
xlabel("Zaman");
ylabel("Genlik");
subplot(2,1,2),plot(f,Pxx),title("Welch Dönüşümündeki Sinyal");
xlabel('Frekans (Hz)');
ylabel('Spektral Yoğunluk');

%% Wavelet ile frekans dönüşümü
% Örnek sinyal oluşturma
t = 0:0.001:1;
x = cos(2*pi*50*t) + cos(2*pi*120*t) + randn(size(t));

% Continuous Wavelet Transform (CWT) uygulama
[cfs, frequencies] = cwt(x, 'amor', 1000);

% CWT sonucunu görselleştirme
figure;
plot(t,x),title("Zaman Domaininde Sinyal");
xlabel("Zaman");
ylabel("Genlik");
figure;
surf(t, frequencies, abs(cfs));
view(0,90);
xlabel('Zaman (s)');
ylabel('Frekans (Hz)');
colorbar;
