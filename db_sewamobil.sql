CREATE DATABASE db_sewamobil;

CREATE TABLE tb_pelanggan (
  id_pelanggan INT PRIMARY KEY AUTO_INCREMENT,
  nama_pelanggan VARCHAR(255) NOT NULL,
  nomor_telepon VARCHAR(15) NOT NULL,
  alamat VARCHAR(255) NOT NULL
);

CREATE TABLE tb_reservasi (
  id_reservasi INT PRIMARY KEY AUTO_INCREMENT,
  tanggal_reservasi DATE NOT NULL,
  waktu_reservasi TIME NOT NULL,
  id_pelanggan INT NOT NULL,
  id_kendaraan INT NOT NULL,
  FOREIGN KEY (id_pelanggan) REFERENCES tb_pelanggan(id_pelanggan),
  FOREIGN KEY (id_kendaraan) REFERENCES tb_kendaraan(id_kendaraan)
);

CREATE TABLE tb_kendaraan (
  id_kendaraan INT PRIMARY KEY AUTO_INCREMENT,
  jenis_kendaraan VARCHAR(255) NOT NULL,
  merek_kendaraan VARCHAR(255) NOT NULL,
  nomor_plat VARCHAR(15) NOT NULL
);

INSERT INTO tb_pelanggan (nama_pelanggan, nomor_telepon, alamat) VALUES
  ('Budi Santoso', '08123456789', 'Jl. Merdeka No.1'),
  ('Ani Lestari', '08567890123', 'Jl. Sudirman No.2'),
  ('Cici Amelia', '08234567890', 'Jl. Diponegoro No.3');

INSERT INTO tb_kendaraan (jenis_kendaraan, merek_kendaraan, nomor_plat) VALUES
  ('Mobil', 'Toyota Avanza', 'B 1234 ABC'),
  ('Motor', 'Honda Beat', 'B 2345 DEF'),
  ('Mobil', 'Mitsubishi Pajero', 'B 3456 GHI');

INSERT INTO tb_reservasi (tanggal_reservasi, waktu_reservasi, id_pelanggan, id_kendaraan) VALUES
  ('2024-03-18', '10:00:00', 1, 1),
  ('2024-03-19', '12:00:00', 2, 2),
  ('2024-03-20', '14:00:00', 3, 3);

