<?php
session_start();
include '../connect.php';
if (!isset($_SESSION['status_login']) || $_SESSION['status_login'] != true) {
    header("Location: login.php");
    exit;
}

$produk = mysqli_query($conn, "SELECT * FROM tb_produk WHERE produk_id ='" . $_GET['id'] . "' ");
$p = mysqli_fetch_object($produk);

?>
<!doctype html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Edit Produk</title>

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

        .input-control {
            width: 100%;
            padding: 10px;
            margin-bottom: 15px;
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
                        <a class="nav-link active" aria-current="page" href="logout.php">Logout<i class='bx bx-power-off'></i></a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>

    <!-- content  -->
    <div class="section">
        <div class="container">
            <h3>Edit Data Produk</h3>
            <div class="box">
                <form action="" method="POST" enctype="multipart/form-data">
                    <select class="input-control" name="kategori" required>
                        <option value="">--Pilih--</option>

                        <?php
                        $kategori = mysqli_query($conn, "SELECT * FROM tb_category ORDER BY category_id DESC");
                        while ($r = mysqli_fetch_array($kategori)) {
                        ?>
                            <option value="<?php echo $r['category_id'] ?>" <?php echo ($r['category_id'] == $p->category_id) ? 'selected' : ''; ?>><?php echo $r['category_name'] ?></option>
                        <?php } ?>

                    </select>
                    <input type="text" name="nama" placeholder="Nama Produk" class="input-control" value="<?php echo $p->produk_name ?>" required>
                    <input type="text" name="harga" placeholder="Harga" class="input-control" value="<?php echo $p->produk_price ?>" required>
                    <img src="../produk/img/<?php echo $p->produk_image; ?>" alt="">
                    <input type="hidden" name="foto" value="<?php echo $p->produk_image ?>">
                    <input type="file" name="gambar" class="input-control">
                    <textarea class="input-control" name="deskripsi" placeholder="Deskripsi"><?php echo $p->produk_description ?></textarea>
                    <select class="input-control" name="status">
                        <option value="">--Pilih--</option>
                        <option value="1" <?php echo ($p->produk_status == 1) ? 'selected' : ''; ?>>Aktif</option>
                        <option value="0" <?php echo ($p->produk_status == 0) ? 'selected' : ''; ?>>Tidak Aktif</option>
                    </select>
                    <input type="submit" name="submit" value="Submit" class="btn btn-success">
                </form>

                <?php
                if (isset($_POST['submit'])) {

                    // data inputan dari form
                    $kategori   = $_POST['kategori'];
                    $nama       = $_POST['nama'];
                    $harga      = $_POST['harga'];
                    $deskripsi  = $_POST['deskripsi'];
                    $status     = $_POST['status'];
                    $foto       = $_POST['foto'];

                    // data gambar yang baru
                    $filename = $_FILES['gambar']['name'];
                    $tmp_name = $_FILES['gambar']['tmp_name'];

                    

                    // jika admin ambil gambar
                    if($filename != ''){

                        $type1 = explode('.', $filename);
                    $type2 = strtolower(end($type1));

                    $newname = 'produk' . time() . '.' . $type2;

                    // Menampung data format file yang diizinkan
                    $tipe_diizinkan = array('jpg', 'jpeg', 'png', 'gif');
                        // Validasi format file
                        if (!in_array($type2, $tipe_diizinkan)) {
                            // Jika file tidak ada di dalam tipe yang diizinkan
                            echo '<script>alert("Format file tidak diizinkan")</script>';
                        } else {
                            if (file_exists('../produk/img/'.$foto)) {
                                unlink('../produk/img/'.$foto);
                            }
                            move_uploaded_file($tmp_name, '../produk/img/' . $newname);
                            $namagambar = $newname;
                        }
                    } else {
                        // jika admin tidak ganti gambar
                        $namagambar = $foto;
                    }

                    // query update data produk
                    $update = mysqli_query($conn, "UPDATE tb_produk SET
                                        category_id ='".$kategori."',
                                        produk_name ='".$nama."',
                                        produk_price ='".$harga."',
                                        produk_description ='".$deskripsi."',
                                        produk_image ='".$namagambar."',
                                        produk_status ='".$status."'
                                        WHERE produk_id = '".$p->produk_id."' ");
                    if ($update) {
                        echo '<script>alert("Simpan data berhasil")</script>';
                        echo '<script>window.location="data-produk.php"</script>';
                    } else {
                        echo '<script>alert("Gagal menyimpan data: ' . mysqli_error($conn) . '")</script>';
                    }
                }
                ?>
            </div>
        </div>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</body>

</html>
