<?php

$username = 'root';
$servername = 'localhost';
try {
    $connection = new PDO("mysql:dbname=monster_hunter_p3rd; host=$servername", $username);
    $connection->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
} catch (PDOException $e) {
    echo "Connection failed: " . $e->GetMessage();
}



$sqlmonster = "SELECT * FROM monsters";
$stmt = $connection->query($sqlmonster);
$monsters = $stmt->fetchAll(PDO::FETCH_ASSOC);

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
        html {
            height: 100%;
            background-color: #01567F;
        }

        body {
            min-height: 100%;
        }

        
    </style>
</head>
<body style="background-image: url(Images/zinogre-background.jpg);">

<div class="text-center">
    <a href="index.php"><img src="Images/logo.png" alt="" id="logo"></a>
</div>
<div class="">
    <div class="container text-center" style="background-color:white;">
    <h2 class="border-bottom pb-3">Large Monsters</h2>
        <div class="row">
            <?php foreach ($monsters as $index => $monster) { 
                if (!$monster['is_small_monster'] == 1) {?>
                <div class="col-sm-3">
                    <div class="p-2">
                        <a href="details.php?id=<?=$monster['id']?>"><img src="Images/Icons/<?= $monster['name']?>.webp" alt="" class="icons"></a><br>
                       <?php echo $monster['name']?>
                    </div>
                </div>
            <?php }}?>
                <h2 class="border-bottom pb-3 mt-4">Small Monsters</h2>
                <?php foreach ($monsters as $index => $monster) {
                    if ($monster['is_small_monster'] == 1) {?>
                <div class="col-sm-3">
                    <div class="p-2">
                        <a href="details.php?id=<?=$monster['id']?>"><img src="Images/Icons/<?= $monster['name']?>" alt="" class="icons"></a><br>
                        <?php echo $monster['name'] ?>
                    </div>
                </div>
            <?php }}?>
        </div>
    </div>
</div>
<div class="text-center">
    <footer>
        <img src="Images/capcom.png" alt="" style="width: 15%;">
    </footer>
</div>
</body>
</html>