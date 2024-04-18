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


$sqlweapons = "SELECT * FROM weapons";
$stmt = $connection->query($sqlweapons);
$weapons = $stmt->fetchAll(PDO::FETCH_ASSOC);
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
        .icons{
            transition: 0.3s;
        }

        .icons:hover {
            width: 105px;
        }

        button {
            background: none;
            color: inherit;
            border: none;
            padding: 0;
            font: inherit;
            cursor: pointer;
            outline: inherit;
        }

        .renders {
            width: 350px;
            height: 350px;
            object-fit:scale-down;
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
          <a class="nav-link fs-5" href="#">Weapons</a>
        </li>
        <li class="nav-item">
          <a class="nav-link fs-5" href="locales.php">Locales</a>
        </li>
      </ul>
    </div>
  </div>
</nav>
<div>
    <h1 class="text-center">Weapons</h1>
</div>
<div>
    <div class="container text-center">
        <div class="row">
    <?php foreach ($weapons as $index => $weapon) {
        if (!isset($_POST['_submit'])){?>
        <div class="col mx-5 mt-4">
            <form method="post" action="">
            <button name="<?= $id = $weapon['id']?>" value="<?= $weapon['id']?>" type="submit"><img src="Images/Weapon icons/<?= $weapon['name']?>.png" alt="" width="95px" class="icons"></button>
            <p><?= $weapon['name']?></p>
            </form>
        </div>   
    <?php }}?>
        </div>
    </div> 
</div>
<?php 
foreach ($_POST as $id) {
$sqlsubweapons = "SELECT * FROM weapons WHERE id = '$id'";
$stmt = $connection->query($sqlsubweapons);
$subweapons = $stmt->fetchAll(PDO::FETCH_ASSOC);?>


<div class="mx-5 mt-5 mb-3 p-3 text-center border rounded-5" id="weaponinfo">
  <div class="">
    <?php foreach ($subweapons as $index => $subweapon) {
        $damages = explode(", ",$subweapon['type']);?>
    <div>
        <h1><?= $subweapon['name']?></h1>
        <h4>Damage type: <?php foreach ($damages as $damage){echo "$damage ";}?></h4>
        <img src="images/weapons/<?= $subweapon['name']?>.webp" alt="" class="renders">
        <div class="mx-5 px-5">
            <p class="fs-4"><?= $subweapon['description']?></p>
        </div>
    </div>
    <?php }}?>
  </div>
</div>

</body>
</html>