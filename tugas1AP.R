#1. Buat dataframe satu kelas mengenai tingkat pemahaman
#   terhadap materi praktikum metode statistika
nama=c("Alya novia nurazizah","Angga Wira Maulana","Arifatul Fitriyah","Ayu Rosida","Devi Rahmawati Firnanda","Devina Agustin","Dewi Puspasari","Dok Sakinah","Durratul Sayyidah Adilah Munawaroh","Dwi Nur Aini","Ela Andora","Essa Hakim Ramadhani","FARAH FARIDATUL BASYIROH","Fathya Fathin Illaningtiyas","Feni Ayu Setyaningsih","Gaby Estella Renancy","Gohan Lasuli Silvia","Hanif Faishal","Intan Erlina F","Jenni Alfa Nanda Arianti","Khafidha Nur Arifin","Maulidya Nur Shafira","May Istiqomah ","Mia Audina Aprilyawati","Muhammad Fahmil Fakih","MUHAMMAD IMRON ROSYADI","Munipatun Napisah","NAILA ILMI AMALIYA","Putri Fuzna Awanisa","PUTRI INTAN SUKMA WATI","Riska Wahyuni","Shellyma Herita","Shofia Nabila Azzahra","Siti Nur Khasanah","Sukma Lailatul Fadillah","Ulfie Sakha Aulasya","Vella Anggun Fitria","Wilda Khoirunnisa","Yuniarti Permatasari")
NIM=c(201810101055,201810101111,201810101068,201810101077,201810101018,201810101047,201810101024,201810101012,201810101028,201810101051,201810101067,201810101029,201810101103,201810101119,201810101026,201810101113,201810101092,201810101069,201810101043,201810101094,201810101062,201810101064,201810101004,201810101001,201810101053,201810101037,201810101093,201810101049,201810101117,201810101056,201810101058,201810101075,201810101084,201810101083,201810101052,201810101098,201810101023,201810101048,201810101085)
tingkat_pemahaman=c(85,80,60,95,90,80,80,75,70,89,90,91,70,50,90,79,80,80,50,80,70,75,85,90,90,50,70,70,90,85,80,85,75,70,90,80,90,70,90)
df<-data.frame(nama,NIM,tingkat_pemahaman)
df
#Tingat pemahaman saya mengenai materi praktikum metode statistika adalah 75, 
#karena di awal praktikum aplikasi R saya masih belum bisa terinstal sehingga 
#tidak dapat mempraktikkan secara langsung. Selain itu, ketika tidak melihat  
#script saya kesulitan dalam mempraktikkan materi-materi yang telah diberikan.

#2. Cari nilai statistika deskriptif dari dataframe
quantile(tingkat_pemahaman)
mean(tingkat_pemahaman)
median(tingkat_pemahaman)
min(tingkat_pemahaman)
max(tingkat_pemahaman)

#3. Buat matrix
A=c(3,4,2,1,6,12,4,7,9)
matrix(A,3,3,byrow=TRUE)
B=c(2,1,11,3,5,6,1,2,4,8,2,4)
matrix(B,3,4,byrow=TRUE)

#4. Buat array alphabet
tugas <- array(LETTERS,dim=c(3,4,3))
tugas
#a
tugas[2,1,2]
#b
tugas[1,2,1]
#c
tugas[3,4,3]