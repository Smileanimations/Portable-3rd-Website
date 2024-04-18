<?php

$id = $_GET['id'] ?? "asc";
$username = 'root';
$servername = 'localhost';
try {
    $connection = new PDO("mysql:dbname=monster_hunter_p3rd; host=$servername", $username);
    $connection->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
} catch (PDOException $e) {
    echo "Connection failed: " . $e->GetMessage();
}



$sqllocales = "SELECT * FROM locales WHERE id=$id";
$stmt = $connection->query($sqllocales);
$locales = $stmt->fetchAll(PDO::FETCH_ASSOC);
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="style.css">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <style>

        body {
            width: 100%;
            background-repeat: no-repeat;
            background: rgb(255,255,255);
            background: linear-gradient(180deg, rgba(255,255,255,1) 0%, rgba(255,223,194,1) 50%, rgba(255,172,135,1) 75%, rgba(253,128,74,1) 100%); 
        }

        .icons {
            color: black;
            text-decoration: none;
            max-width: 112px;
            width: 38%;
            transition: 0.3s;
        }

        .icons:hover {
            width: 41%;
        }

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
<div class="float-left">
<?php  foreach ($locales as $index => $locale) {?>
    <div class="p-3">
        <div class="contianer">
            <div class="">
                <h1><?= $locale['name']?></h1>   
                <i>"<?= $locale['small_description']?>"</i> 
                <div class="mt-5">
                    <img src="images/locales/<?= $locale['name']?>.webp" alt="" width="600px">
                    <div class="float-end float-top text-center mb-5">
                        <h2>Map</h2>
                        <img src="Images/Locale Icons/<?= $locale['name']?> Map.webp" alt="No Map Available" width="300px">
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="container text-center mt-5">
    <div class="row">
        <h2>Monsters Found Here</h2>
        <?php $localemonsters = explode(", ", $locale['monsters']);
            foreach ($localemonsters as $localemonster) { ?>
                <div class="col-sm-3">
                    <div class="p-3">
                        <a href="details.php?name=<?= $localemonster?>"><img src="images/icons/<?= $localemonster?>.webp" alt="" class="icons"></a>
                        <p><?= $localemonster?></p>
                    </div>
                </div>
            <?php }?>
    </div>
</div>
<?php }?>
</body>
</html>