Penjelasan kode SQL yang telah disediakan secara detail:

-- Create database
CREATE DATABASE IF NOT EXISTS db_sewamobil;

Perintah ini membuat database dengan nama db_sewamobil jika belum ada.

-- Use database
USE db_sewamobil;

Perintah ini mengatur penggunaan database yang baru dibuat, yaitu db_sewamobil.

-- Create table tb_pelanggan
CREATE TABLE IF NOT EXISTS tb_pelanggan (
    id_pelanggan INT PRIMARY KEY AUTO_INCREMENT,
    nama_pelanggan VARCHAR(50) NOT NULL,
    alamat_pelanggan VARCHAR(100) NOT NULL,
    no_telp_pelanggan VARCHAR(15) NOT NULL
);

Perintah ini membuat tabel tb_pelanggan dengan kolom id_pelanggan sebagai primary key yang otomatis bertambah nilainya (AUTO_INCREMENT), 
kolom nama_pelanggan untuk menyimpan nama pelanggan, kolom alamat_pelanggan untuk menyimpan alamat pelanggan, dan kolom no_telp_pelanggan 
untuk menyimpan nomor telepon pelanggan.

-- Create table tb_reservasi
CREATE TABLE IF NOT EXISTS tb_reservasi (
    id_reservasi INT PRIMARY KEY AUTO_INCREMENT,
    id_pelanggan INT,
    id_kendaraan INT,
    tanggal_reservasi DATE,
    FOREIGN KEY (id_pelanggan) REFERENCES tb_pelanggan(id_pelanggan),
    FOREIGN KEY (id_kendaraan) REFERENCES tb_kendaraan(id_kendaraan)
);

Perintah ini membuat tabel tb_reservasi dengan kolom id_reservasi sebagai primary key yang otomatis bertambah nilainya (AUTO_INCREMENT), 
kolom id_pelanggan untuk menyimpan ID pelanggan yang melakukan reservasi, kolom id_kendaraan untuk menyimpan ID kendaraan yang disewa, 
kolom tanggal_reservasi untuk menyimpan tanggal reservasi, serta menambahkan foreign key constraint untuk menghubungkan kolom id_pelanggan 
dengan tabel tb_pelanggan dan kolom id_kendaraan dengan tabel tb_kendaraan.

-- Create table tb_kendaraan
CREATE TABLE IF NOT EXISTS tb_kendaraan (
    id_kendaraan INT PRIMARY KEY AUTO_INCREMENT,
    nama_kendaraan VARCHAR(50) NOT NULL,
    jenis_kendaraan VARCHAR(50) NOT NULL,
    harga_sewa DECIMAL(10,2) NOT NULL
);

Perintah ini membuat tabel tb_kendaraan dengan kolom id_kendaraan sebagai primary key yang otomatis bertambah nilainya (AUTO_INCREMENT), 
kolom nama_kendaraan untuk menyimpan nama kendaraan, kolom jenis_kendaraan untuk menyimpan jenis kendaraan, dan kolom harga_sewa untuk 
menyimpan harga sewa kendaraan.

-- Insert data into tb_pelanggan
INSERT INTO tb_pelanggan (nama_pelanggan, alamat_pelanggan, no_telp_pelanggan) VALUES
('John Doe', 'Jl. Pahlawan No. 123', '08123456789'),
('Jane Smith', 'Jl. Merdeka No. 456', '08567890123');

Perintah ini memasukkan data ke dalam tabel tb_pelanggan dengan menyertakan nilai untuk kolom nama_pelanggan, alamat_pelanggan, dan no_telp_pelanggan.

-- Insert data into tb_kendaraan
INSERT INTO tb_kendaraan (nama_kendaraan, jenis_kendaraan, harga_sewa) VALUES
('Toyota Avanza', 'MPV', 300000),
('Honda Jazz', 'Hatchback', 250000),
('Mitsubishi Xpander', 'SUV', 350000);

Perintah ini memasukkan data ke dalam tabel tb_kendaraan dengan menyertakan nilai untuk kolom nama_kendaraan, jenis_kendaraan, dan harga_sewa.

-- Insert data into tb_reservasi
INSERT INTO tb_reservasi (id_pelanggan, id_kendaraan, tanggal_reservasi) VALUES
(1, 1, '2024-04-15'),
(2, 2, '2024-05-20');

Perintah ini memasukkan data ke dalam tabel tb_reservasi dengan menyertakan nilai untuk kolom id_pelanggan, id_kendaraan, dan tanggal_reservasi.

Semua perintah SQL di atas berguna untuk membuat database, tabel, dan memasukkan data yang diperlukan untuk sistem sewa mobil.
