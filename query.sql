CREATE TABLE IF NOT EXISTS motor
(
    id                  INT PRIMARY KEY AUTO_INCREMENT,
    merk                VARCHAR(100) NOT NULL,
    model               VARCHAR(100) NOT NULL,
    tahun_pembuatan     YEAR         not null,
    warna               varchar(50)  not null,
    harga               decimal(15, 2),
    status_ketersediaan enum ('available', 'sold', 'pre_order'),
    deskripsi           text
);

INSERT INTO motor(merk, model, tahun_pembuatan, warna, harga, status_ketersediaan, deskripsi) VALUES
('Honda', 'CB150R', 2023, 'Merah', 2500.00, 'available', 'Motor sporty dan bertenaga dengan desain yang ramping.'),
('Yamaha', 'Nmax', 2022, 'Biru', 3000.00, 'pre_order', 'Nyaman dan efisien untuk perjalanan sehari-hari.'),
('Suzuki', 'Satria FU', 2021, 'Hitam', 2000.00, 'sold', 'Motor kompak dan lincah, sempurna untuk berkendara di kota.'),
('Yamaha', 'XSR155', 2023, 'Hitam', 4500.00, 'pre_order', 'Motor tema klasik'),
('Yamaha', 'Aerox160', 2022, 'Putih', 8000.00, 'sold', 'Motor keren yang bisa menarik lawan jenis'),
('Honda', 'CBR150r', 2022, 'Hitam Merah', 5000.00, 'available', 'Motor sport yang kencang'),
('Honda', 'Monkey', 2024, 'Merah', 7000.00, 'available', ''),
('Honda', 'PCX', 2023, 'Putih', 9000.00, 'sold', ''),
('Honda', 'Adv', 2022, 'Merah', 3500.00, 'pre_order', ''),
('Honda', 'Forza', 2024, 'Gold', 4000.00, 'sold', '');

SELECT merk,model,warna,harga FROM motoshop.motor;

UPDATE motor
SET harga = 2100.00, status_ketersediaan = 'available'
WHERE id = 3;

DELETE FROM motor
WHERE id = 3;

DROP TABLE IF EXISTS motor;
