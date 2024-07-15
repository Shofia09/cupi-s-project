clc; clear all; close all; warning off all;

%membaca data asli
data = xlsread('DATA.xlsx',2,'C4:O15');
%nilai max min
min_data = min(data);
max_data = max(data);
%normalisasi data
[m,n] = size(data);
data_norm = zeros(m,n);
for x = 1:m
    for y = 1:n
        data_norm(x,y) = (0.8*(data(x,y)-min_data)/(max_data-min_data))+0.1;
    end
end

% Pelatihan
data_norm = data_norm';
tahun_latih = 3; % Januari 2006 s.d November 2012
data_latih = zeros(12,12);
jumlah_bulan = 12;

for n = 1:jumlah_bulan*(tahun_latih-1)
    for m = 1:jumlah_bulan
        data_latih(m,n) = data_norm(m+n-1);
    end
end

target_latih = data_norm(jumlah_bulan+1:jumlah_bulan*tahun_latih);

