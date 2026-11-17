create table produk (
    id serial primary key,
    nama varchar(50) not null,
    harga INT check (harga > 0),
    stok INT DEFAULT 0 check (stok >= 0),
    kategori_id INT,

    constraint fk_kategori_produk
        foreign key (kategori_id)
        references kategori(id)
)
