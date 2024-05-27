<?php
session_start();
include '../connect.php';
if ($_SESSION['status_login'] != true) {
    header("Location: login.php");
    exit;
}
?>
<!doctype html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Data Kategori</title>

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
            border: 1px solid;
        }

        .box {
            background-color: #fff;
            border: 1px solid #ccc;
            padding: 15px;
            box-sizing: border-box;
        }

        table {
            width: 100%;
            border-collapse: collapse;
        }

        table th,
        table td {
            padding: 10px;
            text-align: left;
        }

        table th {
            background-color: #f8f9fa;
        }

        table td a {
            margin-right: 10px;
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
                        <a class="nav-link active" aria-current="page" href="profile.php">Profile</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link active" aria-current="page" href="data-kategori.php">Data Kategori</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link active" aria-current="page" href="data-produk.php">Data Produk</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link active" aria-current="page" href="../halamanUser/index.php">Halaman User</a>
                    </li <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="logut.php">Logout<i class='bx bx-power-off'></i></a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>

    <!-- content  -->
    <div class="section">
        <div class="container">
            <h3>Data Kategori</h3>
            <div class="box">
                <p><a href="Tambah-kategori.php" class="btn btn-success btn-sm"><i class='bx bx-plus'></i>Tambah Data</a></p>
                <table border="1" cellspacing="0" class="table table-bordered">
                    <thead>
                        <tr>
                            <th width="60px">No</th>
                            <th>Kategori</th>
                            <th width="150px">Aksi</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php
                        $kategori = mysqli_query($conn, "SELECT * FROM tb_category ORDER BY category_id DESC");
                        $nomor = 1;
                        while ($row = mysqli_fetch_array($kategori)) {
                        ?>
                            <tr>
                                <td><?php echo $nomor++; ?></td>
                                <td><?php echo $row['category_name']; ?></td>
                                <td>
                                    <a href="edit-kategori.php?id=<?php echo $row['category_id'] ?> " class="btn btn-warning btn-sm"><i class='bx bxs-edit'></i></a>
                                    <a href="proses-hapus.php?idk=<?php echo $row['category_id'] ?>" class="btn btn-danger btn-sm" onclick="return confirm('yakin data ini ingin di hapus?')"><i class='bx bx-trash' style='color:#ffffff'></i></a>
                                </td>
                            </tr>
                        <?php } ?>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</body>

</html>