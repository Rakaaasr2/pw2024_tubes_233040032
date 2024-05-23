<?php
session_start();
include '../connect.php';
if (!isset($_SESSION['status_login']) || $_SESSION['status_login'] != true) {
    header("Location: login.php");
    exit;
}
?>
<!doctype html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Data Produk</title>

    <!-- box icon -->
    <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
</head>

<body>

    <style>
        .container {
            max-width: 100%;
            padding: 0 15px;
        }

        .section {
            padding: 25px 0;
            border: 1px solid #ddd;
            margin-bottom: 20px;
        }

        .box {
            background-color: #fff;
            border: 1px solid #ddd;
            padding: 15px;
            box-sizing: border-box;
        }

        .table img {
            max-width: 100px;
        }
    </style>

    <nav class="navbar navbar-expand-lg navbar-dark bg-success">
        <div class="container">
            <a class="navbar-brand" href="#"><i class='bx bxs-capsule' style='color:#ff0000'></i>K2KLIK</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav ms-auto">
                    <li class="nav-item">
                        <a class="nav-link active" aria-current="page" href="dashboard.php">Dashboard</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="profile.php">Profile</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="data-kategori.php">Data Kategori</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="data-produk.php">Data Produk</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="logut.php">Logout<i class='bx bx-power-off'></i></a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>

    <!-- content  -->
    <div class="section">
        <div class="container">
            <h3>Data Produk</h3>
            <div class="box">
                <p><a href="tambah-produk.php" class="btn btn-success btn-sm"><i class='bx bx-plus'></i> Tambah Data</a></p>
                <div class="table-responsive">
                    <table class="table table-bordered">
                        <thead>
                            <tr>
                                <th width="60px">No</th>
                                <th>Kategori</th>
                                <th>Nama Produk</th>
                                <th>Harga</th>
                                <th>Gambar</th>
                                <th>Status</th>
                                <th width="150px">Aksi</th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php
                            $produk = mysqli_query($conn, "SELECT * FROM tb_produk LEFT JOIN tb_category USING (category_id) ORDER BY produk_id DESC");
                            $nomor = 1;
                            if (mysqli_num_rows($produk) > 0) {
                                while ($row = mysqli_fetch_array($produk)) {
                            ?>
                            <tr>
                                <td><?php echo $nomor++; ?></td>
                                <td><?php echo $row['category_name']; ?></td>
                                <td><?php echo $row['produk_name']; ?></td>
                                <td>Rp. <?php echo number_format($row['produk_price']); ?></td>
                                <td> <a href="../produk/img/<?php echo $row['produk_image']; ?>" target="_blank"><img src="../produk/img/<?php echo $row['produk_image']; ?>" width="70px"></a></td>
                                <td><?php echo ($row['produk_status'] == 0)? 'Tidak Aktif' : 'Aktif'; ?></td>
                                <td>
                                    <a href="edit-produk.php?id=<?php echo $row['produk_id']; ?>" class="btn btn-warning btn-sm">Edit</a>
                                    <a href="proses-hapus.php?idp=<?php echo $row['produk_id']; ?>" class="btn btn-danger btn-sm" onclick="return confirm('Yakin data ini ingin dihapus?')">Hapus</a>
                                </td>
                            </tr>
                            <?php
                                }
                            } else {
                            ?>
                            <tr>
                                <td colspan="7" class="text-center">Tidak ada data</td>
                            </tr>
                            <?php } ?>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</body>

</html>
