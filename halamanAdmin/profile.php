    <?php
    session_start();
    include '../connect.php';
    if (!isset($_SESSION['status_login']) || $_SESSION['status_login'] != true) {
        header("Location: login.php");
        exit;
    }

    $query = mysqli_query($conn, "SELECT * FROM tb_admin WHERE admin_id ='" . $_SESSION['id'] . "'");
    $d = mysqli_fetch_object($query);
    ?>
    <!doctype html>
    <html lang="en">

    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Halaman Profile</title>

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
                <a class="navbar-brand" href="#"><i class='bx bxs-capsule' style='color:#ff0000'></i></>K2KLIK</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarNav">
                    <ul class="navbar-nav ms-auto">
                        <li class="nav-item">
                            <a class="nav-link active" aria-current="page" href="dashboard.php">Dashboard</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link active " aria-current="page" href="profile.php">Profile</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link active" aria-current="page" href="data-kategori.php">Data Kategori</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link active" aria-current="page" href="data-produk">Data Produk</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link active" aria-current="page" href="logut.php">Logout<i class='bx bx-power-off'></i></a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>

        <!-- content  -->
        <div class="section">
            <div class="container">
                <h3>Profile</h3>
                <div class="box">
                    <form action="" method="POST">
                        <input type="text" name="nama" placeholder="Nama Lengkap" class="input-control" value="<?php echo $d->admin_name ?>" required>
                        <input type="text" name="user" placeholder="Username" class="input-control" value="<?php echo $d->username ?>" required>
                        <input type="text" name="hp" placeholder="No Hp" class="input-control" value="<?php echo $d->admin_telp ?>" required>
                        <input type="text" name="email" placeholder="Email" class="input-control" value="<?php echo $d->admin_email ?>" required>
                        <input type="text" name="alamat" placeholder="Alamat" class="input-control" value="<?php echo $d->admin_address ?>" required>
                        <input type="submit" name="submit" value="Ubah Profil" class="btn btn-success">
                    </form>

                    <?php
                    if (isset($_POST['submit'])) {

                        $nama = $_POST['nama'];
                        $user = $_POST['user'];
                        $hp   = $_POST['hp'];
                        $email  = $_POST['email'];
                        $alamat = $_POST['alamat'];

                        $update = mysqli_query ($conn, "UPDATE tb_admin SET 
                                        admin_name = '".$nama."',
                                        username = '".$user."',
                                        admin_telp = '".$hp."',
                                        admin_email = '".$email."',
                                        admin_address = '".$alamat."'
                                        WHERE admin_id ='".$d->admin_id."' ");
                        if($update){
                            echo '<script>alert("Ubah Data Berhasil")</script>';
                            echo '<script>window.location="profile.php"</script>';
                        }else{
                            echo 'gagal' .mysqli_error($conn);
                        }
                    }
                    ?>
                </div>

                <!-- Ubah password -->
                <h3>Ubah Password</h3>
                <div class="box">
                    <form action="" method="POST">
                        <input type="password" name="pass1" placeholder="Password baru" class="input-control" value="<?php echo $d->admin_name ?>" required>
                        <input type="password" name="pass2" placeholder="Konfirmasi Password Baru" class="input-control" value="<?php echo $d->username ?>" required>
                       
                        <input type="submit" name="ubah_password" value="Ubah Password" class="btn btn-success">
                    </form>

                    <?php
                    if (isset($_POST['ubah_password'])) {

                        $pass1 = $_POST['pass1'];
                        $pass2  = $_POST['pass2'];

                        if($pass2 != $pass1){
                            echo '<script>alert("Konfirmasi Password Baru tidak sesuai")</script>';
                        }else{
                            $u_pass = mysqli_query ($conn, "UPDATE tb_admin SET 
                                        password = '".MD5($pass1)."'
                                        WHERE admin_id ='".$d->admin_id."' ");
                            if($u_pass){
                                echo '<script>alert("Ubah Data Berhasil")</script>';
                                echo '<script>window.location="profile.php"</script>';
                            }else{
                                echo 'gagal' .mysqli_error($conn);
                            }
                        }
                    }
                    ?>
                </div>
            </div>
        </div>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
    </body>

    </html>