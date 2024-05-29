<?php 
$name = $_GET['name'] ?? "asc";
$id = $_GET['id'] ?? "asc";
$username = 'root';
$servername = 'localhost';
try {
    $connection = new PDO("mysql:dbname=monster_hunter_p3rd; host=$servername", $username);
    $connection->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
} catch (PDOException $e) {
    echo "Connection failed: " . $e->GetMessage();
}


$sqlmonster = "SELECT * FROM `monsters` WHERE id = '$id' OR name = '$name'";
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
        body {
            background: rgb(255,255,255);
            background: linear-gradient(180deg, rgba(255,255,255,1) 0%, rgba(255,223,194,1) 50%, rgba(255,172,135,1) 75%, rgba(253,128,74,1) 100%); 
            background-repeat: no-repeat;
        }

        #image {
            max-width: 700px;
            height: 40%;
         }
    </style>
</head>
<body>
<nav class="navbar navbar-expand-lg border-bottom border-2 border-dark">
  <div class="container-fluid">
    <a class="navbar-brand" href="index.php"><img src="images/logo/navbarlogo-MHP3.png" alt="" width="80%"></a>
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
<?php foreach ($monsters as $index => $monster) {?>
    <div>
        <div>
            <h1 class="fs-1 p-2"><?php echo $monster['name']?></h1>
            <h2 class="fs-2 p-2"><?php echo $monster['type'] ?></h2>
        </div>
        <div class="clearfix">
            <img class="float-end float-top" src="images/monsters/<?php echo $monster['name']?>.webp" alt="Responsive image" id="image">
            <p class="fs-5 p-2"><?php echo $monster['description']; ?></p>
            <div class="row">
                    <?php 
                        $relatedmonsters = explode(", ", $monster['related_to']);
                        if (!empty($relatedmonsters[0])) { ?>
                            <h3>Related Monsters:</h3>
                        <?php }

                        foreach ($relatedmonsters as $relatedmonster) { ?>      
                            <div class="text-center col-4 ">
                                <a href="details.php?name=<?= $relatedmonster?>"><img src="images/icons/<?php echo $relatedmonster?>.webp" alt="" class="icons"></a>
                                <p><?php echo $relatedmonster;?></p>
                            </div>
                    <?php }?>
            </div>    
            <div class="mt-5">
                <div class="container text-center">
                    <div class="row float-start">
                        <h3 class="mt-5">Locales:</h3>
                        <?php
                            $sqllocales = "SELECT * FROM locales";
                            $stmt = $connection->query($sqllocales);
                            $locales = $stmt->fetchAll(PDO::FETCH_ASSOC);
                                    
                            foreach($locales as $index => $locale) {
                                $local = explode(", ", $locale['monsters']);
                                if (in_array($monster['name'], $local)) { ?>
                                    <div class="col text-center mb-3">
                                        <h4><?php echo $locale['name'] ?></h4>
                                        <a href="localedetails.php?id=<?=$locale['id']?>"><img src="images/locales/<?php echo $locale['name']?>.webp" alt="" width="400px" height="258px" class="locales"></a>     
                                    </div>               
                        <?php }} ?>
                    </div>            
                </div>
            </div>   
        </div>
    </div>
<?php }?>
</body>
</html>