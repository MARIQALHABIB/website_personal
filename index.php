<?php
session_start(); // Memulai sesi
include 'database.php'; // Memasukkan file konfigurasi database
?>

<!DOCTYPE html>
<html lang="id">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Home - Iphone.com </title>
    <link rel="stylesheet" href="assets/css/style.css"> <!-- Sesuaikan path jika diperlukan -->
 
</head>
<body>
    <header>
        <h1>  Selamat Datang di PIAMAN IP STORE</h1>
        <nav>
            <ul>
                <li><a href="index.php">Home</a></li>
                <li><a href="products.php">Produk</a></li>
                <li><a href="add_product.php">Tambah Produk</a></li>
                <li><a href="about.php">Tentang Kami</a></li>
                <li><a href="laporan_harian.php">Laporan Harian</a></li>
                <li><a href="laporan_bulanan.php">Laporan bulanan</a></li>
                <li><a href="laporan_stok.php">Laporan Stok</a></li>
                <li><a href="laporan_pengguna.php">Laporan pengguna</a></li>
                <li><a href="register.php">Registrasi</a></li>
                <li><a href="contact.php">Kontak</a></li>
                <?php if(isset($_SESSION['user_id'])): ?>
                    <li><a href="profile.php">Profil</a></li>
                    <li><a href="indexdddd.php">Logout</a></li>
                <?php else: ?>
                    <li><a href="login.php">Login</a></li>
                <?php endif; ?>
            </ul>
        </nav>
    </header><!DOCTYPE html>
<html lang="id">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Produk Unggulan - IPHONE</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: white;
            color: #333;
        }
        main {
            padding: 20px;
        }
        #featured-products {
            border: 2px solid pink;
            border-radius: 10px;
            padding: 20px;
            margin-bottom: 20px;
        }
        header {
            background-color: black
        }
        nav {
            background-color: rebeccapurple;
        }
        h2 {
            text-align: center;
            margin-bottom: 20px;
        }
        .products {
            display: flex;
            justify-content: space-between;
            flex-wrap: wrap;
        }
        .card {
            width: 30%;
            margin-bottom: 20px;
            border: 1px solid #ccc;
            border-radius: 5px;
            overflow: hidden;
            box-shadow: 0 0 5px rgba(0, 0, 0, 0.1);
        }
        .card img {
            width: 100%;
            height: auto;
            display: block;
            border-bottom: 1px solid #ccc;
        }
        .card-body {
            padding: 10px;
            text-align: center;
        }
        .card-title {
            margin-bottom: 10px;
        }
        .card-text {
            margin-bottom: 10px;
        }
        .btn {
            background-color: black;
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            text-decoration: none;
            transition: background-color 0.3s;
        }
        .footer {
            background-color: #003399;
        }
        footer {
            background-color: rebeccapurple;
            color: white;
            text-align: center;
            padding: 10px;
            position: relative;
            bottom: 0;
            width: 100%;
            margin-top: 20px;
        }
</style>
    
</head>
<!DOCTYPE html>
<html lang="id">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Halaman Utama - PIAMAN IP STORE</title>
    <style>
        /* CSS lainnya di sini */
        .nav-bar {
            display: flex;
            justify-content: flex-end;
            align-items: center;
            background-color: black;
            color: white;
            padding: 10px;
        }
        .logout-btn,
        .cart-icon {
            margin-left: 10px;
            cursor: pointer;
        }
        .cart-icon svg {
            width: 24px;
            height: 24px;
            fill: white;
        }
        .cart-icon:hover {
            background-color: black;
        }
    </style>
</head>
<body>
    <div class="nav-bar">

    <div class="nav-bar">
        <a href="keranjang.php" class="cart-icon">
            <span style="color: white;">Keranjang</span>
            <svg xmlns="http:.org/2000/svg" viewBox="0 0 24 24">//www.w3
                <path d="M0 0h24v24H0z" fill="none"/>
                <path d="M10 18c1.1 0 2-.9 2-2h4c1.1 0 1.99-.9 2-2l2-10c.01-.11-.04-.21-.11-.29s-.18-.12-.29-.12H6.21L6 4.05 5.99 4H2v2h2l3.49 7H10zm6-12h-3V6h3V6zm-4 0H8V6h4V6z"/>
            </svg>
                  </a>
    </div>

        </a>
    </div>
</body>
</html>

<body>
    <main>
        <section id="featured-products">
            <h2>Produk Unggulan</h2>
            <div class="products">
                <div class="card">
                    <img src="IPHONE 14(3).JPEG" alt="jam8" width="200">
                    <div class="card-body">
                    <h4 class="card-title">IPHONE 14</h4>
                        <p class="card-text"> NEW ORIGIANAL.</p>
                        <a href="products.php" class="btn">Detail Selengkapnya</a>
                    </div>
                </div>
                <div class="card">
                    <img src="IPHONE 15.JPEG" alt="jam2" width="200">
                    <div class="card-body">
                        <h4 class="card-title">IPHONE 15</h4>
                        <p class="card-text">LIKE NEW ORIGINAL.</p>
                        <a href="products.php" class="btn">Detail Selengkapnya</a>
                    </div>
                </div>
                <div class="card">
                    <img src="IPHONE 13(3).JPEG" alt="jam3" width="200">
                    <div class="card-body">
                        <h4 class="card-title">IPHONE 13</h4>
                        <p class="card-text">SECOND ORIGIANAL.</p>
                        <a href="products.php" class="btn">Detail Selengkapnya</a>
                    </div>
                </div>
            </div>
        </section>
    </main>
    <footer>
        <p>&copy; <?php echo date("Y"); ?> PIAMAN IP STORE. Semua hak dilindungi.</p>
    </footer>
</body>
</html>

   