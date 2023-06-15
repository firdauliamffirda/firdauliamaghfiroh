# firdauliamaghfiroh
https://firdauliamffirda.shinyapps.io/NewsApp/

<div align="center">

<img width="150" alt="CNN Indonesia" src="https://github.com/firdauliamffirda/firdauliamaghfiroh/blob/main/Logo_of_CNN_Indonesia.svg.png">

# Today's News

• [Tentang Berita Terpopuler](#memo-tentang-data-base-my-skincare)
• [Screenshot](#camera_flash-screenshot)
• [Demo](#video_camera-demo)
• [Dokumentasi](#blue_book-dokumentasi)

</div>

## :bookmark_tabs: Main Menu

- [Tentang Data Base My Skincare](#memo-tentang-data-base-my-skincare)
- [Screenshot](#camera_flash-screenshot)
- [Demo](#video_camera-demo)
- [Dokumentasi](#blue_book-dokumentasi)
- [Requirements](#video_camera-requirements)
- [Skema Database](#computer-skema-database)
- [Entity Relationship Diagram](#memo-entity-relationship-diagram)
- [Deskripsi Data](#pencil-deskripsi-data)
- [Struktur Folder](#open_file_folder-struktur-folder)
- [Anggota Tim Pengembang](#fireworks-anggota-tim-pengembang)


## :memo: Tentang DataBase MySkincare  
Deskripsi Database MySkincare

<div align="justify">
Data yang digunakan pada project ini adalah data skincare. Data tersebut diperoleh dari hasil scrapping dan google dengan link: <https://github.com/agorina91/final_project/blob/master/Dash_App_and_Models/skindataall.csv.>. Dalam database skincare yang dikembangkan, terdapat 6 tabel yang saling berelasi, yaitu customer, problem, produk, brand, kategori_produk, dan skin_type.
</div>

<div align="justify">

1. `Tabel customer.`
    Dalam data customer memiliki 6 kolom, diantaranya `id_cust`, `username`, `gender`, `age`, `id_skin_type`, dan `job`. Customer memiliki relationship terhadap data     problem dengan hubungan 1:N (satu ke banyak).
    kolom jenis kelamin akan dilakukan random generate number 0 dan 1 dengan keterangan 0 = laki-laki dan 1 = perempuan.
    kolom usia akan dilakukan random generate number dari 18-65 tahun.
    kolom pekerjaan akan dilakukan random generate number 0 dan 1 dengan keterangan 0 = karyawan dan 1 = lainnya.
    
2.  `Tabel Problem` memiliki 3 kolom yaitu `id_cust`, `skin_problem`, dan `alergi`.
    Dengan menggunakan data tersebut, akan dibuat riset berdasarkan permasalahan kulit untuk mengetahui kecocokan skincare seseorang berdasarkan ingredients.
    Satu id_cust memiliki permasalahan kulit yang berbeda-beda, namun dari beberapa orang pasti ada juga yang memiliki permasalahan kulit yang sama.\
    Kolom skin_problem berupa data kategorik\
    Kolom alergi berupa data kategorik\

3.  `Tabel Produk` memiliki 7 kolom, diantaranya `id_cust`, `id_brand` , `nama_produk`, `komposisi`, `id-kategori`, `harga` dan `rating`.\
    id_brand merupakan data kategori yang memiliki hubungan 1:1 dengan nama_brand yang dijelaskan pada kolom Brand. Namun, cust mungkin saja memakai brand yang sama     meskipun produk berbeda. Sehingga cust ke brand memiliki hubungan M:N(banyak ke banyak) dan brand ke nama_produk memiliki hubungan 1:N (satu ke banyak, karena       satu brand mempunyai banyak nama_produk).

    Kolom komposisi berupa data text.
    Kolom `id_kategori` berupada data integer yang akan dijelaskan dalam kolom Kategori_Produk.\
    Kolom `harga` berupa data integer dalam rupiah.\
    Kolom `rating` berupa data double precision rating skala 1-5.\

4.  `Tabel Kategori_Produk`, memiliki 2 kolom, diantaranya `id_kategori` dan `kategori`.\
    Kolom `id_kategori` berupa data integer\
    Kolom `kategorik` berupa data text yang menjelaskan keterangan dari id_kategori.

5.  `Tabel Skin_Type`, memiliki 2 kolom, diantaranya `id_skin_type` dan `skin_type`.\
    Kolom `id_skin_type` berupa data integer\
    Kolom `skin_type` berupa data text yang menjelaskan keterangan dari id_skin_type.

6.  `Tabel Brand` , memiliki 2 kolom, diantaranya `id_brand` dan `nama_brand`.\
    Kolom `id_brand` berupa data integer\
    Kolom `nama_brand` berupa data text yang menjelaskan keterangan dari id_brand
</div>

## :camera_flash: Screenshot
1️⃣ Screenshot RShiny apps

Menampilkan Screenshoot front end dari database yang tersedia.

<img width="750" alt="1" src="https://user-images.githubusercontent.com/39205545/228095320-0a552e74-4c24-4f2b-bed9-9010f8dda291.PNG">


2️⃣  Daftar Customer

Menampilkan informasi daftar customer dari MySkincare.
<img width="750" alt="2" src="https://user-images.githubusercontent.com/39205545/228095435-d7e0b7c1-2dcc-48d8-b6c8-5863fa3af6ae.PNG">


3️⃣ Daftar Skin Type

Menampilkan informasi daftar skin type dari MySkincare
<img width="750" alt="3" src="https://user-images.githubusercontent.com/39205545/228095477-ba0e1573-e492-4c6b-b160-41c60f572ddc.PNG">


4️⃣ Daftar Produk

Menampilkan informasi tentang produk-produk skincare
<img width="750" alt="produu" src="https://user-images.githubusercontent.com/39205545/228097439-2404ccf5-38c8-41d6-aa92-9062dfe8ea38.PNG">


5️⃣  Daftar Brand

Menampilkan informasi tentang brand dari produk skincare
<img width="750" alt="5" src="https://user-images.githubusercontent.com/39205545/228095557-a891c901-e8ab-45cd-a326-a00c235058ba.PNG">


6️⃣ Daftar Skin Problem

Menampilkan informasi tentang permasalahan kulit pengguna skincare
<img width="750" alt="6" src="https://user-images.githubusercontent.com/39205545/228095596-80989373-4c42-4ef8-9396-b98fd162cc3c.PNG">


7️⃣ Daftar Kategori
Menampilkan informasi ID kategori produk
<img width="750" alt="7" src="https://user-images.githubusercontent.com/39205545/228095631-b276eadf-cd2e-4f01-90af-86f0e3dcd756.PNG">


## :video_camera: Demo
| url                      | login          |
| ------------------------ | -------------- |
|[ https://rekaagustiaastari.shinyapps.io/MySkincare/](https://rekaagustiaastari.shinyapps.io/MySkincare/)| rekaagustiaa@gmail.com |



## :blue_book: Dokumentasi 

Mencari Skin Problem

sebagai contoh jika kita mencari skin problem maka akan muncul id_cust, skin_problem dan alergi.


## :video_camera: Requirements

- Paket R yang digunakan:

library(shiny)

library(shinydashboard)

library(DT)

library(RPostgreSQL)

library(DBI)


- RDBMS yang digunakan adalah PostgreSQL 15
- Front End menggunakan RShiny UI
- Back End menggunakan RShiny Server

## :computer: Skema Database
<img width="500" alt="skema database skincare drawio (1) (2)" src="https://user-images.githubusercontent.com/39205545/228095841-eab32014-05ff-438d-b374-934015c08c7a.png">


## :memo: Entity Relationship Diagram
<img width="500" alt="ERD MySkincare" src="https://user-images.githubusercontent.com/39205545/226894568-fd317459-a355-4799-8e48-7c3aae46d83c.png">

## :pencil: Deskripsi Data
### Sintax Rancangan Database
Berikut adalah deskripsi dan query SQL untuk membuat tabel:

1️⃣ Tabel Customer
<div align="justify">
Tabel ini menyimpan isi kolom `id cust`, `username`, `gender`, `age`,  `id_skin_type` dan `job`
</div>

| Attribute     | Type                  | Description                     |
|:--------------|:----------------------|:--------------------------------|
| id cust       | Integer varying(10)   | Id Customer                     |
| username      | text varying(20)      | Nama Pengguna                   |
| gender        | integer               | Jenis Kelamin	                  |
| age           | Integer               | Umur Customer                   |
| id_skin_type  | Integer               | Id Jenis Kulit                  |
| job           | integer               | Pekerjaan Customer              |

| Primary Key         |
|:--------------------|
| id_cust,id_skin_type|


``` sql
CREATE TABLE IF NOT EXISTS public."Cust"
(
    id_cust integer NOT NULL,
    username text COLLATE pg_catalog."default" NOT NULL,
    gender integer NOT NULL,
    age integer NOT NULL,
    job integer NOT NULL,
    id_skin_type integer NOT NULL,
    CONSTRAINT "Cust_pkey" PRIMARY KEY (id_cust, id_skin_type),
    CONSTRAINT "Cust_Ke_Problem" FOREIGN KEY (id_cust)
        REFERENCES public."Problem" (id_cust) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
        NOT VALID,
    CONSTRAINT "Cust_Ke_SkinType" FOREIGN KEY (id_skin_type)
        REFERENCES public."Skin_Type" (id_skin_type) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
        NOT VALID
);
```

2️⃣  Tabel Problem

<div align="justify">
Tabel ini menyimpan data id customer, permasalahan kulit dan apakah customer itu memiliki alergi atau tidak.
</div>


| Attribute     | Type                  | Description                     |
|:--------------|:----------------------|:--------------------------------|
| id_cust       | integer varying(10)   | Id Customer                     |
| skin_problem  | text                  | Permasalahan Kulit              |
| alergi        | text                  | Alergi Kulit                          |

| Primary Key    | 
|:---------------|
| id_cust        | 

    ``` sql
    CREATE TABLE IF NOT EXISTS public."Problem"
    (
        id_cust integer NOT NULL,
        skin_problem text COLLATE pg_catalog."default" NOT NULL,
        alergi text COLLATE pg_catalog."default" NOT NULL,
        CONSTRAINT "Problem_pkey" PRIMARY KEY (id_cust)
    );
    ```
3️⃣ Tabel Produk
<div align="justify">
 Tabel ini memiliki isi kolom id customer,id brand,nama produk, komposisi,id kategori, harga dan rating.
</div>


| Attribute     | Type                  | Description                     |
|:--------------|:----------------------|:--------------------------------|
| id_cust       | integer varying(10)   | Id Customer        	      	  |
| id_brand      | integer               | Id Brand        	     	  |
| nama_produk   | text                  | Nama Produk 			  |
| komposisi     | text                  | Komposisi produk                |
| id_kategori   | integer               | Id Kategori    	          |
| harga         | integer		| Harga Produk   		  |
| rating        | double precision      | Rating Produk	                  |

| Primary Key        | Foreign Key   | 
|:-------------------|:--------------|
| Kode Program Studi | Kode Fakultas |

``` sql
CREATE TABLE IF NOT EXISTS public."Produk"
(
       id_cust integer NOT NULL,
       id_brand integer NOT NULL,
       nama_produk text COLLATE pg_catalog."default" NOT NULL,
       komposisi text COLLATE pg_catalog."default" NOT NULL,
       id_kategori integer NOT NULL,
       rating double precision NOT NULL,
       harga integer NOT NULL,
            CONSTRAINT "Produk_pkey" PRIMARY KEY (id_kategori, id_brand, id_cust),
            CONSTRAINT "Produk_ke_Brand_fkey" FOREIGN KEY (id_brand)
                REFERENCES public."Brand" (id_brand) MATCH SIMPLE
                ON UPDATE NO ACTION
                ON DELETE NO ACTION
                NOT VALID,
            CONSTRAINT "Produk_ke_Kategori" FOREIGN KEY (id_kategori)
                REFERENCES public."Kategori_Produk" (id_kategori) MATCH SIMPLE
                ON UPDATE NO ACTION
                ON DELETE NO ACTION
                NOT VALID,
            CONSTRAINT "Produk_ke_Problem" FOREIGN KEY (id_cust)
                REFERENCES public."Problem" (id_cust) MATCH SIMPLE
                ON UPDATE NO ACTION
                ON DELETE NO ACTION
                NOT VALID
 );
 ```

4️⃣ Tabel Skin Type
<div align="justify">
   Tabel Skin_Typel ini memiliki isi kolom sebagai berikut:
    `id_skin_type` : berupa data integer dan PRIMARY KEY karena memiliki relasi dengan tabel cust\
    `skin_type` : berupa data text yang menjelaskan keterangan dari id_skin_type.
</div>


| Attribute     | Type                  | Description                     |
|:--------------|:----------------------|:--------------------------------|
| id_skin_type  | integer 		| Id Jenis Kulit               	  |
| skin_type     | text			| Jenis Kulit Customer            |


 ``` sql
 CREATE TABLE IF NOT EXISTS public."Skin_Type"
 (
        id_skin_type integer NOT NULL,
        skin_type text COLLATE pg_catalog."default",
        CONSTRAINT "Skin_Type_pkey" PRIMARY KEY (id_skin_type)
  );
  ```

5️⃣  Tabel Brand

<div align="justify">
 Tabel ini memiliki isi kolom id brand dan nama brand
</div>


| Attribute     | Type                  | Description                     |
|:--------------|:----------------------|:--------------------------------|
| id_brand      | integer		| Id Brand              	  |
| nama_brand    | text                  | Nama Brand produk               |


``` sql
CREATE TABLE IF NOT EXISTS public."Brand"
(
        nama_brand text COLLATE pg_catalog."default" NOT NULL,
        id_brand integer NOT NULL,
        CONSTRAINT "Brand_pkey" PRIMARY KEY (id_brand)
 );
 ```
6️⃣  Tabel Kategorik Produk

<div align="justify">
 Tabel ini memiliki isi kolom id kategori dan kategori
</div>


| Attribute     | Type                  | Description                     |
|:--------------|:----------------------|:--------------------------------|
| id_kategori   | integer		| Id Kategori              	  |
| kategori      | text                  | Kategori              	  |

 ``` sql
 CREATE TABLE IF NOT EXISTS public."Kategori_Produk"
 (
        id_kategori integer NOT NULL,
        kategori text COLLATE pg_catalog."default" NOT NULL,
        CONSTRAINT "Kategori_Produk_pkey" PRIMARY KEY (id_kategori)
  );
  ```
 
    
### :open_file_folder: Struktur Folder

```
.
├── app           # ShinyApps
│   ├── css
│   │   ├── **/*.css
│   ├── server.R
│   └── ui.R
├── data 
│   ├── xlsx
│   └── sql
|       └── db.sql
├── src           # Project source code
├── doc           # Doc for the project
├── .gitignore
├── LICENSE
└── README.md
```

## :fireworks: Anggota Tim Pengembang
1. Fradha Intan Arassah   (G1501221018) : Data Manager
2. Reka Agustia Astari    (G1501221010) : Shiny Developer
3. Firda Aulia Maghfiroh  (G1501222049) : Technical Writer)
4. Ainun Salsabila        (G1501222038) 

