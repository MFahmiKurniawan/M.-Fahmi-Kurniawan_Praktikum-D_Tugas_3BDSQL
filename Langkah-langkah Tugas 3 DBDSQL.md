# Langkah-Langkah Pengerjaan Tugas 3 DBDSQL

- Nama : M.Fahmi Kurniawan
- NIM  : 225150600111014
 

1.Membuat DataBase dengan nama Schema_Akademik

![Gambar sintaks membuat DataBase](Tugas3gmbr1.png)

2.Melakukan use DataBase yang akan digunakan untuk membuat table dan agar bisa melakukan insert value dalam table yang sudah dibuat untuk sintaks nya sama seperti gambar diatas.

3.Langkah selanjutnya saya membuat table - table dari gambar Desain ERD yang dikirim di Google Chat,didalam DataBase yang sudah di buat. Tabel yang pertama saya buat adalah table Fakultas, karena table tidak memiliki FK(Foreign Key), karena kita harus membuat table dari yang belum ada foreign key nya agar tidak eror ketika di run.

![Gambar sintaks membuat Table Fakultas](Tugas3gmbr2.png)

4.Langkah selanjuntya saya membuat table Jurusan, saya membuat table ini karena table jurusan memiliki FK dari table Fakultas yang sudah dibuat sebelumnya. sehingga ketika dirun table jurusan tidak eror.karena references table FKnya sudah dibuat.

![Gambar sintaks membuat Table Jurusan](Tugas3gmbr3.png)

5.Langkah ke 5 saya membuat table Strata, karena nantinya table Strata dan Jurusan akan Digunakan Untuk references table Program_Studi.

![Gambar sintaks membuat Table Strata](Tugas3gmbr4.png)

6.Membuat table Program_Studi Yang memiliki FK yang mereferences table Strata dan Jurusan.

![Gambar sintaks membuat Table Program Studi](Tugas3gmbr5.png)

7.Langkah ke7 saya membuat table Seleksi Masuk Karena Nantinya table yang akan dibuat dilangkah ke8 yaitu table Mahasiswa akan Mereferences table Seleksi_Masuk dan Progran_Studi.

![Gambar sintaks membuat Table Seleksi Masuk](Tugas3gmbr6.png)

8.Membuat table Mahasiswa Yang memiliki FK yang mereferences table Seleksi_Masuk dan Program_Studi.

![Gambar sintaks membuat Table Mahasiswa](Tugas3gmbr7.png)

9.Dilangkah ke9 ini saya memulai memasukan nilai/data pada kolom table-table yang sudah dibuat. sebelum saya memasukan nilai saya juga melakukan pengecekan table, apakah table yang saya buat sudah benar, lalu baru saya masukan nilainya/datanya, dan saya cek lagi apakah data atau nilai sudah terisi pada kolom yang sesuai. berikut sintaks pengecekan dan sintak menginputkan data pada table Fakultas,Jurusan,Dan Program_Studi.

![Gambar sintaks memasukan nilai ditable yang sudah dibuat](Tugas3gmbr8.png)

10.Dilangkah sepuluh ini saya melakukan ALTER Table Seleksi Masuk karena kolom Seleksi_Masuk yang awalnya Varchar(45), tidak cukup untuk dimasukan Nilai/Data yang disuruh untuk dimasukan. Oleh karena itu saya melakukan ALTER table untuk mengganti batas kolom Seleksi_Masuk menjadi Varchar(60) agar cukup, dan saya juga melakukan perintah pengecekan table apakah sudah berubah batas Varcharnya, setelah itu saya baru memasukan Nilai yang disuruh ke table sesuai dengan cara saya, saat memasukan nilai ditable-table sebelumnya.

![Gambar sintaks memasukan nilai dan perbaikan table Seleksi Masuk](Tugas3gmbr9.png)

11.Langkah Ke11 atau langkah terakhir ini, saya memasukan nilai untuk kolom-kolom table Mahasiswa, namun disini saya juga melakukan kesalahan, karena pada table saya melakukan pengecekan jenis kelamin menggunakan huruf P dan L, padahal data yang dimasukan adalah huruf P dan W, karena hal tersebut menyebabkan eror ketika saya memasukan nilai tersebut, jadi saya terpaksa meng Alter table Mahasiswa untuk menghapus sintaks pengecekan jenis kelamin, lalu saya melakukan Alter lagi untuk memasukan sintaks pengecekan Jenis Kelamin Di table mahasiswa dengan Huruf P dan W sesuai dengan data yang dimasukan. dan setelah itu baru saya masukan lagi nilainya sesuai dengan yang diperintahkan.

![Gambar sintaks memasukan nilai dan perbaikan table Mahasiswa](Tugas3gmbr10.png)