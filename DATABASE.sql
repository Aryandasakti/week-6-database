CREATE TABLE kategori (
  id INT PRIMARY KEY,
  nama VARCHAR(255) NOT NULL
);

CREATE TABLE barang (
	id INT PRIMARY KEY,
	nama VARCHAR (100) NOT NULL,
	harga INT NOT NULL,
	jumlah INT NOT NULL,
    kategori_id INT,
    FOREIGN KEY (kategori_id) REFERENCES kategori (id)
);

SELECT * FROM barang;
SELECT * FROM kategori;


INSERT INTO barang(id, nama, harga, jumlah) VALUES(2,'KOMIK','300000', '10');
INSERT INTO barang(id, nama, harga, jumlah) VALUES(3,'MANGA','200000', '5');

INSERT INTO kategori(id, nama) VALUES(2, 'TOKO PINTAR');
INSERT INTO kategori(id, nama) VALUES(3, 'TOKO PANDAI');

UPDATE barang
SET harga = 100000, jumlah = 30
WHERE id = 2

UPDATE kategori
SET nama = 'TOKO PANDAI'
WHERE id = 2

UPDATE barang
SET kategori_id = '3'
WHERE id = 2


SELECT * FROM barang JOIN kategori ON barang.kategori_id = kategori.id;


SELECT barang.nama, barang.harga, barang.jumlah, kategori.nama
FROM barang
JOIN kategori ON barang.kategori_id = kategori.id;

