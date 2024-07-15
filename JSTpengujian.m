clc;clear;close all;
 
% Proses membaca data uji dari excel
%membaca data asli
data = xlsread('DATA.xlsx',1,'B5:M6');
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

% Pengujian
tahun_uji = 2; % Januari 2010 s.d Desember 2011
data_uji = zeros(12,12);
jumlah_bulan = 12;
 
for n = 1:jumlah_bulan*(tahun_uji-1)
    for m = 1:jumlah_bulan
        data_uji(m,n) = data_norm(m+n-1);
    end
end

target_uji = data_norm(jumlah_bulan+1:jumlah_bulan*tahun_uji) % Januari s.d Desember 2011

% load jaringan yang sudah dibuat pada proses pelatihan
load net.mat

% Hasil prediksi
hasil_uji = sim(net_keluaran,data_uji);
nilai_error = hasil_uji - target_uji;

hasil_uji = ((hasil_uji-0.1)*(max_data-min_data)/0.8)+min_data;
 
% Performansi hasil prediksi
error_MSE = (1/n)*sum(nilai_error.^2);

target_uji_asli = xlsread('DATA.xlsx',1,'B6:M6');

figure,
plot(hasil_uji,'bo-')
hold on
plot(target_uji_asli,'ro-')
hold off
grid on
title(strcat(['Grafik Keluaran JST vs Target dengan nilai MSE = ',...
num2str(error_MSE)]))
xlabel('Pola ke-')
ylabel('Curah Hujan')
legend('Keluaran JST','Target','Location','Best')