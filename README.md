☕ SiKongkow v1.0

Sistem Manajemen Kasir & Operasional Kafe Terintegrasi

<p align="center">
<img src="https://img.shields.io/badge/Java-ED8B00?style=for-the-badge&logo=openjdk&logoColor=white" />
<img src="https://www.google.com/search?q=https://img.shields.io/badge/NetBeans-1B6AC6%3Fstyle%3Dfor-the-badge%26logo%3Dapache-netbeans-ide%26logoColor%3Dwhite" />
<img src="https://img.shields.io/badge/MySQL-4479A1?style=for-the-badge&logo=mysql&logoColor=white" />
<img src="https://www.google.com/search?q=https://img.shields.io/badge/JDBC-Success-success%3Fstyle%3Dfor-the-badge" />
</p>

Aplikasi desktop berbasis Java Swing untuk efisiensi operasional "Waroeng Kongkow". Solusi all-in-one yang mencakup Point of Sales (POS), manajemen stok otomatis berbasis resep, absensi karyawan, dan sistem loyalitas pelanggan.

📖 Tentang Aplikasi

SiKongkow dikembangkan sebagai solusi digital untuk menggantikan pencatatan manual yang rawan kesalahan. Aplikasi ini tidak hanya mencatat transaksi, tetapi juga memiliki logika bisnis cerdas yang menghubungkan penjualan dengan pengurangan stok gudang secara real-time (Resep Menu).

Dibangun dengan prinsip Pemrograman Berorientasi Objek (PBO/OOP) yang kuat, menjadikan kode lebih terstruktur, aman, dan mudah dikembangkan.

✨ Fitur Unggulan

🛒 1. Point of Sales (Kasir Pintar)

Katalog Menu Visual: Tampilan Grid 2 Kolom yang responsif, menampilkan gambar produk dan harga dengan rapi.

Keranjang Belanja Dinamis: Fitur tambah, kurang, dan hapus item pesanan secara instan tanpa reload.

Pencarian Cepat (Live Search): Cari menu berdasarkan nama atau filter berdasarkan kategori (Makanan Berat, Snack, Bakaran, Minuman).

Kalkulasi Otomatis: Menghitung Subtotal, Diskon Member, dan Total Bayar secara presisi.

📦 2. Smart Inventory (Manajemen Stok Resep)

Potong Stok Otomatis: Fitur andalan! Setiap menu yang terjual akan otomatis mengurangi stok bahan baku di gudang sesuai takaran resep.

Logika: Jika terjual 1 porsi "Nasi Goreng", sistem otomatis mengurangi: Nasi (200gr), Telur (1 btr), dan Minyak (20ml) dari database bahan_baku.

👥 3. Sistem Member & Loyalitas (Polimorfisme)

Cek Member: Identifikasi pelanggan melalui Nomor HP.

Diskon Bertingkat: Sistem otomatis mendeteksi status member berdasarkan jumlah kunjungan (visit_count):

🆕 New Member: Diskon 0% (0-5 Kunjungan)

🎖️ Loyal Member: Diskon 10% (> 5 Kunjungan)

👑 VIP Member: Diskon 15% (> 10 Kunjungan)

📅 4. Absensi Karyawan

Validasi Cerdas: Input ID Karyawan -> Nama muncul otomatis.

Cegah Duplikasi: Mencegah karyawan absen dua kali pada hari yang sama.

Riwayat: Menampilkan log kehadiran karyawan secara lengkap.

🧠 Penerapan Konsep PBO (OOP)

Proyek ini dirancang untuk memenuhi standar Tugas Besar PBO dengan menerapkan 4 pilar utama:

Konsep OOP

Implementasi pada SiKongkow

Encapsulation

Semua atribut pada kelas model (seperti CartItem, User) bersifat private dan hanya dapat diakses melalui method Getter dan Setter untuk melindungi integritas data.

Inheritance

Penggunaan pewarisan pada pembuatan GUI, di mana setiap Form (TransaksiPenjualan, AbsensiPanel) mewarisi sifat dari kelas induk javax.swing.JFrame atau javax.swing.JPanel.

Polymorphism

Diterapkan pada logika perhitungan diskon. Method hitungDiskon() memiliki perilaku berbeda tergantung apakah objeknya adalah PembeliMember atau PembeliUmum.

Abstraction

Penggunaan Abstract Class untuk mendefinisikan kerangka dasar entitas pembeli, menyembunyikan kompleksitas implementasi detail dari pengguna kelas.

🛠️ Teknologi yang Digunakan

Bahasa Pemrograman: Java (JDK 8 / 17+)

Framework GUI: Java Swing (JFrame, JPanel, Layout Managers)

Database: MySQL 8.0+

IDE: Apache NetBeans

Konektivitas: MySQL Connector/J (JDBC Driver)

🗄️ Skema Database

Database kongkow_db dirancang dengan relasi yang kuat (Foreign Key) untuk menjaga konsistensi data:

users: Data akun login karyawan & pemilik.

menu: Daftar produk yang dijual.

bahan_baku: Gudang stok mentah.

resep_menu: Junction Table (Many-to-Many) yang menghubungkan Menu ke Bahan Baku.

pelanggan: Data member dan riwayat kunjungan.

pesanan: Header transaksi (Total, Waktu, Diskon).

detail_pesanan: Rincian item per transaksi.

absensi: Log waktu kehadiran karyawan.

🚀 Cara Instalasi & Menjalankan

Ikuti langkah ini untuk mencoba aplikasi di komputer lokal Anda:

1. Persiapan Database

Pastikan XAMPP atau Laragon aktif (MySQL Server berjalan).

Buka aplikasi phpMyAdmin atau HeidiSQL.

Buat database baru dengan nama: kongkow_db.

Import file SQL yang terdapat di folder database/ secara berurutan:

1_master_data.sql (Struktur tabel & data dasar menu/bahan).

2_data_resep.sql (Relasi resep menu).

2. Konfigurasi Proyek

Buka Apache NetBeans.

Pilih menu File > Open Project dan arahkan ke folder SiKongkow.

Pastikan Library MySQL JDBC Driver sudah terpasang di folder Libraries proyek.

Jika menggunakan password database custom, sesuaikan file src/fitur/DbConnection.java.

3. Jalankan Aplikasi

Klik kanan pada file fitur.LoginPanel.java.

Pilih Run File.

Akun Demo:

Username: admin

Password: admin (atau sesuai data di tabel users)

📸 Tangkapan Layar

<details>
<summary><b>Klik untuk melihat Screenshot Aplikasi</b></summary>

Halaman Login

Dashboard Utama





Transaksi Penjualan

Menu Absensi





</details>

👥 Tim Pengembang

[NAMA ANDA]

NIM: [NIM ANDA]

Peran: Full Stack Java Developer & Database Designer

Kampus: [NAMA UNIVERSITAS ANDA]

<p align="center">
<b>Dibuat untuk memenuhi Tugas Besar Mata Kuliah Pemrograman Berorientasi Objek.</b>




Copyright © 2025 SiKongkow Project. All rights reserved.
</p>
