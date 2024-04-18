<?php 

$username = 'bit_academy';
$servername = 'localhost';
$password = 'bozo';
try {
    $connection = new PDO("mysql:dbname=monster_hunter_p3rd; host=$servername", $username, $password);
    $connection->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
} catch (PDOException $e) {
    echo "Connection failed: " . $e->GetMessage();
}

$sqllocales = "SELECT * FROM locales";
$stmt = $connection->query($sqllocales);
$locales = $stmt->fetchAll(PDO::FETCH_ASSOC);

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <style>

      
    </style>
</head>
<body>
<nav class="navbar navbar-expand-lg border-bottom border-2 border-dark">
  <div class="container-fluid">
    <a class="navbar-brand" href="index.php"><img src="images/navbarlogo.png" alt="" width="80%"></a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNav">
      <ul class="navbar-nav">
        <li class="nav-item">
          <a class="nav-link fs-5" aria-current="page" href="monsters.php">Monsters</a>
        </li>
        <li class="nav-item">
          <a class="nav-link fs-5" href="weapons.php">Weapons</a>
        </li>
        <li class="nav-item">
          <a class="nav-link fs-5" href="locales.php">Locales</a>
        </li>
      </ul>
    </div>
  </div>
</nav>
<div class="container text-center">
  <h1>Locales</h1>
</div>
<div>
  <div class="container text-center">
    <div class="row">
      <?php foreach ($locales as $index => $locale) {?>
        <div class="col-sm-3">
          <div class="p-3">
            <div class="card" style="width: 18rem;">
              <img src="images/locales/<?= $locale['name']?>.webp" class="card-img-top" alt="..." height="161px">
              <div class="card-body">
                <h5 class="card-title"><?= $locale['name']?></h5>
                <p class="card-text"><?= $locale['small_description']?></p>
                <a href="localedetails.php?id=<?= $locale['id'] ?>" class="btn btn-primary">Details</a>
              </div>
            </div>
          </div>
        </div>
      <?php }?>
    </div>
  </div>
</div>
</body>
</html>
