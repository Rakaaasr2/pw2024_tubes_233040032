<?php
include '../connect.php';
$kontak = mysqli_query($conn, "SELECT admin_telp, admin_email, admin_address FROM tb_admin WHERE admin_id = 1");
$a = mysqli_fetch_object($kontak);

$produk = mysqli_query($conn, "SELECT * FROM tb_produk WHERE produk_id = '" . $_GET['id'] . "' ");
$p = mysqli_fetch_object($produk);
?>
<!doctype html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Halaman dashboard</title>

    <!-- font -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:ital,wght@0,100..900;1,100..900&display=swap" rel="stylesheet">

    <!-- box icon -->
    <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
</head>

<body>

    <style>
        .container {
            width: 80%;
            margin: 0 auto;
        }

        .section {
            padding: 25px 0;
        }

        .box {
            background-color: #fff;
            padding: 15px;
            box-sizing: border-box;
        }

        .box::after {
            content: '';
            display: block;
            clear: both;
        }

        h2 {
            font-family: "Montserrat", sans-serif;
            font-weight: 800;
            margin-bottom: 100px;
            margin-top: 50px;
        }

        h1 {
            font-family: "Montserrat", sans-serif;
            font-weight: 800;
            font-style: italic;
            text-align: center;
            text-shadow:
                -1px -1px 0 #fff,
                1px -1px 0 #fff,
                -1px 1px 0 #fff,
                1px 1px 0 #fff;
        }

        .search {
            padding: 15px 0;
            background-color: #fff;
            border-top: 1px solid #fff;
            border-right: 1px solid #fff;
            border-left: 1px solid #fff;
            border-bottom: 1px solid #787473;
            text-align: center;
        }

        .search input[type=text] {
            width: 60%;
            padding: 10px;
            border-radius: 3px;
        }

        .search button[type=submit] {
            padding: 10px 13px;
            color: white;
        }

        .col-5 {
            width: 20%;
            height: 100px;
            text-align: center;
            float: left;
            padding: 10px;
            box-sizing: border-box;
        }

        .col-4:hover {
            box-shadow: 0 0 3px #999;

        }

        .col-4 {
            width: 25%;
            height: 320px;
            border: 1px solid #ccc;
            float: left;
            padding: 10px;
            box-sizing: border-box;
            margin-bottom: 10px;
        }

        a {
            color: inherit;
            text-decoration: none;
        }

        a:hover {
            color: inherit;
            text-decoration: none;
        }

        .harga {
            font-family: "Montserrat", sans-serif;
            font-weight: bold;
            font-size: 14px;
            margin-top: -13px;
            float: right;
            color: #c70039;
        }

        .nama {
            font-size: 15px;
            margin-top: -20px;
        }

        .col-4 img {
            width: 100%;
        }

        .col-2 {
            width: 50%;
            min-height: 200px;
            padding: 10px;
            box-sizing: border-box;
            float: left;
        }

        .col-2 img {
            padding: 5px;
            box-sizing: border-box;
        }

        .col-2 h5 {
            margin-bottom: 10px;
            font-weight: bold;
        }

        .col-2 h6 {
            color: #c70039;
            font-family: "Montserrat", sans-serif;
            font-weight: bold;
            font-size: 19px;
        }

        .col-2 p {
            margin: 15px 0;
            text-align: justify;
            line-height: 25px;
            font-size: 17px;
        }

        .footer {
            padding: 25px 0;
            background-color: #333;
            color: #fff;
            text-align: center;

        }

        .footer h5 {
            font-size: 18px
        }

        .footer p {
            margin-top: -12px;
            margin-bottom: 20px;
        }

        @media screen and (max-width: 768px) {
            .container {
                width: 80%;
            }
            .col-5 {
                width: 50%;
                margin-bottom: 10px;
            }
            .col-4{
                width: 50%;
                height: 300px;
            }
            .col-2{
                width: 100%;
            }
        }
    </style>

    <nav class="navbar navbar-expand-lg navbar-dark bg-success">
        <div class="container">
            <a class="navbar-brand" href="index.php"><i class='bx bxs-capsule' style='color:#ff0000'></i>K2KLIK</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav ms-auto">
                    <li class="nav-item">
                        <a class="nav-link active" aria-current="page" href="produk.php">Produk</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>

    <div class="search">
        <div class="container">
            <form>
                <input type="text" name="search" placeholder="Cari obat, vitamin, produk kesehatan lainnya" value="<?php echo isset($_GET['search']) ? htmlspecialchars($_GET['search'], ENT_QUOTES, 'UTF-8') : ''; ?>">
                <input type="hidden" name="kat" value="<?php echo isset($_GET['kat']) ? htmlspecialchars($_GET['kat'], ENT_QUOTES, 'UTF-8') : ''; ?>">
                <button type="submit" name="cari" class="btn btn-success">
                    <i class='bx bx-search'></i> Cari
                </button>
            </form>
        </div>
    </div>

    <!-- produk detail -->
    <div class="section">
        <div class="container">
            <h3>Detail Produk</h3>
            <div class="box">
                <div class="col-2">
                    <img src="../produk/img/<?php echo $p->produk_image; ?>" width="100% ">
                </div>
                <div class="col-2">
                    <h5><?php echo $p->produk_name ?></h5>
                    <h6>Rp. <?php echo number_format($p->produk_price) ?></h6>
                    <p>Deskripsi :<br>
                        <?php echo $p->produk_description ?>
                    </p>
                    <p> <a href="https://api.whatsapp.com/send?phone=+6285724554781>&text=Hallo,Saya ingin membeli produk <?php echo $p->produk_name ?>" target="_blank"><i class='bx bxl-whatsapp' style='color:#007203'  >Klik Whatsapp Untuk membeli produk <?php echo $p->produk_name?></i></a></p>
                </div>
            </div>
        </div>
    </div>

    <!-- footer -->
    <div class="footer">
        <div class="container">
            <h5>Alamat</h5>
            <p><?php echo htmlspecialchars($a->admin_address, ENT_QUOTES, 'UTF-8') ?></p>

            <h5>Email</h5>
            <p><?php echo htmlspecialchars($a->admin_email, ENT_QUOTES, 'UTF-8') ?></p>

            <h5>No.Hp</h5>
            <p><?php echo htmlspecialchars($a->admin_telp, ENT_QUOTES, 'UTF-8') ?></p>
            <small>Copyright &copy; 2024 - Syamsul Rakha Raditia</small>
        </div>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</body>

</html>