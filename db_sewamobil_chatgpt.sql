-- Create database
CREATE DATABASE IF NOT EXISTS db_sewamobil;

-- Use database
USE db_sewamobil;

-- Create table tb_pelanggan
CREATE TABLE IF NOT EXISTS tb_pelanggan (
    id_pelanggan INT PRIMARY KEY AUTO_INCREMENT,
    nama_pelanggan VARCHAR(50) NOT NULL,
    alamat_pelanggan VARCHAR(100) NOT NULL,
    no_telp_pelanggan VARCHAR(15) NOT NULL
);

-- Create table tb_reservasi
CREATE TABLE IF NOT EXISTS tb_reservasi (
    id_reservasi INT PRIMARY KEY AUTO_INCREMENT,
    id_pelanggan INT,
    id_kendaraan INT,
    tanggal_reservasi DATE,
    FOREIGN KEY (id_pelanggan) REFERENCES tb_pelanggan(id_pelanggan),
    FOREIGN KEY (id_kendaraan) REFERENCES tb_kendaraan(id_kendaraan)
);

-- Create table tb_kendaraan
CREATE TABLE IF NOT EXISTS tb_kendaraan (
    id_kendaraan INT PRIMARY KEY AUTO_INCREMENT,
    nama_kendaraan VARCHAR(50) NOT NULL,
    jenis_kendaraan VARCHAR(50) NOT NULL,
    harga_sewa DECIMAL(10,2) NOT NULL
);

-- Insert data into tb_pelanggan
INSERT INTO tb_pelanggan (nama_pelanggan, alamat_pelanggan, no_telp_pelanggan) VALUES
('John Doe', 'Jl. Pahlawan No. 123', '08123456789'),
('Jane Smith', 'Jl. Merdeka No. 456', '08567890123');

-- Insert data into tb_kendaraan
INSERT INTO tb_kendaraan (nama_kendaraan, jenis_kendaraan, harga_sewa) VALUES
('Toyota Avanza', 'MPV', 300000),
('Honda Jazz', 'Hatchback', 250000),
('Mitsubishi Xpander', 'SUV', 350000);

-- Insert data into tb_reservasi
INSERT INTO tb_reservasi (id_pelanggan, id_kendaraan, tanggal_reservasi) VALUES
(1, 1, '2024-04-15'),
(2, 2, '2024-05-20');

