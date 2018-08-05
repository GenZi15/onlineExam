create table Siswa 
(
idSiswa varchar(10) primary key,
fullName varchar(100),
kelas varchar(3)
)
delete from Siswa where idSiswa = '20166811'
create table Guru
(
idGuru varchar(10) primary key,
idMapel int,
idKelas int,
fullName varchar(100),
)

create table Kelas
(
idKelas int identity(1,1) primary key,
namaKelas varchar(3)
)

create table detailKelas
(
idDetailKelas int identity(1,1) primary key,
noKelas int,
)
sp_help detailsoal
create table Mapel
(
idMapel int identity(1,1) primary key,
namaMapel varchar(100),
Kkm int
);
drop table AksesMapel
create table AksesMapel
(
idMapel int,
idGuru varchar(10),
foreign key(idMapel) references Mapel(idMapel),
foreign key(idGuru) references Guru(idGuru)
)

create table AksesKelas
(
idKelas int,
idGuru varchar(10),
foreign key(idKelas) references Kelas(idKelas),
foreign key(idGuru) references Guru(idGuru),
)

create table DetailSoal
(
idDetailSoal int,
idNoSoal int,
idMapel int,
pertanyaan varchar(max),
jawabanA varchar(max),
jawabanB varchar(max),
jawabanC varchar(max),
jawabanD varchar(max),
jawabanE varchar(max),
jawabanBenar char(1),
);
sp_help detailsoal

select * from Guru

create table HeaderSoal
(
idSoal int identity(1,1) primary key,
idMapel int,
idGuru varchar(10),
idDetailSoal int,
TglDibuat DateTime,
foreign key (idMapel) references mapel(idMapel),
foreign key (idGuru) references guru(idGuru),
);

create table Ujian 
(
idUjian int identity(1,1),
idSoal int,
idSiswa varchar(10),
tglPengerjaan DateTime,
nilai int,
primary key(idUjian, idSoal, idSiswa),
foreign key(idSoal) references HeaderSoal(idSoal),
foreign key(idSiswa) references Siswa(idSiswa) 
);
alter table headersoal drop column idNoSoal
create table [Admin]
(
idAdmin varchar(10) primary key,
[fullName] varchar(100),
)

create table Pengguna
(
idPengguna varchar(100),
[password] varchar(100),
[role] varchar(100),
)

-->>> INSERT DATA INTO TABLES <<<--

sp_help Siswa
sp_help detailsoal
delete from Siswa where idSiswa = '20166809'
 use onlineExam
select * from Mapel
select * from DetailSoal
insert into Siswa
values--('20166809', 'Akhdan Rasiq Gumelar', 'XI','akhdan', 'Siswa', 11),
('20166810', 'Arya', 'XI','arya', 'Siswa', 11),
('20166811', 'Christian Nico Hendriawan', 'XI','nico', 'Siswa', 11),
('20166812', 'Syafrizal Kurniadin', 'XI','syafrizal', 'Siswa', 11),
('20166813', 'Khairil Harianto', 'XI','eril', 'Siswa', 11),
('20167809', 'Bagus Seno', 'XI','bagus', 'Siswa', 12),
('20167810', 'Aldian Kurniawan', 'XI','aldian', 'Siswa', 12),
('20167811', 'Reyhan Yudi Anugrah', 'XI','Reyhan', 'Siswa', 12),
('20167812', 'Nadhif Hakim', 'XI','nadhif', 'Siswa', 12),
('20167813', 'Denis Hakimullah', 'XI','denis', 'Siswa', 12),
('20165801', 'Tutuko Rakahadian', 'XI','tutuko', 'Siswa', 10),
('20165802', 'Raffly Ananda', 'XI','raffly', 'Siswa', 10),
('20165803', 'Ariq Ghifari', 'XI','ariq', 'Siswa', 10),
('20165804', 'Bagus Saputra', 'XI','bagus', 'Siswa', 10),
('20165805', 'Alifajar Muhammad Rizkyanto', 'XI','alifajar', 'Siswa', 10),

('20176809', 'Muhammad Naufal', 'X','naufal', 'Siswa', 2),
('20176810', 'Wahyu Dwi', 'X','wahyu', 'Siswa', 2),
('20176811', 'Endang Sukirna', 'X','endang', 'Siswa', 2),
('20176812', 'Narto Syarifudin', 'X','narto', 'Siswa', 2),
('20176813', 'Nicola Hartono', 'X','nicola', 'Siswa', 2),
('20177809', 'Putri Suci Rahmawati', 'X','putri', 'Siswa', 3),
('20177810', 'Ridwan Pangestu Hidayat', 'X','ridwan', 'Siswa', 3),
('20177811', 'Gusti Seno Wicaksono', 'X','gusti', 'Siswa', 3),
('20177812', 'Ian Hidayat', 'X','ian', 'Siswa', 3),
('20177813', 'Oktavian Agusta', 'X','vian', 'Siswa', 3),
('20175801', 'Raihan Daffa', 'X','raihan', 'Siswa', 4),
('20175802', 'Ikhsan Alfarizi', 'X','ikhsan', 'Siswa', 4),
('20175803', 'Elmar Leonard', 'X','elmar', 'Siswa', 4),
('20175804', 'Chirstopher Jordan', 'X','jordan', 'Siswa', 4),
('20175805', 'Sarah Abigail Yuranian', 'X','sarah', 'Siswa', 4),

('20156809', 'Luthfi Nabila Qonitha', 'XII','luthfi', 'Siswa', 5),
('20156810', 'Christian Jehoshaphat', 'XII','chris', '', 5),
('20156811', 'Qonitha Ailsya Raihana', 'XII','tata', 'Siswa', 5),
('20156812', 'Rani Valenda', 'XII','rani', 'Siswa', 5),
('20156813', 'Rafi Erdian', 'XII','rafi', 'Siswa', 5),
('20157809', 'Nabila Putri Hendarawan', 'XII','nabila', 'Siswa', 6),
('20157810', 'titah Arya Dewantara', 'XII','titah', 'Siswa', 6),
('20157811', 'Putra Hidayat', 'XII','putra', 'Siswa', 6),
('20157812', 'Guntur Aji Wibowo', 'XII','guntur', 'Siswa', 6),
('20157813', 'Ridwan Pangestu Suroso', 'XII','ridwan', 'Siswa', 6),
('20155801', 'Ahmad Basir Sutisna', 'XII','ahmad', 'Siswa', 7),
('20155802', 'Alexa Putra', 'XII','alex', 'Siswa', 7),
('20155803', 'Malik Putra Adam', 'XII','malik', 'Siswa', 7),
('20155804', 'Bagoes Ananda Putra', 'XII','bagoes', 'Siswa', 7),
('20155805', 'Tisani Putri', 'XII','tisani', 'Siswa', 7)

sp_help Guru
delete from Guru where idGuru = 'TC20170023'

('TC20170023','Ecky Pradita', 'ecky', 'Guru')

insert into Guru
values ('TC20170024','Muhammad Abdul Aziz', 'aziz', 'Guru'),
('TC20090023','Muhammad Abdul Akbar', 'akbar', 'Guru'),
('TC20080002','Ira Rahmawati', 'ira', 'Guru'),
('TC20080001','Senny Permata Sari', 'senny', 'Guru'),
('TC20120002','Ikmal', 'ikmal', 'Guru'),
('TC20110003','Marwadi', 'marwadi', 'Guru'),
('TC20120008','Rini Puji Lestari', 'rini', 'Guru'),
('TC20170025','Deti', 'deti', 'Guru'),
('TC20170026','Dani Rustandi', 'dani', 'Guru'),
('TC20170027','Bayu Bambang Aris Sadewa', 'Bayu', 'Guru'),
('TC20110004','Pasaoran Pasaribu', 'pasaoran', 'Guru'),
('TC20010010','Nurul Handi', 'nurul', 'Guru'),
('TC20090002','Purwa Ningsih', 'ningsih', 'Guru'),
('TC20170028','Rizky Rizkyatul', 'rizky', 'Guru')

select * from guru

sp_help aksesKelas

select * from aksesKelas

select * from AksesMapel

insert into aksesKelas
values (1, 'TC20170024'), (2, 'TC20170024'),			 -- Aziz
(1, 'TC20090023'), (2, 'TC20090023'),                    -- Ihsan A A
(1, 'TC20080002'), (2, 'TC20080002'), (3, 'TC20080002'), -- Ira
(1, 'TC20080001'), (2, 'TC20080001'),					 -- Senny
(1, 'TC20120002'), (2, 'TC20120002'), (3, 'TC20120002'), -- Ikmal
(1, 'TC20110003'), (2, 'TC20110003'), (3, 'TC20110003'), -- Marwadi
(1, 'TC20120008'), (2, 'TC20120008'),					 -- Rini
(1, 'TC20170025'), (2, 'TC20170025'),					 -- Deti
(1, 'TC20170026'), (2, 'TC20170026'),					 -- Dani
(1, 'TC20170027'), (2, 'TC20170027'),					 -- Bayu
(1, 'TC20110004'), (2, 'TC20110004'), (3, 'TC20110004'), -- Pasaor
(1, 'TC20010010'), (2, 'TC20010010'), (3, 'TC20010010'), -- Nurul
(1, 'TC20090002'), (2, 'TC20090002'),					 -- Ningsih
(1, 'TC20170028'), (2, 'TC20170028'), (3, 'TC20170028')  -- Rizky

select * from Mapel

select * from siswa

insert into AksesMapel
values (2, 'TC20170024'),
(7, 'TC20090023'),
(4, 'TC20080002'), (5, 'TC20080002'),
(3, 'TC20080001'), (4, 'TC20080001'), (7, 'TC20080001'),
(4, 'TC20120002'), (5, 'TC20120002'),
(8, 'TC20110003'),
(1, 'TC20120008'),
(1, 'TC20170025'),
(3, 'TC20170026'),
(9, 'TC20170027'),
(10, 'TC20110004'),
(7, 'TC20010010'),
(1, 'TC20090002'),
(3, 'TC20170028'), (4, 'TC20170028'), (5, 'TC20170028'), (7, 'TC20170028')

select * from HeaderSoal
select * from DetailSoal

select * from mapel

sp_help mapel

sp_help aksesKelas
select * from mapel

insert into AksesKelas
values (2, 'TC20170023'),
(3, 'TC20170023')

insert into AksesMapel
values (7, 'TC20170023'),
(2, 'TC20170023'),
(3, 'TC20170023'),
(4, 'TC20170023')

drop table Mapel

sp_help ujian

use onlineExam

sp_help detailSoal
sp_help detailSoal
use lksbinus
sp_help detailsoal
alter table transactionheader add foreign key (Transactionid) references TransactionDetail(transactionid)
sp_help transactiondetail

insert into DetailSoal(idDetailSoal, idNoSoal, idMapel, pertanyaan, jawabanA, jawabanB, jawabanC, jawabanD, jawabanE, jawabanBenar)
values (1,1,1,' Berikut  yang bukan merupakan contoh dari konjungsi temporal adalah?','mengapa ','selanjutnya ','kemudian','apabila','setelah','C'),
(1,2,1,'Kalimat dengan tesk prosedur tidak membingungkan dan mudah diikuti berarti kalimat tersebut','logis','singkat','jelas','baku','ejektif','B'),
(1,3,1,'“jangan serahkan kendaraan atau STNK begitu saja” merupakan kalimat?','Interogatif','Imperative','Deklaratif','primitive ','baku ','A'),
(1,4,1,'Jika, seandainya, apabila merupakan bagian dari?','Konjungsi temporal','verba tingkah laku','verba material','pembukaan','konjngsi syarat','E'),
(1,5,1,'“pastikan tuduhan pelanggaran” merupakan contoh dari?',' Deklaratif','interogatif','imperatif','perpuasif','deklarasi','D'),
(1,6,1,'Metode  berpidato yang dengan menghafal naskah tesk pidato terlebih dahulu disebut?','Imprompti','Memoriter','naskah','Esktemporan','Imporan','C'),
(1,7,1,'Penyampain nasehat yang tidak dibatasi oleh waktu  adalah','Ceramah ','Pidato','Dakwah','seminar',' Presentasi','C'),
(1,8,1,'Kalimat yang  menyatakan penutup adalah?','Mohon maaf','Dan ini',' Tetapi','Inilah','Sekalipun','A'),
(1,9,1,'Paragraph kedua termasuk struktur bagian?','isi','Pendahuluan','abstrak','orientasi','penutup','A'),
(1,10,1,' Paragraph pertama termasuk struktur bagian?','penutup','isi','pendahuluan','abstrak','orientasi','C')

insert into DetailSoal(idDetailSoal, idNoSoal, idMapel, pertanyaan, jawabanA, jawabanB, jawabanC, jawabanD, jawabanE, jawabanBenar)
values (2,1,2,' “ Andi travelled to maldive last year”  the passive is?','a. Maldive was travelled by Andi last year.','Maldive is travelled by Andi last year.','No change','Maldive will be travelled by Andi last year','Maldive  travelled by Andi last year','B'),
(2,2,2,' “ Omar wrote a letter last night” the passive is?',' A letter were written by Omar lastnight',' A letter is written by Omar lastnight',' A letter are written by Omar lastnight','A letteris being written by Omar lastnigh',' A letter was written by Omar lastnight','D'),
(2,3,2,' “ she broke the window yesterday” the passive is?',' The window is broke by her yesterday','The window is break by her yesterday',' The window is being broken  by her yesterday','The window is broke nby her yesterday','The window is werw broken by her yesterday','B'),
(2,4,2,' “ students are drawing the scenery” the passibe is?',' The scenery are drew by students',' The scenery is drew by students','The scenery are being  draw by students','The scenery is being drew  by students','The scenery is being  drawn by students','E'),
(2,5,2,' Abibah arrives  at  school 06.15 am, she greets her teacher by saying','.Hello','goog morning','good night','Good afternoon','Good morning  ','E'),
(2,6,2,'Soleh always ... late in the morning. His mother is always mad with him','Waken up','Worked up','Woke up','Wake up','Wakes up','E'),
(2,7,2,'how are you ?','yes','no','alright','of course','fine','E'),
(2,8,2,'" selamat pagi " in english ?','good morning','good night','good bye','Good afternoon','oh may god','A'),
(2,9,2,'" senin " in english ?','Sunday ','Saturday','Friday','Thursday','Monday','E'),
(2,10,2,'" tidur " in english ? ','take  a bath','swimming','sleep','run','reading','C'),
(3,1,3,'Diketahui data 4,7,5,6,8,8,3,5,9,7. Hamparan data di samping adalah ','3','6','7','8','9','C'),
(3,2,3,' Kuartil atas data pada tabel Frekuensi di bawah ini adalah ','54,5','60,5','78,25','. 78,5','78,75','E'),
(3,3,3,'ibu membeli 25 apel dan 10 jeruk,Kemudian ayah membeli buah apel sebanyak 10 . Jadi berapa total buah yang dibeli oleh ayah dan ibu?','45 buah','25 buah','35 buah','20 buah','50 buah','A'),
(3,4,3,'diketahui sistem pertidaksamaan linear dua variabel x > 0,  y > 0,   y <  0, x + y  > 3, 2x  + y  <  4. Nilai maksimum fungsi tujuannya jika di ketahui f(x ,y)= 5x + 2y adalah ?  ','10','12','14','16','20','B'),
(3,5,3,'susunan kumpulan bilangan yang diatur dalam baris dan kolom berbentuk persegi panjang yang dicirikan dengan elemen-elemen penyusunnya diapit oleh siku atau kurung biasa. Termasuk pengertian dari ?','orde','determinan','transpose matriks','matriks','invers matriks','D'),
(3,6,3,'diketahui untuk setiap x bilangan genap, maka x-1 adalah ?','bilangan prima','bilangan genap','bilangan ganjil','bilangan desimal','bilangan pecahan ','A'),
(3,7,3,' Nilai rata-rata tes suatu lomba matematika dari 20 orang siswa adalah 25. Jika nilai rata-rata 8  dari orang siswa dari 20 siswa tersebut adalah 10, maka nilai rata-rata dari 12 siswa lainnya adalah  ?','10','20','30','40','50','C'),
(3,8,3,'anisa membeli buku seharga Rp.50.000 dan uang anisa sebesar Rp. 100.000. jadi berapa kembalian uang anisa ?','Rp. 30.000','Rp.40.000','Rp.60.000','Rp50.000','tidak kembali','D'),
(3,9,3,'ibu pergi ke pasar pada pukul 07:00 pagi dan pulang kerumah pada pukul 09:00 pagi. Berapa lama ibu pergi kepasar ?','3 jam','2 jam','1 jam','30 meenit','24 menit','B'),
(3,10,3,'1 jam sama dengan …. Menit','60 menit','120 menit','30 menit','25 menit','7 menit','A'),
(4,1,4,'Gerak suatu benda pada garis lurus dengan kecepatan tetap merupakan pengertian dari:','Gerak Translasi','Gerak Melingkar','Kecepatan','GLBB','GLB','E'),
(4,2,4,'Dari pilihan jawaban berikut, manakah yang merupakan definisi atau pengertian dari Kelajuan Sesaat','kelajuan rata-rata yang waktu tempuhnya mendekati nol','kelajuan rata-rata hasil dari perpindahan dari satu tempat ke tempat lainnya',') hasil bagi jarak total yang ditempuh dengan waktu tempuhnya','hasil bagi perpindahan dengan selang waktu',' jarak yang ditempuh dengan waktu tempuhnya','B'),
(4,3,3,' Luas suatu Bujur sangkar adalah 26,5 cm2, mka panjang salah satu sisinya adalah…','5,1478 cm','5,148 cm','5,15 cm','.  5,2 cm','5,1 cm','C'),
(4,4,4,'Diantara kelompok besaran berikut, yang termasuk kelompok besaran pokok dalam   system Internasional adalah ','Suhu, volume, massa jenis dan kuat arus','Kuat arus, panjang, waktu,  dan massa jenis','Panjang, luas, waktu dan jumlah zat','. Kuat arus, intersitas cahaya, suhu, waktu','Intensitas cahaya, kecepatan, percepatan, waktu','D'),
(4,5,4,'Seorang siswa mengukur diameter sebuah lingkaran hasilnya adalah 8,50 cm. Keliling lingkarannya dituliskan menurut aturan angka penting adalah ','. 267 cm','26,7 cm','. 2,66 cm','0,0267 cm','267','A'),
(4,6,4,'Luas suatu Bujur sangkar adalah 26,5 cm2, mka panjang salah satu sisinya adalah…',' 5,1478 cm','82,74 cm2','82,745 cm2','82,75 cm2','83 cm2','E'),
(4,7,4,'budi mengendarai sepeda motor sejauh 80 km selama 2 jam. Kecepatan rata-rata budi sebesar ?','11,11 m/s','40 m/s','666,67 m/s','666,67 km/jam','22,22 km/jam','A'),
(4,8,4,'satuan koefisien gesek adalah ?','ms','s/m','farad','ohm','tidak ada satuan','E'),
(4,9,4,'sebuah roda jari-jari 60 cm diputar dengan kecepatan 6 m/s. kecepatan sudutnya sebesar ?','12 rad/s','3 rad/s','1,2 rad/s','0,3 rad/s','10 rad/s','C'),
(4,10,4,'bilangan 3,04000 memiliki …. Angka penting.','2','3','4','5','6','E'),
(5,1,5,'pada reaksi 2 NH3 (g) → N2 (g) + 3H2 (l) ΔH = +1173 kJ maka energi ikatan rata-rata N-H adalah ','1.173,0 kJ','586,5 kJ','391,0 kJ','195,5 kJ','. 159,5 kJ','D'),
(5,2,5,'Pengaruh perubahan suhu dari percobaan 2 dan 5 pada soal nomor 3 adalah ','suhu naik 10° C kecepatan reaksi menjadi 2 kali','suhu naik 10° C kecepatan reaksi menjadi 1/2 kali','bila suhu naik kecepatan reaksi berkurang','bila suhu turun kecepatan reaksi bertambah','bila suhu turun kecepatan reaksi berkurang','A'),
(5,3,5,'Pada suatu reaksi suhu dari 25° C dinaikkan menjadi 75° C. Jika setiap kenaikan 10° C kecepatan  menjadi 2 kali lebih cepat, maka kecepatan reaksi tersebut di atas menjadi …. kali lebih cepat.','2','8','10','16','32','E'),
(5,4,5,'U01U3EBT0509000022A Dari data di atas reaksi yang berlangsung paling cepat adalah percobaan nomor ','1','2','3','4','5','A'),
(5,5,5,' Dari reaksi NO dan Br2 diperoleh data sebagai berikut  U01U3EBT0507000054A Ordo reaksi tersebut adalah ','0','1','2','3','4','D'),
(5,6,5,'Hasil percobaan reaksi NO(g) + 2H2 (g)> panahN2(g) + 2H2O(g diperoleh data sebagai berikut : U01U3EBT0508000022A Tingkat reaksi untuk reaksi di atas adalah ','1','tetap','2,5','2','3','B'),
(5,7,5,'pada reaksi2 NH3 (g) → N2 (g) + 3H2 (l) ΔH = +1173 kJ maka energi ikatan rata-rata N-H adalah ','1.173,0 kJ','586,5 kJ','391,0 kJ','195,5 kJ','159,5 kJ','D'),
(5,8,5,'Suatu reaksi berlangsung tiga kali lebih cepat, jika suhu dinaikkan sebesar 20oC. Bila pada suhu 10oC reaksi berlangsung selama 45 menit, maka pada suhu 50oC reaksi tersebut berlangsung selama ','1/50 menit                               ','1/25 menit','1 menit','1/5 menit','5 menit','E'),
(5,9,5,'Data percobaan reaksi antara besi dan larutan asam klorida : U01U3EBT0509000022A Dari data di atas reaksi yang berlangsung paling cepat adalah percobaan nomor ?','1','2','3','4','5','A'),
(5,10,5,'Dari suatu reaksi diketemukan bahwa kenaikan suhu sebesar 10°C dapat memperbesar  kecepatan reaksi 2x. Keterangan yang tepat untuk ini adalah?','energi rata-rata partikel yang beraksi naik menjadi 2x',' kecepatan rata-rata partikel yang beraksi naik menjadi 2x','jumlah partikel yang memiliki energi minimum bertambah menjadi 2x','frekuensi tumbukan naik menjadi 2x','energi aktivasi naik menjadi 2x','D'),
(6,1,6,'Di samping masjid Demak, Sunan Kalijaga menciptakan dasar-dasar perayaan Maulud Nabi Muhammad saw. yang sampai sekarang masih berlangsung di Yogyakarta, Surakarta, dan cirebon, yaitu?','mauludan','rajaban','suroan','sekaten','syawalan','D'),
(6,2,6,'Penyebaran Islam di Indonesia melalui jalur utara diperoleh unsur baru yang disebut ','Tasawuf','Wahabi','Muhammadiyah','Ichwanul Muslimin','Syi’ah','A'),
(6,3,6,'Perkembangan tradisi Islam yang cukup pesat mampu mempersatukan masyarakat dalam Perkembangan tradisi Islam yang cukup pesat mampu mempersatukan masyarakat dalam menghadapi bangsa ?','jepang','china','afrika','eropa','australia','D'),
(6,4,6,'Proses terbentuknya kota pada awal pengaruh Islam lebih bermakna …','ekomonis','religus','sosial','budaya','politis','A'),
(6,5,6,'Perkembangan perdagangan yang terus meningkat mempercepat berdirinya kerajaan-kerajaan Islam seperti di bawah ini, kecuali ?','demak','ternate','tidore','malaka','madura','E'),
(6,6,6,'Munculnya istilah sunan, wazir, dan laksamana adalah bentuk-bentuk pengaruh Islam di bidang….','budaya','sosial','politik','pemerintah','hukum','E'),
(6,7,6,'Berikut ini adalah tempat pengajaran agama Islam, yaitu ….','langgar','musolah','masjid','gardu','langgar,musolah dan masjid benar','E'),
(6,8,6,'Setelah jatuhnya Malaka tahun 1511, maka perkembangan Islam pindah ke ….','banten ','maluku','makkasar','irian','kalimantan','A'),
(6,9,6,'Daerah yang merupakan pusat penyebaran Islam sekaligus tempat pertemuan kaum intelektual Islam adalah ….','maluku ','banten','malaka','aceh','makkasar','A'),
(6,10,6,'pattimura gugur pada tahun ?','1815','1816','1817','1818','1819','C'),
(7,1,7,'Dalam menyusun suatu program,langkah pertama yang harus di lakkukan adalah :','Membuat program','membuat algoritma','membeli komputer','prose','mempelajari progrm','B'),
(7,2,7,'Sebuah prosedur langkah demi langkah yang pasti untuk menyelesaikan sebuah   masalah di sebut ?','proses','program','algoritma','step','diagram','C'),
(7,3,7,'Pseudocode yang di gunakan pada penulisan algoritma berupa ','bahasa inggris','bahasa indonesia','bahasa pemograman','bahasa mesin','bahasa puitis','C'),
(7,4,7,'Pada pembuatan program komputer, algoritma dibuat ',' Sebelum pembuatan program','Pada saat program dibuat','Sesudah pembuatan program','Pada saat verifikasi program','Pada saat di jalankan','A'),
(7,5,7,'Tahapan dalam menyelesaikan suatu masalah adalah ','Masalah-Pseudocode-Flowchart-Program-Eksekusi-Hasil','Masalah-Algoritma-Flowchart-Program-Eksekusi-Hasil','Masalah-Model-Algoritma-Eksekusi-Hasil','Pada saat verifikasi program','algoritma-Program-Model-Eksekusi-Hasil','D'),
(7,6,7,'Diketahui bahwa kantong P kosong. Kantong Q berissi 10 buah kelereng dan kantong R berisi 15 kelereng. Apabila yang terbawa hanya sebuah kantong dan di katakan BUKAN  Maka jumlah kelereng yang terbawa adalahkantong P yang terbawa, ','10','15','10 dan 15','12','kosong','C'),
(7,7,7,'Diberikan algoritma : Apabila warna merah maka jadi hijau. Apabila warna hijau maka jadi putih, selain warna merah dan hijau maka jadi ungu. Jika kondisi input warna adalah hitam, maka warna jadi','merah','unggu','hijau','putih','abu-abu','B'),
(7,8,7,'Instruksi P=Q akan mengakibatkan nilai P=nilaiQ,dan nilai Q menjadi ?','Menjadi Sembarang Nilai','Menjadi hampa ','Q tetap ','P tetap','menjadi 10','D'),
(7,9,7,'Apabila a=5, b=10, maka jika di berikan instruksi a=b; b=a akan mengakibatkan  ?','a=0 , b=5','a=10 , b=5','a=10 , b=0','a=b','a=10 , b=10','E'),
(7,10,7,'Di berikan algoritma P=10; P=P+5; Q=P. Nilai P dan Q masing-masing adalah ?','15 dan 0','0 dan 15','15 dan 15','0 dan 10','10 dan 15','C'),
(8,1,8,'Orang yang tidak menjadikan Alquran sebagai pedoman hidupnya dan selalu berbuat kejahatan, termasuk orang yang ?','durhaka kepada Allah','durhaka kepada diri sendiri','menganiaya diri sendiri','merugikan diri sendiri','menyiksa diri sendiri','C'),
(8,2,8,'Perbuatan yang seimbang antara kebaikan dan kejahatan disebut ?','sabiqum bil khairat','zalimun linafsihi','khairunnasi','muqtasid','mujtahid','D'),
(8,3,8,' Allah akan memberikan balasan bagi orang yang mau memberi kelapangan tempat kepada orang  lain dengan ?','pahala yang setimpal ','melapangkan rezeki','melapangkan kuburnya','memberi kelapangan untuknya pada hari kiamat','melapangkan pekerjaannya','D'),
(8,4,8,'Fastabiqul khairat, artinya ?','berlomba dalam belajar','berlomba dalam disiplin','berlomba dalam kesehatan','berlomba dalam kebaikkan ','berlomba dalam kedudukan','D'),
(8,5,8,'Ilmu yang mempelajari bagaimana hukum membaca Alquran dengan baik dan benar adalah ?','ilmu tauhid','ilmu nahwu','ilmu fiqih','ilmu tajwid','ilmu saraf','D'),
(8,6,8,'Dalam membaca Alquran hendaknya diucapkan dengan fasih. Fasih artinya  ?','suci dari hadas','lagunya bagus','benar dan lancar','tajwidnya benar','suaranya merdu','D'),
(8,7,8,'Golongan manusia yang zalim kepada dirinya sendiri disebut  ?','zalimun linafsih','muqtasid','sabiqum bilkhairat','orang kafir','orang munafik','A'),
(8,8,8,'Surga ‘And diperuntukkan bagi orang yang  ?','berlapang-lapang dalam majelis','beriman dan mencari ilmu','beramal saleh','lebih dahulu berbuat kebaikan','suka melakukan kebaikan ','D'),
(8,9,8,'Orang yang berhasil berlomba dalam kebaikan, maka orang tersebut akan ?','puas dan bangga dengan keberhasilannya','dihargai di masyarakat','bahagia karena dihiasi dengan amal saleh','senang karena mendapat pujian dari orang lain','. tentram hatinya karena usahanya berhasil','C'),
(8,10,8,'orang yang selalu berkata jujur  dalam hidup nya akan selalu merasa ?','sukar','gelisah','sengsara','hina','tenang','E'),
(9,1,9,'Budaya politik yang berkembang di masyarakat Indonesia sekarang adalah ?','budaya politik kaulat','budaya politik pasif','budaya politik kolonila','budaya politik parokial','budaya politik partisipan','E'),
(9,2,9,' Pengertian politik meliputi politik sebagai ethiek dan politik sebagai technic. Pengertian tersebut menurut pendapat ?','Roger H. Soltou','Kranenburg','John Locke','Logeman','Hans Kelsen','E'),
(9,3,9,'Politik berkenaan dengan cara (teknik) manusia atau individu untuk mencapai tujuan, berarti  politik dalam arti ?','ethiek','technic','etis','etika','politis','B'),
(9,4,9,'Budaya politik di mana tingkat partisipasi politiknya rendah, merupakan jenis budaya politik ?','partisipan','parokial','kaulah','pasif','kolonial','B'),
(9,5,9,'Faktor yang mendorong lahirnya budaya politik adalah ?','pendidikan politik','kehidupan demokrasi masyarakat','tingkat ekonomi masyarakat','sosial budaya masyarakat','kesadaran masyarakat tentang hukum','A'),
(9,6,9,'Apabila ada sekelompok buruh mengadakan unjuk rasa menolak adanya revisi UU Ketenagakerjaan, berarti politik masyarakat adalah ?','mendukung kebijakan pemerintah','tidak setuju kebijakan pemerintah','senang kebijakan pemerintah','setuju tindakan pemerintah',' memihak pemerintah','B'),
(9,7,9,'Kualitas demokrasi suatu negara akan lebih baik apabila ?',' tingkat ekonomi lebih baik',' partisipasi politk masyarakat tinggi',' kreativitas','masyarakat bebas menggali potensi','masyarakat hidup dengan sejahtera','B'),
(9,8,9,'Di bawah ini yang bukan merupakan partisipasi dalam kegiatan politik adalah ?','menghadiri rapat umum','menyampaikan aspirasi melalui media massa','membantu korban bencana alam','berdiskusi dengan keluarga','memberikan suara dalam pemilu','C'),
(9,9,9,'pemerintah dalam melaksanakan peraturan perundangan adalah pengertian  ?','partisipasi politik','opini politik','perilaku politik','budaya politik','sikap politik','E'),
(10,1,10,'Warna yang dihasilkan dari penggabungan warna merah dan kuning dengan perbandingan 50:50  adalah warna ?','hijau','unggu','orange','pink','putih','C'),
(10,2,10,'Proses gambar yang dibuat dengan pewarnaan manual atau dengan komputer dengan halus sehigga gambar pun terlihat seperti aslinya disebut gambar ?',' Rendering','Tembus','Potongan','dekorasi','arsitek','A'),
(10,3,10,'Batik yang motifnya dibuat dengan hanya menggunakan tangan  ?','batik tulis','batik cup','batik pekalongan','batik ikat','bati malaysia','A'),
(10,4,10,'Yang termasuk karya seni rupa murni adalah ?','cangkir','rumah','kursi','baju','patung','E'),
(10,5,10,'Seni rupa yang memiliki panjang dan lebar disebut ?','Seni rupa 2 dimensi','Seni rupa 3 dimensi','Seni rupa murni','Seni rupa terapan','a dan b benar','A'),
(10,6,10,'Seni rupa yang memiliki panjang,lebar, dan tinggi disebut ?','Seni rupa 2 dimensi','Seni rupa 3 dimensi','Seni rupa murni','Seni rupa terapan','semua salah','B'),
(10,7,10,'Berikut ini adalah unsur dasar seni rupa kecuali ?',' Titik','lukisan','garis','bidang','ruang','B'),
(10,8,10,'Contoh karya seni visual dua dimensi yang bergerak, yaitu ?','relief','patung','film','poto ','kursi','C'),
(10,9,10,'Unsur fisik seni rupa yang merupakan gabungan titik-titik yang bersambung, yaitu ?','warna','garis','volume','titik','ruang','B'),
(10,10,10,'Salah satu jenis karya seni rupa terapan adalah seni kriya yang disebut juga ?','desain','seni grafis','kerajinan tangan','arsitektur','keterampiln','C')


insert into DetailSoal(idDetailSoal, idNoSoal, idMapel, pertanyaan, jawabanA, jawabanB, jawabanC, jawabanD, jawabanE, jawabanBenar)
values (16,2,3,'Salah satu jenis karya seni rupa terapan adalah seni kriya yang disebut juga ?','desain','seni grafis','kerajinan tangan','arsitektur','keterampiln','C'),
(16,3,3,'Salah satu jenis karya seni rupa terapan adalah seni kriya yang disebut juga ?','desain','seni grafis','kerajinan tangan','arsitektur','keterampiln','C')

use onlineExam

sp_help HeaderSoal
sp_help detailsoal

select * from HeaderSoal

select * from guru
select * from mapel
select * from DetailSoal

insert into HeaderSoal(idMapel, idGuru, idDetailSoal, idNoSoal, )

insert into HeaderSoal(idMapel, idGuru, idDetailSoal, TglDibuat, jmlSoal, idKelas)
values (1, 'TC20120008', 1, '20180301', 10, 1)

insert into HeaderSoal(idMapel, idGuru, idDetailSoal, TglDibuat, jmlSoal, idKelas)
values (7, 'TC20170023', 22, '20180313', 3, 2)   
15	Pemrograman Dasar	XI	Ecky Pradita	13/03/2018 00:00:00	3
insert into HeaderSoal(idMapel, idGuru, idDetailSoal, TglDibuat, jmlSoal, idKelas)
values (3, 'TC20170026', 3, '20180311', 10, 3),
(4, 'TC20080002', 4, '20170415', 10, 1),
(5, 'TC20120002', 5, '20180201', 10, 2),
(6, 'TC20170025', 6, '20180121', 10, 3),
(7, 'TC20170023', 7, '20170508', 10, 1),
(8, 'TC20110003', 8, '20180303', 10, 2),
(9, 'TC20170027', 9, '20170717', 9, 3),
(10, 'TC20110004', 10, '20160311', 10, 2)

delete from HeaderSoal where idSoal = 23
alter table HeaderSoal add foreign key (idKelas) references Kelas(idKelas)
select * from headerSoal

DBCC CHECKIDENT ('HeaderSoal', RESEED, 21)

select * from DetailSoal

select * from HeaderSoal

sp_help headerSoal
drop table Pengguna

use onlineExam

select * from HeaderSoal
select * from Siswa

sp_help ujian 

insert into Ujian(idSoal, idSiswa, tglPengerjaan, nilai)
values (2, '20166809', '20180311', 100) ----------------------------------------------

insert into Pengguna
values ('20166809', 'akhdan123', 'Siswa'),
('TC20170023','ecky123', 'Guru'),
('admin', 'admin', 'Admin')

insert into Kelas(namaKelas)
values ('X'), ('XI'), ('XII')

insert into Mapel(namaMapel, Kkm)
values ('Bahasa Indonesia', 76),
('Bahasa Inggris', 76),
('Matematika', 76),
('Fisika', 76),
('Kimia', 76),
('Sejarah', 76),
('Pemrograman Dasar', 76),
('Agama', 76),
('PPKN', 76),
('Seni Budaya', 76)
use onlineExam
insert into detailKelas(noKelas)
values (1),(2),(3),(4),(5),(6),(7),(8),(9),(10),(11),(12)

select * from siswa

-->>> ALTER TABLES <<<--
sp_help Ujian
alter table Siswa add idDetailKelas int
use onlineExam
alter table Siswa drop column detailKelas

alter table Siswa add foreign key (idDetailKelas) references DetailKelas(idDetailKelas)

alter table Guru drop column idMapel, idKelas

sp_help siswa

alter table detailSoal add idMapel int
alter table detailSoal drop column tglDetailSoal
alter table detailSoal add foreign key (idMapel) references Mapel(idMapel)
alter table detailsoal add foreign key (idMapel) references Mapel(idMapel)
alter table headersoal add foreign key (idDetailSoal, idNoSoal) references detailsoal(idDetailSoal, idNoSoal)

sp_help detailsoal 
select * from Guru
alter table headersoal add idNoSoal int
alter table detailsoal add idPrimary int identity(1,1) primary key

select * from DetailSoal

DBCC CHECKIDENT ('HeaderSoal', RESEED, 0)

drop table DetailSoal

sp_help headersoal

alter table headersoal add jmlSoal int
alter table headersoal add foreign key (idDetailSoal) references DetailSoal(idDetailSoal)

alter table detailsoal alter column pertanyaan varchar(max);

use onlineExam


-->>> PROGRESS DATA DUMMY <<<--

--> AKUN SISWA (CLEAR)
--> AKUN GURU (CLEAR)
--> AKSES KELAS (CLEAR)
--> AKSES MAPEL (CLEAR)
--> DETAIL KELAS (CLEAR)
--> GURU (CLEAR)
--> KELAS (CLEAR)
--> MAPEL (CLEAR)
--> SISWA (CLEAR)

-> 'HEADER SOAL (NO DATA)'
-> 'DETAIL SOAL (NO DATA)'
-> 'UJIAN (NO DATA)'

select 
	*
from
	Guru x join AksesMapel am
		on x.idGuru = am.idGuru
	join  Mapel m
		on am.idMapel = m.idMapel
		where x.idGuru = 'tc20170023'

		sp_help ujian

select
	x.pertanyaan, x.jawabanA, x.jawabanB, x.jawabanC, x.jawabanD, x.jawabanE, x.jawabanBenar, h.namaMapel, g.namaKelas, f.TglDibuat, x.idNoSoal
from
	DetailSoal x join HeaderSoal f
	on x.idDetailSoal = f.idDetailSoal
	join Mapel h
	on f.idMapel = h.idMapel
	join Kelas g
	on f.idKelas = g.idKelas
	where x.idDetailSoal = 11

	select * from detailsoal

create table testAja
(
testTulisan varchar(max)
)
sp_help testaja
drop table testAja