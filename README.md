# ☕ SiKongkow v1.0

**Sistem Manajemen Kasir & Operasional Kafe Terintegrasi**

<p align="center">
  <img src="https://img.shields.io/badge/Java-ED8B00?style=for-the-badge&logo=openjdk&logoColor=white" />
  <img src="https://img.shields.io/badge/NetBeans-1B6AC6?style=for-the-badge&logo=apache-netbeans-ide&logoColor=white" />
  <img src="https://img.shields.io/badge/MySQL-4479A1?style=for-the-badge&logo=mysql&logoColor=white" />
  <img src="https://img.shields.io/badge/JDBC-Success-success?style=for-the-badge" />
</p>

> **Aplikasi desktop berbasis Java Swing untuk efisiensi operasional "Waroeng Kongkow", mencakup Point of Sales (POS), manajemen stok otomatis, dan loyalitas pelanggan.**

---

## 📖 Tentang Aplikasi

**SiKongkow** dikembangkan untuk mengatasi masalah pencatatan manual pada operasional kafe. Aplikasi ini mengotomatisasi proses transaksi, perhitungan stok bahan baku berdasarkan resep menu, serta pencatatan absensi karyawan secara digital. Dibangun dengan konsep **Pemrograman Berorientasi Objek (PBO)** yang kuat untuk memastikan kode yang rapi dan mudah dikembangkan.

---

## ✨ Fitur Unggulan

### 🛒 Point of Sales (Kasir)
* **Katalog Menu Visual:** Tampilan *Grid 2 Kolom* yang responsif dengan gambar produk.
* **Keranjang Belanja:** Menambah, mengurangi, dan menghapus item pesanan secara *real-time*.
* **Pencarian Cepat:** Filter menu berdasarkan kategori (Makanan, Minuman, Snack) atau pencarian nama.
* **Kalkulasi Otomatis:** Menghitung Subtotal, Diskon, dan Total Bayar seketika.

### 📦 Smart Inventory (Resep)
* **Potong Stok Otomatis:** Tidak perlu update stok manual! Setiap menu yang terjual akan otomatis mengurangi stok bahan baku di gudang sesuai takaran resep.
    * *Contoh:* Jual 1 "Nasi Goreng" -> Otomatis kurangi: Nasi (200gr), Telur (1 btr), Minyak (20ml).

### 👥 Sistem Member & Diskon
* **Cek Member:** Identifikasi pelanggan via Nomor HP.
* **Diskon Dinamis (Loyalty):**
    * 🆕 **New Member:** 0% Diskon
    * 🎖️ **Loyal Member:** 10% Diskon (> 5 kunjungan)
    * 👑 **VIP Member:** 15% Diskon (> 10 kunjungan)

### 📅 Absensi Karyawan
* Validasi ID Karyawan.
* Pencatatan waktu kehadiran (*Check-in*) yang terhubung ke database.

---

## 🧠 Penerapan Konsep PBO (OOP)

Proyek ini memenuhi kriteria Tugas Besar dengan menerapkan 4 pilar utama OOP:

| Konsep | Implementasi di SiKongkow |
| :--- | :--- |
| **Encapsulation** | Penggunaan *Access Modifier* `private` pada atribut kelas model (seperti `CartItem`, `User`) dan akses data melalui method `Getter/Setter`. |
| **Inheritance** | Form GUI (`TransaksiPenjualan`, `AbsensiPanel`) mewarisi kelas `javax.swing.JFrame` atau `javax.swing.JPanel`. |
| **Polymorphism** | Logika perhitungan diskon yang berbeda perilaku (Overriding) pada kelas `PembeliMember` dan `PembeliUmum`. |
| **Abstraction** | Penggunaan `Abstract Class` atau Interface untuk kerangka dasar entitas bisnis pembeli. |

---

## 🛠️ Teknologi

* **Bahasa:** Java (JDK 8/17+)
* **GUI:** Java Swing (JFrame, JPanel, Layout Managers)
* **Database:** MySQL
* **IDE:** Apache NetBeans
* **Library:** `mysql-connector-j` (JDBC Driver)

---

## 🗄️ Struktur Database

Database `kongkow_db` terdiri dari tabel-tabel yang saling berelasi:

* **`users`**: Data login karyawan (Role: Admin/Kasir).
* **`menu`**: Daftar produk jual.
* **`bahan_baku`**: Stok gudang (Gram/Pcs/Ml).
* **`resep_menu`**: *Junction Table* yang menghubungkan Menu dengan Bahan Baku (Resep).
* **`pelanggan`**: Data member dan riwayat kunjungan (`visit_count`).
* **`pesanan`**: Header transaksi (Total, Waktu, Diskon).
* **`detail_pesanan`**: Rincian item per transaksi.
* **`absensi`**: Log kehadiran karyawan.

---

## 🚀 Cara Instalasi

### 1. Clone Repository
```bash
git clone [https://github.com/username-anda/sikongkow.git](https://github.com/username-anda/sikongkow.git)
