<?php
session_start();
include '../connect.php';
if ($_SESSION['status_login'] != true) {
  echo '<script>window.location="login.php"</script>';
}

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
    body {
      background-image: url('../halamanAdmin/img-bg/bg.jpg');
      background-size: cover;
      background-position: center;
      background-repeat: repeat-y;
    }

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
      box-sizing: bor der-box;
    }

    h2 {
      font-family: "Montserrat", sans-serif;
      font-weight: 800;
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
  </style>

  <nav class="navbar navbar-expand-lg navbar-dark bg-success">
    <div class="container">
      <a class="navbar-brand" href="dashboard.php"><i class='bx bxs-capsule' style='color:#ff0000'></i></>K2KLIK</a>
      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarNav">
        <ul class="navbar-nav ms-auto">
          <li class="nav-item">
            <a class="nav-link active" aria-current="page" href="">Dashboard</a>
          </li>
          <li class="nav-item">
            <a class="nav-link active " aria-current="page" href="profile.php">Profile</a>
          </li>
          <li class="nav-item">
            <a class="nav-link active" aria-current="page" href="data-kategori.php">Data Kategori</a>
          </li>
          <li class="nav-item">
            <a class="nav-link active" aria-current="page" href="data-produk.php">Data Produk</a>
          </li>
          <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="../halamanUser/index.php">Halaman User</a>
          </li>
          <li class="nav-item">
            <a class="nav-link active" aria-current="page" href="logut.php" ><i class='bx bx-log-out-circle' ></i></i></a>
          </li>


      </div>
    </div>
  </nav>

  <!-- content  -->
  <div class="container">
    <h2>Dashboard</h2>
    <h1>SELAMAT DATANG <?php echo $_SESSION['a_global']->admin_name ?> DI K2KLIK <i class='bx bxs-capsule bx-tada' style='color:#17c401'></i></h1>
  </div>

  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</body>

</html>