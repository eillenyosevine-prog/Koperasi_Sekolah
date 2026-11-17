create table penjualan (
    id serial primary key,
    produk_id INT,

    constraint fk_produk_penjualan
        foreign key (produk_id)
        references produk(id),

    kelas varchar(5),
    jumlah INT not null check (jumlah > 0),
    tanggal DATE
)
