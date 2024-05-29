<?php

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>

    <style>
        html {
            background-color: linear-gradient(90deg, rgba(253,128,74,1) 0%, rgba(239,222,214,1) 18%, rgba(255,255,255,1) 50%, rgba(239,222,214,1) 82%, rgba(253,128,74,1) 100%); ;
        }

        body {
            max-width: 100%;
            overflow-x: hidden;
            background: rgb(253,128,74);
            background: linear-gradient(90deg, rgba(253,128,74,1) 0%, rgba(239,222,214,1) 18%, rgba(255,255,255,1) 50%, rgba(239,222,214,1) 82%, rgba(253,128,74,1) 100%); 
        }

        .icons {
            width: 84px;
            height: 84px;

            transition: 0.3s;
        }

        .icons:hover {
            width: 95px;
            height: 95px;

        }

        #logo {
            transition: 0.2s;
        }

        #logo:hover {
            width: 21%;
        }
    </style>
</head>
<body>
    <div class="row">
        <div class="col text-center">
            <img src="images/logo/logo-MHP3.png" alt="" width="35%" class="p-4">
        </div>
    </div>
    <div class="row">
        <div class="col text-center">
            <img src="images/monsters/Zinogre.webp" alt="" width="80%">
        </div>
        <div class="col"> 
            <video src="images/video/intro.mp4" autoplay muted class="rounded-4" ></video>
        </div>
        <div width="450px" class="col text-center">
            <img src="images/monsters/Amatsu.webp" alt="" width=400px class="mr-3">
        </div>
    </div>
    <div class="border-top border-bottom border-4 border-dark row text-center mt-5 sticky-top">
        <div class="col py-3">
            <a href="monsters.php"><img src="images/icons/Amatsu.webp" alt="" class="icons"></a>
            <h4>Monsters</h4>
        </div>
        <div class="col-2 py-3">
            <a href="weapons.php"><img src="images/weapon icons/Great Sword.png" alt="" class="icons"></a>
            <h4>Weapons</h4>
        </div>
        <div class="col py-3">
            <a href="locales.php"><img src="images/locale icons/FieldIcon09.png" alt="" class="icons"></a>
            <h4>Locales</h4>
        </div>
    </div>
    <div>
        <div>
            <img src="images/Yukumo-Village.webp" alt="" class="float-start p-4" width="30%">
        </div>
        <div>
            <h2 class="pt-3">Yukumo Village</h2>
            <p class="" >Situated on the Misty Peaks, Yukumo is a quint village known for their famous hot springs and high sought after lumber.
                Until recently, the village had been secured by visiting Hunters who came to use the hot springs. However, because of an increased appearance of large monsters, the village has had to request a dispatch from the Hunter's Guild. </p>
            
            <p>Yukumo village is divided by 3 floors, the bottom containing the General Store where hunters can buy basic items such as: Potions, Whetstones and Ammo.
                The Blacksmith where hunters can buy and upgrade equipment using materials gathered from Locales or Monsters. And the farm where hunters can gather Mushrooms, Honey, Fish and different kinds of ore's and minerals.
                Felyne companions can be hired to help at the farm, they can be given pickaxes to help gather ore from the small cave. Or can be send out on an expedition to gather monster materials.</p>

            <p>On the second floor the hunter's home can be found, here the hunter can rest and change equipment if needed. Left of the house the training area can be found,
                here the hunter can try new weapons and take on challenges. On the right side the Yukumo Village Chief can be found who offers the hunter quests, she can be found sitting on a bench next to the gate towards the gathering hall. <br>
                Next to her is the wandering trader who offers different items everyday, these items can also be the same items sold at the General Store but are often much cheaper.
            </p>

            <p>The final floor is the gathering hall situated at the top of the village. The gathering hall is a place in which hunters can meet and hunt together on more difficult quests.
                In the gathering hall the hotspring can be found in which hunters can relax and gain a
                bonus to their health and stamina.
                The gathering hall also contains a small General Store selling the same items as the one in the village.<br>
                There are also 2 quest maidens: one dedicated for Low Rank Hub quests and the other dedicated for High Rank Hub quests.   
            </p>
        </div>
    </div>
    <div class="text-center" style="margin-top: 7%; border-top: 4px solid #c09f8c; background: #4e2208;">
        <a href="#"><img src="images/logo/navbarlogo-MH.png" alt="" width="20%" class="p-2" id="logo"></a>
    </div>
</body>
</html>