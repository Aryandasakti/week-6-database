CREATE TABLE "kategori" (
  "id" integer(pk),
  "nama" VARCHAR(255),
  "created_at" TIMESTAMP DEFAULT 'now()',
  "updated_at" TIMESTAMP DEFAULT 'now()'
);

CREATE TABLE "barang" (
  "id" integer(pk),
  "harga" integer,
  "jumlah" integer,
  "kategori_id" integer,
  "created_at" TIMESTAMP DEFAULT 'now()',
  "updated_at" TIMESTAMP DEFAULT 'now()'
);

ALTER TABLE "barang" ADD FOREIGN KEY ("kategori_id") REFERENCES "kategori" ("id");
