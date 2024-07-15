clc; clear all; close all; warning off all;

%membaca data asli
data = xlsread('DATA.xlsx',1,'B4:M6');
%nilai max min
min_data = min(min(data));
max_data = max(max(data));
%normalisasi data
[m,n] = size(data);
data_norm = zeros(m,n);
for x = 1:m
    for y = 1:n
        data_norm(x,y) = 0.1+0.8*(data(x,y)-min_data)/(max_data-min_data);
    end
end

% Pelatihan
data_norm = data_norm';
tahun_latih = 2; % Januari 2009 s.d December 2010
data_latih = zeros(12,12);
jumlah_bulan = 12;
 
for n = 1:jumlah_bulan*(tahun_latih-1)
    for m = 1:jumlah_bulan
        data_latih(m,n) = data_norm(m+n-1);
    end
end
 
target_latih = data_norm(jumlah_bulan+1:jumlah_bulan*tahun_latih); % Januari 2007 s.d Desember 2012

% Pembuatan JST
net = newff(minmax(data_latih),[10,1],{'logsig','purelin'},'traingdx');
 
% Memberikan nilai untuk mempengaruhi proses pelatihan
net.performFcn = 'mse';
net.trainParam.goal = 0.001;
net.trainParam.show = 20;
net.trainParam.epochs = 1000;
net.trainParam.mc = 0.75;
net.trainParam.lr = 0.01;
net.trainParam.max_fail = 6;

 
% Proses training
[net_keluaran,tr,Y,E] = train(net,data_latih,target_latih);
 
% Hasil setelah pelatihan
bobot_hidden = net_keluaran.IW{1,1};
bobot_keluaran = net_keluaran.LW{2,1};
bias_hidden = net_keluaran.b{1,1};
bias_keluaran = net_keluaran.b{2,1};
jumlah_iterasi = tr.num_epochs;
nilai_keluaran = Y;
nilai_error = E;
error_MSE = (1/n)*sum(nilai_error.^2);
 
save net.mat net_keluaran
 
% Hasil prediksi
hasil_latih = sim(net_keluaran,data_latih);
max_data = 2590;
min_data = 0;
hasil_latih = ((hasil_latih-0.1)*(max_data-min_data)/0.8)+min_data;

target_asli = xlsread('DATA.xlsx',1,'B5:M5');
 
% Performansi hasil prediksi
figure,
plotregression(target_asli,hasil_latih,'Regression')
 
figure,
plotperform(tr)
 
figure,
plot(hasil_latih,'bo-')
hold on
plot(target_asli,'ro-')
hold off
grid on
title(strcat(['Grafik Keluaran JST vs Target dengan nilai MSE = ',...
num2str(error_MSE)]))
xlabel('Pola ke-')
ylabel('Curah Hujan')
legend('Keluaran JST','Target','Location','Best')