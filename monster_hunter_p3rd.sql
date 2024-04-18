-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 18, 2024 at 08:46 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `monster_hunter_p3rd`
--

-- --------------------------------------------------------

--
-- Table structure for table `locales`
--

CREATE TABLE `locales` (
  `id` mediumint(9) NOT NULL,
  `name` varchar(255) NOT NULL,
  `monsters` text NOT NULL,
  `small_description` varchar(300) NOT NULL,
  `description` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `locales`
--

INSERT INTO `locales` (`id`, `name`, `monsters`, `small_description`, `description`) VALUES
(2, 'Misty Peaks', 'Arzuros, Bulldrome, Deviljho, Duramboros, Great Jaggi, Nargacuga, Green Nargacuga, Qurupeco, Silver Rathalos, Rathian, Gold Rathian, Royal Ludroth, Purple Ludroth, Tigrex, Zinogre, Altaroth, Bnahabra, Bullfango, Felyne, Gargwa, Jaggi, Jaggia, Kelbi, Ludroth, Melynx', 'A Temperate, Mountainous region with a lush forest which houses all kinds of different monsters.', ''),
(3, 'Deserted Island', 'Arzuros, Deviljho, Duramboros, Great Baggi, Great Jaggi, Great Wroggi, Nargacuga, Green Nargacuga, Qurupeco, Crimson Qurupeco, Rathalos, Rathian, Royal Ludroth, Purple Ludroth, Zinogre, Altaroth, Aptonoth, Baggi, Bnahabra, Bullfango, Felyne, Giggi, Jaggi, Jaggia, Kelbi, Ludroth, Melynx, Wroggi', 'Surrounded by deep oceans and seaside caverns, this enviroment is home to a variety of monsters.', ''),
(4, 'Flooded Forest', 'Arzuros, Bulldrome, Crimson Qurupeco, Deviljho, Duramboros, Great Wroggi, Nargacuga, Green Nargacuga, Rathian, Royal Ludroth, Purple Ludroth, Altaroth, Aptonoth, Bnahabra, Bullfango, Felyne, Giggi, Kelbi, Ludroth, Melynx, Slagtoth, Wroggi', 'A forrested wetland with many submerged surfaces this makes it an ideal locale for aquatic monsters.', ''),
(5, 'Sandy Plains', 'Barroth, Deviljho, Diablos, Black Diablos, Great Jaggi, Nibelsnarf, Qurupeco, Rathian, Sand Barioth, Tigrex, Volvidon, Altaroth, Aptonoth, Bnahabra, Delex, Felyne, Giggi, Jaggi, Jaggia, Kelbi, Melynx, Rhenoplos', 'Filled with sandstone caves and open deserts, local monsters find novel ways to manage the heat.', ''),
(6, 'Tundra', 'Barioth, Bulldrome, Deviljho, Gigginox, Baleful Gigginox, Glacial Agnaktor, Great Baggi, Jade Barroth, Lagombi, Tigrex, Anteka, Baggi, Bnahabra, Bullfango, Felyne, Giggi, Melynx, Popo', 'A frozen stretch of land filled with formations of ice, dark caverns and dangerous monsters.', ''),
(7, 'Volcano', 'Agnaktor, Brute Tigrex, Crimson Qurupeco, Deviljho, Great Wroggi, Rathalos, Uragaan, Steel Uragaan, Volvidon, Altaroth, Aptonoth, Bnahabra, Bullfango, Felyne, Giggi, Kelbi, Melynx, Rhenoplos, Slagtoth, Uroktor, Wroggi', 'Visible from the shore, it\'s fascinating how monsters can call this burning mountain their home.', ''),
(8, 'Great Desert', 'Jhen Mohran, Delex', 'A vast desert as far as the eye can see, home of the elder Jhen Mohran and many small monsters.', ''),
(9, 'Sacred Land', 'Alatreon', 'A remote area somewhere in the volcanic region, ruled by the black dragon Alatreon.', ''),
(10, 'Lava Canyon', 'Akantor', 'Giant lavafalls surround this area, with lava flows making it hard to navigate.', ''),
(11, 'Polar Field', 'Ukanlos', 'Home of the Ukanlos, the Polar Field has steep ice cliffs and dangerous ice crystals.', ''),
(12, 'Sacred Pinnacle', 'Amatsu', 'With a blood red sky and roaring gales, they say to never set foot near Heaven\'s Catastrophe.', '');

-- --------------------------------------------------------

--
-- Table structure for table `monsters`
--

CREATE TABLE `monsters` (
  `id` mediumint(9) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `is_small_monster` tinyint(1) DEFAULT NULL,
  `related_to` varchar(255) DEFAULT NULL,
  `description` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `monsters`
--

INSERT INTO `monsters` (`id`, `name`, `type`, `is_small_monster`, `related_to`, `description`) VALUES
(1, 'Agnaktor', 'Leviathan', 0, 'Uroktor, Glacial Agnaktor', 'Agnaktor is a quadrupedal Leviathans noted for its remarkable ability to swim through lava and tunnel through solid volcanic rock. Its body is covered in a lava-like armor which hardens when cooled and softens when heated. It has a drill-like beak which is lined with rows of needle-like teeth. \r\n\r\nThe Agnaktor closely resembles the Uroktor in essentially every way; the only real differences are the size of the Agnaktor and its ability to get magma to stick to its body. Even the ability to fire blasts of fire are present on both, though the Agnaktor is capable of unleashing a coherent beam. '),
(2, 'Glacial Agnaktor', 'Leviathan', 0, 'Agnaktor, Uroktor', 'Its body is covered in an icy armor covering that works in reverse to the normal Agnaktor, it hardens when it burrows and softens over time. It also appears to have a longer, harder and sharper beak, useful for digging through the ice of the Tundra. There is much of a difference between Agnaktor and Glacial Agnaktor mostly being the element it uses.'),
(3, 'Akantor', 'Flying Wyvern', 0, 'Ukanlos', 'The Akantor is a massive, vaguely snapping turtle-like wyvern that dwells in magma. Akantors are covered with massive reddish black spikes and durable shells, and have both large sharp claws on their legs but also a similar structure on its tail. The Akantor\'s most distinctive feature aside from its fearsome spikes are the pair of dreadful tusks on its head. These tusks are both nearly as long as the entirety of the head.\n\nThe Akantor is classified as a Flying Wyvern due to its evolutionary line; Akantor is no longer capable of flight, and only has small nubs left of their original wings. '),
(4, 'Arzuros', 'Fanged Beast', 0, NULL, 'Arzuros is bear-like monsters which roams mostly forested areas looking for it favorite snacks: Fish and Honey. Arzuros are highly territorial clawing at anything that threads too close, even monsters larger then them.  '),
(5, 'Barioth', 'Flying Wyvern', 0, 'Sand Barioth', 'Barioth is a quadrupedal Flying Wyvern, with a head that resembles a saber-toothed cat. Its body is mostly covered with icy white plates and spikes along its neck, spine, and tail. Its face features two massive, curved tusks of an amber coloration. Its forelegs are longer and more powerful than its back legs, with deadly spikes along its wings. If hunters manage to break Barioth\'s wings it will lose its footing more often when landing, resulting in it tumbling more frequently.'),
(6, 'Sand Barioth', 'Flying Wyvern', 0, 'Barioth', 'This Subspecies of Barioth has an orange-yellow color scheme with a blood red colored head with deep indigo tusks the tips of which are also blood red. Instead of living in more colder climates, Sand Barioth is mostly found in deserts. This is also why Sand Barioth can summon sand tornadoes instead of the usual snow/ice tornadoes. '),
(7, 'Barroth', 'Brute Wyvern', 0, 'Jade Barroth', 'Barroth is a large, bipedal monster. It is noted for the large crown structure atop its skull, which houses its nostrils. Its body is covered in rigid plates that help protect it from the harsh desert environment. Barroth\'s are usually covered in a layer of mud helping it protect itself from the heat and using it as armor against enemies, this mud is susceptible to water and get easily be hit of with weapons using the water element.  '),
(8, 'Jade Barroth', 'Brute Wyvern', 0, 'Barroth', 'Known as Ice Crushing Wyverns, they cover themselves in snow for protection, in much the same way Barroth cover themselves in mud. The Jade Barroth\'s crown is also somewhat larger than its desert cousin. When a Jade Barroth charges against an enemy they can also make giant snowballs which will continue to roll onwards even after Barroth stopped charging'),
(9, 'Bulldrome', 'Fanged Beast', 0, 'Bullfango', 'Bulldromes have larger tusks than Bullfango, and a layer of white fur, as opposed to Bullfango\'s black fur. Bulldromes are more agile when running and proficient at finding and locking onto their victims. '),
(10, 'Deviljho', 'Brute Wyvern', 0, NULL, 'Deviljho is a very large, bipedal Brute Wyvern characterized by its uniform forest green coloration and muscular upper body. Its thick hide is littered with short, jagged spines that reach a maximum height along the back and tail. Deviljho has a narrow snout with a large lower jaw, covered in multiple rows of teeth spreading outwards from the mouth. It has massive, powerful hind legs, but tiny, poorly developed forelegs that it rarely utilizes. When enraged, Deviljho\'s back and shoulder muscles swell considerably, revealing scars. During this period, areas of its skin will take on a bright red coloration. '),
(11, 'Diablos', 'Flying Wyvern', 0, 'Black Diablos', 'Diablos are large, bipedal wyverns with powerful armor plating covering much of their body. Their most noteworthy feature is a pair of massive, solid bull-like horns above their red eyes. Diablos also possess a pair of tusk-like fangs and a large, spiny neck frill. Their tail ends with a heavy, studded club that can be used to ward off attackers. Diablos stand on a pair of stocky, wide-set legs and possess a broad upper body complete with thick, muscular wings. '),
(12, 'Black Diablos', 'Flying Wyvern', 0, 'Diablos', 'The designation as a subspecies is somewhat of a misnomer, as Black Diablos are simply female Diablos in heat. Their shell turns black during mating season to warn other monsters of their heightened aggression and hostility. It is not possible for a Black Diablos to be male. Black Diablos mate by brutally butting heads with a male Diablos, when it loses the male Diablos is able to mate with the female.'),
(13, 'Duramboros', 'Brute Wyvern', 0, NULL, 'Duramboros is a bulky, heavyset, bovine monster with stocky, muscular legs and a thick upper body. It features a very thick outer hide that is riddled with heavy folds, with a row of armored plates running along its back and tail. Duramboros\' most distinctive features include its massive tail club, twin brow horns, and a pair of energy-rich dorsal humps. Duramboros\' slow lifestyle often results in a layer of moss and algae growing upon its hide, most noticeably along the back. When attacked, Duramboros will spin in circles eventually using its tail as an counterweight and throw themselves high into the air, aiming to land on their enemies. '),
(14, 'Gigginox', 'Flying Wyvern', 0, 'Giggi, Baleful Gigginox', 'Gigginox is a blind, cave-dwelling wyvern. Eventhough Gigginox is blind it has a special organ that can detect the body heat of its prey.\r\n\r\nGigginox is wide and flat, making it notably more agile than, being able to flip around without difficulty. Gigginox uses all four limbs plus its tail to propel itself onto cave walls and ceilings\r\n\r\nGigginox has an elastic neck and tail, which can stretch out to twice their length in an attempt to attack prey. Their top skin is grey-white, and their under-skin is dark red. When enraged, the top color of a Gigginox will change to a darker grey and almost black hue. Their head, tail and chest marks are white but have eye-like sections that glow purple when inside dark areas; these markings can be broken. Gigginox has a circular, leech-like maw, which contains many sharp teeth. '),
(15, 'Baleful Gigginox', 'Flying Wyvern', 0, 'Giggi, Gigginox', 'Baleful Gigginox has a golden color on the top and a dark bruise-black color on its underside. Its heat-sensing organs glow green as oppossed to the normal Gigginox\'s purple. Instead of having its normal poison attacks, Baleful Gigginox primarily uses attack which can enemies to paralyze being much more of a threat. '),
(16, 'Great Baggi', 'Bird Wyvern', 0, 'Baggi', 'Great Baggi are matured male Baggi that have taken over a pack of their own. Great Baggi is also slightly larger than the Great Jaggi.\r\n\r\nLocated on its head is a crest that can be obtained in a way similar to Great Jaggi\'s frill. When hunting it shoots out a sleep induced substance, subduing their prey. '),
(17, 'Great Jaggi', 'Bird Wyvern', 0, 'Jaggi, Jaggia', 'Great Jaggi\'s distinctive feature is its frill and the lavender scales, but also the furs that grow on its neck and along the back down to the middle tip of the tail.\r\nGreat Jaggi\'s muzzle are particularly thinner and much more wrinkly than the other Bird Wyverns. While the tail has some barbs on each sides, they are notably blunt and definable even used for its tail whip attacks. '),
(18, 'Great Wroggi', 'Bird Wyvern', 0, 'Wroggi', 'The Great Wroggi has a slick salamander-like skin and like its close relatives the Great Jaggi and Great Baggi the Great Wroggi are usually accompanied by a group of their smaller kin - in this case, Wroggi. Whilst the Great Baggi uses a sleep induced attack, the Great Wroggi can spit a noxious gas that poisons their prey.'),
(19, 'Lagombi', 'Fanged Beast', 0, NULL, 'Lagombi resembles closely to an Arzuros. Its ears are long and highly sensitive, and its face features a beak-like mouth along with small red eyes. Lagombi\'s belly is made of a low-friction material and is shaped so that it can slide upon the ice like a sled. It is covered in a thick fur coat to keep it warm in its sub-zero homeland. '),
(20, 'Nargacuga', 'Flying Wyvern', 0, 'Green Nargacuga', 'Nargacuga has black scales, black fur and nightmarish red eyes, giving it the look and style of a predatory black panther. Its dark, feral appearance suggests that it may mainly be a nocturnal predator. When it\'s in Rage Mode, its eyes glow bright red and leave a trail of reddish lines when Nargacuga moves. Also, its tail erects large spikes which can be flung and linked up with its attacks for devastating hits. Their vertebrae and tail muscles are extremely flexible. Its tail is also its most powerful weapon. The scales at the end of the tail can also be shot out with a lot of force.'),
(21, 'Green Nargacuga', 'Flying Wyvern', 0, 'Nargacuga', 'Although the Green Nargacuga is very fast and agile like the common Nargacuga, it is capable of more advanced movements and attacks. While it has many of the same abilities as the common Nargacuga, its true ferocity becomes apparent when it\'s enraged. It can perform a tail slam, then jump and smash again in an attempt to hit the hunter. Like the regular smash, it leaves it vulnerable while it tries to pry its tail free. Its tail slam is guaranteed to stun a hunter if it connects, making it particularly dangerous. '),
(22, 'Nibelsnarf', 'Leviathan', 0, NULL, 'Nibelsnarf are capable of burrowing into the sand and of disguising themselves as sand dunes to ambush prey. You can see if a sand dune is a disguised Nibelsnarf if it blows out 2 small patches of sand from the ground every 2 seconds.\r\n\r\nNibelsnarf can swim in the sand just like other Piscine Wyverns. The Nibelsnarf has a superficially salamander-like body structure, with a brightly coloured underbelly and a shark-like head lined with numerous razor-sharp teeth. It also has a flat body similar to a ray. They are seen preying on Rhenoplos and Apceros using their powerful jaws to crush their shells.'),
(23, 'Qurupeco', 'Bird Wyvern', 0, 'Crimson Qurupeco', 'The Qurupeco is a colorful bird wyvern with a large snout and leathery wings. It is mainly lime green with some scales being tinted yellow, it also has a clump of iridescent purple feathers on its back between its shoulders. The Qurupeco\'s snout stretches over the top of its head and when calling opens out into the shape of a megaphone, amplifying its calls. Its most notable feature however is its bright red vocal sac which inflates when calling. '),
(24, 'Crimson Qurupeco', 'Bird Wyvern', 0, 'Qurupeco', 'Unlike the normal variety, this subspecies is red and blue in color. It also houses itself more in a hotter climate like the Volcano. The flints on its wings also cause shock instead of flame, it is also able to induce a flash, blinding all who are in range.'),
(25, 'Rathalos', 'Flying Wyvern', 0, 'Silver Rathalos, Rathian, Gold Rathian', 'Rathalos are large, bipedal wyverns with a spiny, armored hide covering their body. Their outer shell features much brighter and more vibrant colors than that of their female counterpart, the Rathian. It is primarily bright red, with black markings throughout. Like the Rathian, Rathalos possess a flame sac which is used to produce deadly flaming projectiles from the mouth. The talons upon their feet are highly poisonous and are known to inflict toxic mortal wounds on larger prey. In addition, their long, thick tail features a heavy spiked club at the end. Rathalos\' wing membranes feature ornate patterns which are likely used to attract potential mates. '),
(26, 'Silver Rathalos', 'Flying Wyvern', 0, 'Rathalos, Rathian, Gold Rathian', 'This Rare Species features a shining silver and much tougher carapace with black markings along the spine. He is also slightly larger than the average Rathalos. Silver Rathalos is also much more agile and has a stronger venom potent in its talons '),
(27, 'Rathian', 'Flying Wyvern', 0, 'Gold Rathian, Rathalos, Silver Rathalos', 'Rathian is a medium-sized flying wyvern similar in looks to her male counterpart, Rathalos. Her hide is a dull, muted green in contrast to the Rathalos\'s deep red, and her lower mandible features a long, protruding chin spike. Her upper back and wingtips are covered in a moss-like fur not seen on the Rathalos, and while her clubbed tail lacks bony spikes, it makes up for this with the presence of sharp and highly poisonous needles, which she can use to poison foes upon contact. '),
(28, 'Gold Rathian', 'Flying Wyvern', 0, 'Rathian, Rathalos, Silver Rathalos', 'Its body is covered in an exceptionally strong golden shell, making it difficult to attack without the Hunter\'s weapon bouncing off. It is also slightly larger than the average Rathian. Gold Rathian is also more agile in her movement and also houses a stronger venom potent in her tail.'),
(29, 'Royal Ludroth', 'Leviathan', 0, 'Ludroth, Purple Ludroth', 'It has a crown-like crest composed of several finger-like appendages tipped with black spikes as well as a large, spongey yellow mane. The Royal Ludroth has a long, serpentine body with four squat limbs. Its hind pair of legs are shaped like paddles for swimming, and its foremost pair are more muscular, tipped with developed digits ending in long black claws. Its jaws are lined with shear-like plates in the place of teeth. '),
(30, 'Purple Ludroth', 'Leviathan', 0, 'Ludroth, Royal Ludroth', 'The Purple Ludroth is almost identical to the Royal Ludroth with the only difference being the coloring on its body, being a more pinkish color instead of yellow. The reason behind this color change is because of the poison stored in its body, giving it a pink hue.'),
(31, 'Tigrex', 'Flying Wyvern', 0, 'Brute Tigrex', 'Tigrex is a large, quadrupedal wyvern characterized by its massive head and jaws, powerful limbs and striking yellow/blue striped coloration. The top of its head is tipped with a pair of horn-like ears, and its segmented tail ends with a spiny protrusion. Tigrex are mostly seen in the mountains feeding on Popo, but can make any locale its home if it has an abundant of prey.'),
(32, 'Brute Tigrex', 'Flying Wyvern', 0, 'Tigrex', 'Brute Tigrex features a darker, more muted color palette of various shades of grey, brown, and beige. It apparently possesses a more robust set of lungs than the common species, as evidenced by its increased roaring capacity. It has a more powerful set of forelimbs, and has adapted to live in harsher environments than any other variety of Tigrex. '),
(33, 'Ukanlos', 'Flying Wyvern', 0, 'Akantor', 'Ukanlos closely resembles Akantor in body structure and possesses the same quadrupedal gait. It has a silvery-white carapace which features a row of large, jagged fins along its back. It has a small, compact face which features glowing yellow eyes, sharp teeth, and a massive, shovel-like chin.\r\n\r\nLike Akantor, Ukanlos is only a Flying Wyvern in terms of its evolutionary history; its wings have completely disappeared and thus it is incapable of flight. '),
(34, 'Uragaan', 'Brute Wyvern', 0, 'Steel Uragaan', 'Uragaan is covered in a lustrous gold-colored hide. Its back is lined with hard crystals and its chin is plated with a rock-like shell, suggesting the Uragaan has evolved a tough exterior due to life in volcanic regions. Its underbelly is covered in a sticky, tar-like substance which it uses to affix explosive rocks to itself. '),
(35, 'Steel Uragaan', 'Brute Wyvern', 0, 'Uragaan', 'This variant appears to have a hide of a deep metallic blue, rather than the golden hide of the common species. It is speculated that this altered coloration is due to the monster feeding on different types of ores. '),
(36, 'Volvidon', 'Fanged Beast', 0, NULL, 'Volvidon is a medium-sized monster, slightly larger than an Aptonoth. It is covered in a series of red armor plates, which are segmented around the midsection and allow the Volvidon to curl into a ball. It possesses an extremely long, chameleon-like tongue which is covered in sticky saliva. It is also able to spray out a horrible smelling substance preventing hunters from using items.'),
(37, 'Zinogre', 'Fanged Wyvern', 0, NULL, 'Zinogre is a quadrupedal monster with superficially lupine features. It has highly developed limbs, sharp fangs and claws. Its body is covered in turquoise scales, whitish fur, and tan bony spikes, and it has two prominent horns. Closer observation of its horns and the spikes on its back reveal that they are porous, presumably for hosting Thunderbugs when the monster charges itself.\r\n\r\nWhen charged with electricity, the spikes on its back and its fur will stick up, and many of the bony and furred parts of its body will start to glow bright blue. '),
(38, 'Alatreon', 'Elder Dragon', 0, NULL, 'Alatreon is a large quadrupedal dragon completely covered in backwards-facing, razor-sharp black scales, along with a more prominent spiked crest on its chest. It has large wings, a muscular tail, a beaklike mouth, and two large, serrated horns on its head, which are essential for its control over all the elements. Depending on which elements it is actively using, Alatreon\'s scales may glow in different colors. '),
(39, 'Amatsu', 'Elder Dragon', 0, NULL, 'Amatsu has a unique body structure similar to that of a Leviathan. Its head itself is quite small, though it is adorned with massive golden horns, flanked by tendrils of flesh. Amatsu\'s body is largely pale white in color, and covered entirely in fins that stretch along all four limbs. From its back rise more pointed fins, whereas its underside is grey and scaled.\r\n\r\nBecause it flies through the air and spends no time on land, Amatsu has almost vestigial feet and small, nearly useless back legs. The front legs are bordered by more white fins. Able to summon storms at will, Amatsu is looked to as the embodiment of heaven which granted it its nickname: Heaven\'s Catastrophe.'),
(40, 'Jhen Mohran', 'Elder Dragon', 0, NULL, 'Jhen Mohran is an extremely large monster, with a long, almost serpentine body shape. On each side of its head are sturdy, sharp-ended tusks which it uses to dig in the sand. Due to its back legs being vestigial, it moves either by dragging its enormous body along with its arms on the ground or by swimming in the sand. A rocky spine runs along its back, where valuable minerals can be found.'),
(41, 'Altaroth', 'Neopteron', 1, '', 'Insects that widely inhabit many areas. They absorb fruit, mushrooms, and honey, and then carry them back to their nest. Materials can thus be collected from their swollen abdomens, whose color is related to what they\'re carrying. '),
(42, 'Anteka', 'Herbivore', 1, '', 'Anteka is commonly perceived as the snowy region\'s counterpart to the Kelbi of the forest and jungle regions. They have fluffy bodies, along with a fluffy tail. This fur starts white around the hoofs, before turning to a light brown, and back to white along the back and head. They have gold eyes with pupils that are slitted horizontally like a goat. They walk on four hoofed feet and sports a large, impressive pair of antlers upon their heads. Curiously, Anteka have little tufts of fur around their maw that create what looks like white fluffy mustaches. '),
(43, 'Aptonoth', 'Herbivore', 1, NULL, 'Aptonoth are cow-like creatures with leathery gray skin. They have black stripes along their backs and a head and have a large crest protruding from their heads and a flat, spiked tail. The males are larger in size and have four horns upon their crest, while the females are smaller and only have two horns on their crest.'),
(44, 'Baggi', 'Bird Wyvern', 1, 'Great Baggi', 'The smaller counterpart to The Great Baggi. Their hide is primarily blue, with a grayish underbelly and a streak of yellow between. Patches of black fur can be found on the back of the head, above the shoulders, and especially the tail.'),
(45, 'Bnahabra', 'Neopteron', 1, NULL, 'Bnahabra are pervasive flying insects that attack invaders with paralyzing venom and lay eggs in carrion along with a fluid that hastens decomposition. There are various subspecies of the Bnahabra which vary between the regions, each with distinctly colored wings. Bnahabra are often seen attached to the sides of the walls seemingly lifeless, until a hunter is close enough - then they fly away or attack. '),
(46, 'Bullfango', 'Fanged Beast', 1, 'Bulldrome', 'The small counterpart of the Bulldrome, Bullfango are small boar-like creatures that are highly territorial and seem to attack anything that sets foot in their territory. they have been known to form large herds. They are so aggressive that they will attack other members of their own herd if they don\'t recognize them. Those without a particular reason to hunt them are better off keeping their distance.'),
(47, 'Delex', 'Piscine Wyvern', 1, NULL, 'The Delex like most desert dwelling Piscine Wyverns have the ability to swim through sand and even expel small sand blasts from their mouth at attackers. Due to their nimbleness they are difficult to hit with slower weapons. During sieges against Jhen Mohran Delex\'s often jump onto the boat and start attacking Hunters that get in their way. Delex hunt in small groups of six or seven individuals and likely prey upon small animals. They also scavenge off the remains left by larger desert-dwelling monsters.'),
(48, 'Felyne', 'Lynian', 1, 'Melynx', 'Bipedal creatures resembling cats, known for their light hair. Though usually docile, they will attack viciously if provoked. Naturally curious, some try to enter human society, and are often hired by the Guild to cook for and otherwise assist hunters.'),
(49, 'Gargwa', 'Bird Wyvern', 1, NULL, 'Gargwa have very small, likely vestigial wings. Like most species of Herbivore, they\'re normally docile creatures, but will attack and flee when they\'re threatened and when they flee will usually leave an egg or guano. They coexist with the people of Yukumo village as livestock, but they have been known to attack Hunters from time to time.\r\n\r\n\r\n'),
(50, 'Giggi', 'Flying Wyvern', 1, 'Gigginox, Baleful Gigginox', 'Spawning from large organic globules called \"Giggi Sacs\" whithin dark caves, Giggi are relatively featureless. They have grey bodies with purple markings, small stubby arms, and round mouths with small though sharp teeth used to drain their victims bodily fluids. '),
(51, 'Jaggi', 'Bird Wyvern', 1, 'Jaggia, Great Jaggi', 'The smaller counterpart of The Great Jaggi, Jaggi are highly social, carnivorous bird wyverns found in large packs. Young Jaggi males hunt in groups, attacking much larger animals. They are also smaller then the female Jaggia.'),
(52, 'Jaggia', 'Bird Wyvern', 1, 'Jaggi, Great Jaggi', 'Jaggia are the females of the Jaggi species. They are noticeably larger and bulkier than the immature males, and are mostly a blue-purple in hue, the exceptions being orange areas along their limbs and the sides of their necks and cream-colored underbellies. Their tails, unlike males of the species, have no barbs, and instead have a soft feather-like hanging accent near their ends. Their frills, located behind their jaws, are also more subdued than in other Jaggi variations, and hang limply. '),
(53, 'Kelbi', 'Herbivore', 1, NULL, 'Kelbi are small herbivores known for their gentle demeanor as well as medicinal properties of their horns. They are often seen in small groups and flee when large monsters are present or when attacked.'),
(54, 'Ludroth', 'Leviathan', 1, 'Royal Ludroth, Purple Ludroth', 'The small counterpart of The Royal Ludroth, Ludroth are mostly yellow-green in coloration, with long, sinewy bodies that enable swift and sweeping underwater movements to confuse their prey. Their claws are stubby, but effective, their strong tails end in reinforced bony segments, and their powerful jaws grant then moderately strong bites. '),
(55, 'Melynx', 'Lynian', 1, 'Felyne', 'Bipedal creatures resembling cats, known for their dark hair. More curious than Felynes and possessed by kleptomania, Melynxes take what they steal back to their dens.'),
(56, 'Popo', 'Herbivore', 1, NULL, 'Popo\'s are large herbivores and are covered in long and fluffy fur to protect them from the cold. The fur is a dark brown in color with a lighter cream color along the top of their bodies. This fur also covers their eyes, preventing them from ever been seen and they have long droopy ears. Both male and female Popo have two large tusks that protrude from their faces and curl up slightly at the end. Male Popo are larger than females in size and they have larger tusks. '),
(57, 'Rhenoplos', 'Herbivore', 1, NULL, 'Rhenoplos are extremely territorial herbivores with poor vision but acute hearing. Rhenoplos will doggedly pursue any nearby targets they sense. They often collide into boulders, perhaps because they can\'t easily stop themselves once they begin running.'),
(58, 'Slagtoth', 'Herbivore', 1, NULL, 'Slagtoth are large herbivores that reside in places featuring bodies of water and are usually docile until provoked. When provoked, Slagtoth\'s will attack wyvern and hunter alike, slamming their noses or even their entire body upon their enemies. Slagtoth have saggy hide covering their boddy folding mostly over their backs. Slagtoth are also known for secreting an highly sought after oil. '),
(59, 'Uroktor', 'Leviathan', 1, 'Agnaktor', 'The small counterpart to The Agnaktor, Uruktor\'s also have the remarkable ability to tunnel through solid volcanic rock. Uroktor are distinguished by their reddish-purple skin, which protects them from both the sweltering heat and volcanic predators. '),
(60, 'Wroggi', 'Bird Wyvern', 1, 'Great Wroggi', 'Small counterparts to The Great Wroggi, Wroggi\'s are small, carnivorous bird wyverns with poison-generating organs that run from their mouths to their throats. They run in packs, often led by a large alpha male. Lesser members of the order are fiercely loyal, and will eagerly lay down their lives to protect the alpha.');

-- --------------------------------------------------------

--
-- Table structure for table `weapons`
--

CREATE TABLE `weapons` (
  `id` mediumint(9) NOT NULL,
  `name` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `description` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `weapons`
--

INSERT INTO `weapons` (`id`, `name`, `type`, `description`) VALUES
(1, 'Sword And Shield', 'Cutting, Blunt', 'A small versatile weapon being able to do both cut damage with small the sword and blunt damage with the shield, it also has the ability to use items whilst unsheathed. Having a small moveset and having the ability to block makes this weapon a great choice for beginners.'),
(2, 'Dual Blades', 'Cutting', 'A very versatile weapons using two blades in a dance like motion. This weapon doesn\'t do the greatest damage but the speed at which it does it makes up for it, being able to enter a demon mode and becoming even faster but draining your stamina.'),
(3, 'Long Sword', 'Cutting', 'The Long Sword uses fluid attacks to fill up its Spirit gauge, which it then can unleash in a flury of attacks finishing it off with giant roundslash. When the roundslash hits an enemy it\'ll add a white bar around the gauge bar. This can be increased to red gauge which causes maximum damage until it depletes to yellow gauge.  '),
(4, 'Great Sword', 'Cutting', 'The Greatsword is a weapon with little mobility, having slow movement speed and attacking at a slow rate. The Greatsword has a small moveset and makes it not a hard weapon to learn, but the difficult part comes at executing. Having to stand still and charge your Greatsword leaves you wide open for attacks, but the massive damage from the Greatsword can make up for it.'),
(5, 'Hammer', 'Blunt', 'Hammer is blunt weapon which mainly focuses on attack on the head to stun the monster and give it massive windows, it is a very versatile weapon but also a hard weapon, having to commit to long attack and having no other means of defense besides dodging.'),
(6, 'Hunting Horn', 'Blunt', 'Just like the Hammer, the Hunting Horn is a blunt weapon with the ability to play musical notes and turn those notes into songs that can boost stats of you and other hunters. The musical notes are embedded in different attacks, making it so you can attack the monster whilst playing the songs. It also has higher mobility then other blunt weapons.'),
(7, 'Lance', 'Cutting', 'With a shield that can block almost anything, The Lance is a very aggressive weapon focused on blocking attacks and consistently dealing damage to a monster. Also having the ability to be held at the ready and charge towards the enemy, dealing damage to anything that comes in its path.\r\n'),
(8, 'Gunlance', 'Cutting', 'Closely resembling the Lance, the Gunlance is far less mobile, because of its slow movement speed and loss of the ability to charge towards the enemy with it. The Gunlance does feature a barrel stretching the length of the lance which can fire explosive shells, even having attacks firing all shells at once. These shells do not travel a distance, really only exploding at point blank range.'),
(9, 'Switch Axe', 'Cutting', 'Switch Axe has the ability to switch between an Axe mode which is more mobile but lacks a fluid moveset and a Sword mode which is less mobile but has a more advanced and fluid moveset. The Switch axe uses a \"Switch gauge\" to be able to switch between the two modes, and builds up an amped gauge which can be released in an explosion.'),
(10, 'Light Bowgun', 'Shot', 'Being more mobile than the Heavy Bowgun, the Light Bowgun receives more recoil and is unable to block. The Light Bowgun can also not be used to rapidly fire ammunition, it can be used to plant land mines in the ground that detonate when shot or otherwise hit.'),
(11, 'Heavy Bowgun', 'Shot', 'The Heavy Bowgun is a medium to far range weapon firing different kinds of ammunition ranging from: Spread, Pierce and ammunition with different status ailments. The Heavy Bowgun also features an ability to rapidly fire ammo in a machine gun fashion. The Heavy Bowgun has a limited ability to guard against incoming damage, mitigating some of it\'s lack of mobility.\r\n'),
(12, 'Bow', 'Shot, Cutting, Blunt', 'A ranged weapon focused on mobility, the bow excels at dealing reliable damage from mid range. The ability to deal all three main damage types as well as significant elemental and status damage make the bow a highly versatile weapon. The complexity and fragility of the bow as well as its dependance on matchup-specific loadouts make it difficult to learn, but very powerful in the hands of an experienced player.');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `locales`
--
ALTER TABLE `locales`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `monsters`
--
ALTER TABLE `monsters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `weapons`
--
ALTER TABLE `weapons`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `locales`
--
ALTER TABLE `locales`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `monsters`
--
ALTER TABLE `monsters`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `weapons`
--
ALTER TABLE `weapons`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
