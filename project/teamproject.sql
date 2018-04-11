-- phpMyAdmin SQL Dump
-- version 4.7.8
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le :  mar. 10 avr. 2018 à 23:06
-- Version du serveur :  5.5.57-0ubuntu0.14.04.1
-- Version de PHP :  5.5.9-1ubuntu4.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `teamproject`
--

-- --------------------------------------------------------

--
-- Structure de la table `category`
--

CREATE TABLE `category` (
  `catId` int(11) NOT NULL,
  `catName` varchar(25) NOT NULL,
  `catDescription` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `category`
--

INSERT INTO `category` (`catId`, `catName`, `catDescription`) VALUES
(1, 'Console', 'Games intended for: Xbox One, PS4, PS3, Xbox One , Nintendo 64, Nintendo Wii'),
(2, 'Computer', 'Games intended for: PC'),
(3, 'Handheld', 'Games intended for: Nintendo Switch, Nintendo DS, and Gameboy');

-- --------------------------------------------------------

--
-- Structure de la table `platform`
--

CREATE TABLE `platform` (
  `platformId` int(11) NOT NULL,
  `platformName` varchar(25) NOT NULL,
  `catId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `platform`
--

INSERT INTO `platform` (`platformId`, `platformName`, `catId`) VALUES
(1, 'Xbox One', 1),
(2, 'Playstation 4', 1),
(3, 'Nintendo Switch', 3),
(4, 'Xbox 360', 1),
(5, 'PC', 2),
(6, 'Nintendo Wii', 1),
(7, 'Playstation 3', 1),
(8, 'Nintendo 64', 3),
(9, 'Gameboy', 3),
(10, 'Nintendo DS', 3);

-- --------------------------------------------------------

--
-- Structure de la table `product`
--

CREATE TABLE `product` (
  `productId` int(11) NOT NULL,
  `productName` varchar(25) NOT NULL,
  `productDescription` varchar(500) NOT NULL,
  `productImage` varchar(500) NOT NULL,
  `price` float NOT NULL,
  `platformId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `product`
--

INSERT INTO `product` (`productId`, `productName`, `productDescription`, `productImage`, `price`, `platformId`) VALUES
(1, 'Battlefield 1', 'the Great War, WW1, where new technology and worldwide conflict changed the face of warfare forever.', 'https://i5.walmartimages.com/asr/cf099b68-83a0-4ddb-a1cd-3243febfc805_1.c6f5ecb7bcc90b99c5ef272143e40927.jpeg?odnHeight=450&odnWidth=450&odnBg=FFFFFF', 17.99, 1),
(2, 'Overwatch', 'Overwatch is a team-based multiplayer first-person shooter video game developed and published by Blizzard Entertainment, which released on May 24, 2016', 'https://i5.walmartimages.com/asr/82ed3367-80c8-470b-bad0-a4a210429d7f_1.93e0853f24cd94d3623521a99cabbfe4.jpeg?odnHeight=450&odnWidth=450&odnBg=FFFFFF', 59.99, 1),
(3, 'Grand Theft Auto 5', 'V is an action-adventure video game developed by Rockstar North and published by Rockstar Games. It was released in September 2013', 'https://i5.walmartimages.com/asr/38fb15bb-b47f-4c8b-bb7e-51e545173d85_1.93d227e20c83af0c849ea747f49239b6.jpeg?odnHeight=450&odnWidth=450&odnBg=FFFFFF', 49.99, 1),
(4, 'Halo 5: Guardians', 'Halo is a military science fiction first-person shooter video game franchise created by Bungie and now managed and developed by 343 Industries, a subsidiary of Microsoft Studios', 'https://i5.walmartimages.com/asr/eca0a3f8-147d-4ef8-98c8-479b4fd55513_1.40cd41839f97044639c1ba9cc19b2ca6.jpeg?odnHeight=450&odnWidth=450&odnBg=FFFFFF', 39.99, 1),
(5, 'MLB: The Show', 'MLB The Show 18 is a baseball video game by SIE San Diego Studio and published by Sony Interactive Entertainment, based on Major League Baseball', 'https://i5.walmartimages.com/asr/1099f606-3a85-4faa-9d9f-afbc0118847d_1.3b3695240981bf2dc046dff2211358bf.jpeg?odnHeight=450&odnWidth=450&odnBg=FFFFFF', 59.99, 2),
(6, 'Bloodborne', 'Bloodborne is an action role-playing video game developed by FromSoftware and published by Sony Computer Entertainment for PlayStation 4. ', 'https://i5.walmartimages.com/asr/9f33b433-05e7-4b4c-85d1-cb056ca86721_1.6767865145f5b7eff8566a98c40a8cc8.jpeg?odnHeight=450&odnWidth=450&odnBg=FFFFFF', 59.99, 2),
(7, 'Street Fighter V', 'The legendary fighting franchise returns with Street Fighter® V: Arcade Edition! Powered by Unreal Engine 4 technology, stunning visuals depict the next generation of World Warriors in unprecedented detail, while exciting and accessible battle mechanics deliver endless fighting fun that both beginners and veterans. ', 'https://ll-us-i5.wal.co/asr/fc3749ee-0412-44e8-adae-b870cf54f3e8_1.88bb9469c55ab37b97a9981149c7c6d5.jpeg?odnHeight=450&odnWidth=450&odnBg=FFFFFF', 49.99, 2),
(8, 'Call of Duty WWII', 'Call of Duty® returns to its roots with Call of Duty®: WWII - a breathtaking experience that redefines World War II for a new gaming generation. Land in Normandy on D-Day and battle across Europe through iconic locations in history\'s most monumental war. Experience classic Call of Duty combat, the bonds of camaraderie, and the unforgiving nature of war against a global power throwing the world into tyranny.', 'https://i5.walmartimages.com/asr/a42d6aa7-ea95-4a58-9feb-903f24d7f917_1.28b762a7cfb500a94d217258b9a3350d.jpeg?odnHeight=450&odnWidth=450&odnBg=FFFFFF', 59.99, 2),
(9, 'Mario Kart 8 ', 'Hit the road with the definitive version of Mario Kart 8 and play anytime, anywhere! Race your friends or battle them in a revised battle mode on new and returning battle courses. Play locally in up to 4-player multiplayer in 1080p while playing in TV Mode. Every track from the Wii U version, including DLC, makes a glorious return. Plus, the Inklings appear as all-new guest characters, along with returning favorites, such as King Boo, Dry Bones, and Bowser Jr.!', 'https://i5.walmartimages.com/asr/d3f424ba-60ad-4d71-901c-5983142ded58_1.1bcd633e40e14ec7466c979f62a81b90.jpeg?odnHeight=450&odnWidth=450&odnBg=FFFFFF', 59.99, 3),
(10, 'Rocket League', 'Winner or nominee of more than 150 Game of the Year\' awards, Rocket League® is a high-powered hybrid of arcade soccer and driving with rewarding physics-based gameplay. Take to the pitch for a fully-featured offline season mode, multiple game types, casual and competitive online matches, and special \"Mutators\" that let you change the rules entirely.', 'https://i5.walmartimages.com/asr/75bae7b4-b78d-434f-805a-fb79fd71f0e3_1.9dfe071334bfd0482bb02f0650dfcd85.jpeg?odnHeight=450&odnWidth=450&odnBg=FFFFFF', 19.99, 3),
(11, 'Kirby Star Allies', 'When a new evil threatens Planet Popstar, Kirby will need a little help from his...enemies?! By making friends out of foes, up to three* players can drop in or out of the adventure at any time. With new and expanded copy abilities, classic Kirby action is deeper than ever: combine abilities with elements such as ice or fire to create new friend abilities!', 'https://i5.walmartimages.com/asr/506820f8-e83a-4f9e-9078-2f43f082bc44_1.65a217bc5309574bf21bcceee5377205.jpeg?odnHeight=450&odnWidth=450&odnBg=FFFFFF', 59.99, 3),
(12, 'Super Mario Odyssey', 'Odyssey is a love letter to that Nintendo 64 classic, with tips of the hat and references littered liberally throughout. It also brings back the look and play of Mario\'s first 8-bit adventure for a variety of wonderful challenges. ', 'https://i5.walmartimages.com/asr/c9cf2aad-e13d-4881-9549-ddd30a98da7c_2.5075bb57300785498ba53824bf0169f1.jpeg?odnHeight=450&odnWidth=450&odnBg=FFFFFF', 59.99, 3),
(13, 'Spyro Dawn of the Dragon ', 'Free from his imprisonment, the Dark Master unleashes his wrath upon the world, determined to bring forth a new age of darkness. As evil spreads over the world like a plague, Spyro must discover abilities beyond that of the elements and unlock the true power of the purple dragon within him if he is to stop the Dark Master and fulfill his destiny.', 'https://ssli.ebayimg.com/images/g/fB4AAOSwLgNaanfD/s-l640.jpg', 44.99, 4),
(14, 'Call of Duty 4', 'As both a United States Marine and British S.A.S. soldier fighting through an unfolding story full of twists and turns, players use sophisticated technology, superior firepower and coordinated land and air strikes on a battlefield where speed, accuracy and communication are essential to victory.', 'https://i.ebayimg.com/images/g/ls8AAOSwDZtZwgV1/s-l1600.jpg', 7.99, 4),
(15, 'Halo 3', 'The epic saga continues with Halo® 3, the hugely anticipated third chapter in the highly successful and critically acclaimed Halo franchise. Master Chief returns to finish the fight, bringing the epic conflict between the Covenant, the Flood, and the entire human race to a dramatic, pulse-pounding climax. ', 'https://i.ebayimg.com/images/g/uwkAAOSwgmJXyDgL/s-l500.jpg', 7.99, 4),
(16, 'Stranglehold', 'Stranglehold allows gamers to play a John Woodirected action blockbuster movie. dual-wielding,stunt-laden gunplay combined with massive destructible environments ensures that Stranglehold will be a true tour-de-force. The environmental interactivity and two-fisted gunplay all come online, bringing the experience to a whole new level. ', 'https://i.ebayimg.com/images/g/ReIAAOSwqGNatepi/s-l500.jpg', 12.99, 4),
(17, 'Far Cry 5', 'Though settings change, new villians challenge your mortality, and Ubisoft continues to introduce new innovations, over the past several entries Ubisoft Montreal has settled into a predictable (and fun) rhthym with the main Far Cry entries. You climb a radio tower to reveal locations, take down a series of enemy outposts, and hunt animals to gather raw materials for crafting in between story missions.', 'https://i.ebayimg.com/images/g/5uMAAOSw8mRaxBd7/s-l500.jpg', 59.99, 5),
(18, 'PUBG', 'PlayerUnknown\'s Battlegrounds (PUBG) is a multiplayer online battle royale game developed and published by PUBG Corporation, a subsidiary of publisher Bluehole. ... The available safe area of the game\'s map decreases in size over time, directing surviving players into tighter areas to force encounters.', 'https://i.ebayimg.com/images/g/5JwAAOSwRc1alCqn/s-l500.jpg', 29.99, 5),
(19, 'Overwatch Origins  ', 'As the clock winds down to zero, you backtrack in time to drop a perfect pulse bomb on the enemy position, blowing apart the greedy robot-turned-turret and his teammate, a slick sniper assassin who was too busy tracking her prey to notice your explosive gift. The game heads into overtime as the payload wagon rests mere inches away from the victory point, but your team has just been annihilated by an enormous magical dragon. Then you hear it: \"Heroes never die!\"', 'https://i.ebayimg.com/00/s/MjY2WDIwMg==/z/kfsAAOSwsFpWTOpA/$_32.JPG?set_id=89040003C1', 59.99, 5),
(20, 'South Park Stick of Truth', 'For a thousand years, the battle has been waged. The sole reason humans and elves are locked in a neverending war: The Stick of Truth. But the tides of war are soon to change as word of a new kid spreads throughout the land, his coming fortold by the stars. As the moving vans of prophecy drive away, your adventure begins.', 'https://cokem-cart.com/content/ebay/008888349051.jpg', 29.99, 5),
(21, 'Mario Party 10', 'Bowser crashes the latest Mario Party, the first installment of the series on the Wii U console. In the new Bowser Party Mini-games, play as Bowser himself and face off against up to four others playing as Mario and friends. Control Bowser using the buttons, motion controls and touch screen of the Wii U GamePad controller in different ways, and wreak havoc as Bowser in each mini-game while the other players strive to survive.', 'https://i.ebayimg.com/images/g/XykAAOSw-4RaVkfh/s-l500.jpg', 29.99, 6),
(22, 'Super Smash Bros', 'Mario! Link! Samus! Pikachu! All of your favorite Nintendo characters are back, along with plenty of new faces, in Super Smash Bros. for Wii U, the next entry in the beloved Super Smash Bros. series. Up to four players can battle each other locally or online across beautifully designed stages inspired by classic Nintendo home console games. With a variety of control options and amiibo compatibility, the timeless Super Smash Bros. battles come alive.', 'https://i.ebayimg.com/00/s/NDAwWDQwMA==/z/wEAAAOSwezVW0vAt/$_35.JPG?set_id=89040003C1', 34.99, 6),
(23, 'Mario Kart 8', 'Feel the rush as your kart rockets across the ceiling! Race upside-down and along walls on anti-gravity tracks in the most action-fueled Mario Kart game yet! Take on racers across the globe and share videos of your greatest moments via Mario Kart TV.', 'https://i.ebayimg.com/00/s/MjY2WDE2Mw==/z/jTAAAOSwSypZAJfm/$_32.JPG?set_id=89040003C1', 59.99, 6),
(24, 'Super Mario 3D World', 'Work together with your friends or compete for the crown in the first multiplayer 3D Mario game for the Wii U console. In the Super Mario 3D World game, players can choose to play as Mario, Luigi, Princess Peach or Toad.', 'https://i.ebayimg.com/images/g/XeAAAOSwmudaPVaX/s-l500.png', 18.99, 6),
(25, 'Red Dead Redemption', 'Red Dead Redemption is an open-world, third-person, action-adventure game set at the tail end of the American West West era. Action takes place in the first few years of the twentieth century and revolves around the choices that the protagonist, former outlaw John Marston, is forced to make due to his blemished past. The game features a morality system assigning honor and fame points generated through the player\'s choices.', 'https://cokem-cart.com/content/ebay/886162341720.jpg', 19, 7),
(26, 'Skate 3', 'The award winning SKATE franchise is back and rolling into new territory as SKATE 3 heads to the brand new city of Port Carverton. Get ready to team up and throw down as you build your own customized dream team to shred the streets, parks, and plazas and change the face of the city. New tricks, improved off-board actions, and gnarly Hall of Meat carnage mixed with exciting new team-based game modes take SKATE 3 to a new level of skateboarding fun.', 'https://i.ebayimg.com/images/g/zEgAAOSwF1dUOGHS/s-l500.jpg', 19.99, 7),
(29, 'Assassins Creed', 'Whether you\'re moving into a new apartment or fighting against the corruption of the Templar Order, it\'s always good to have help. Master Assassin Ezio enlists the aid of the Brotherhood, an order of assassins dedicated to toppling the corrupt Templar tyrants. In order to strike at the heart of their enemy, they must journey to Rome, the center of the Templar\'s power and greed.', 'https://i.ebayimg.com/00/s/MTE0N1gxMDAw/z/MnMAAOSwHMJYLahH/$_35.JPG?set_id=89040003C1', 19.99, 7),
(30, 'Skyrim', 'The next chapter in the highly anticipated Elder Scrolls saga arrives from the makers of the 2006 and 2008 Games of the Year, Bethesda Game Studios. Skyrim reimagines and revolutionizes the open-world fantasy epic, bringing to life a complete virtual world open for you to explore any way you choose.', 'https://i.ebayimg.com/images/g/vUMAAOSwwcRaVkEe/s-l500.jpg', 2.99, 7),
(31, 'Batman: Arkham City ', 'Batman: Arkham City builds upon the intense, atmospheric foundation ofBatman: Arkham Asylum, sending players soaring into Arkham City - five times larger than the game world in Batman: Arkham Asylum - and the new maximum security \"home\" for all of Gotham City\'s thugs, gangsters and insane criminal masterminds.', 'https://i.ebayimg.com/images/g/ACYAAOSwKfVXD1zL/s-l500.jpg', 19.99, 7),
(32, 'Mario Kart 64', 'Put the pedal to the metal in this worthy successor to the Super NES® classic, Super Mario Kart®. Mario Kart 64 boasts great graphics, tons of unique power-ups and a stunning 3-D version of the legendary Battle Mode. With improved courses and a revolutionary head-to-head four-player mode, Mario Kart 64 is sure to win the heart of any race-driving fan. The game includes 20 different courses filled with dips, valleys, jumps, tunnels and bridges.', 'https://encrypted-tbn3.gstatic.com/shopping?q=tbn:ANd9GcRzFfSKBuXblhUj2HZ0cRnxl49uvZf9UUsQhtTDjPyvR5bizLf_l0mxHEL06qWppYBdrlD1ImY&usqp=CAE', 59.99, 8),
(33, 'Golden Eye: 007', 'GoldenEye 007 is a first-person shooter video game developed by Rare and based on the 1995 James Bond film GoldenEye. It was released for the Nintendo 64 video game console in August 1997. ', 'https://encrypted-tbn2.gstatic.com/shopping?q=tbn:ANd9GcT68JcndI7Ek0auPDQI0o9w4ON-EC4sYb7vXr0w_SoCGQ1m49I5ZuUxjgg6ymKln3TxrYtPSyzy&usqp=CAE', 24.99, 8),
(34, 'Super Smash Bros', 'Choose from an all-star cast of Nintendo characters in a frantic melee to prove who will be the ultimate brawler. Utilize the easy to learn, but hard to master controls to battle it out in the single-player mode, earning point bonuses and unlocking hidden characters along the way, or enter VS Mode to take on up to three other players simultaneously.', 'https://encrypted-tbn2.gstatic.com/shopping?q=tbn:ANd9GcQp5it-ig8TPGUiEZ7wpMolQ1T8f4t2EvsXIb-3InC0nmLmm1MEJUGiwZhkDw&usqp=CAE', 59, 8),
(35, 'Donkey Kong', 'With his mechanical isle stuck off the shores of DK Island, K. Rool kidnaps the Kong family to distract Donkey Kong. It\'s up to our furry hero to rescue his friends, reclaim his Golden Bananas, and save his homeland from certain doom. Choose from five Kong members as you play solo in a quirky adventure or with friends in competitive battle arenas!', 'https://encrypted-tbn0.gstatic.com/shopping?q=tbn:ANd9GcQLcpiPsyqcd96IARJeUi-t-6WxY_ylNIY8s4c87I_IwzmIcLAlKrMWUhm7M1TVlPgj7lxmMGc&usqp=CAE', 19.99, 8),
(36, 'Pokemon: Red', 'You\'ve finally been granted your Pokemon trainer\'s license. Now, it\'s time to head out to become the world\'s greatest Pokemon trainer. It\'s going to take all you\'ve got to collect 150 Pokemon in this enormous world. Catch and train monsters like the shockingly-cute Pikachu. Face off against Blastoise\'s torrential water cannons. Stand strong when facing Pidgeot\'s stormy Gust. Trade with friends and watch your Pokemon evolve', 'https://encrypted-tbn3.gstatic.com/shopping?q=tbn:ANd9GcStJymuIOSm6GakwXjMp9_omCHB-X4vYUTa3tcqePfyd-7fPgE&usqp=CAE', 24.99, 9),
(37, 'Hamtaro', 'When a mean-spirited hamster named Spat starts squabbles among the rest of the hamsters, Hamtaro and Bijou set out to get friends to make up. As they mend fences, they get help from Harmony, an angelic hamster with a heart of gold. Along the way, they have to learn the secret hamster language known as Ham-Chat in order to solve problems and move on.', 'https://encrypted-tbn0.gstatic.com/shopping?q=tbn:ANd9GcSqbDsc7L-DPEpzxfc1bnev44VcwKNivE_RRnNB-cF53JSPnc-6XOZ_2g1hLtHhZyqRTnWlU7zn&usqp=CAE', 19.99, 9),
(38, 'Super Mario Land', 'Journey with Mario to a land of giant crabs, Koopa Troopas, flying stone heads and hungry sharks! Travel over land, in the air, and underwater. Mario makes his way through four treacherous worlds on his way to save the Princess!', 'https://encrypted-tbn0.gstatic.com/shopping?q=tbn:ANd9GcQ3c-xK4LAp0iGPY3TXysYyN7pahAaRHiNgKAlKlrZw8qROQG8pA0V-ytxvao4&usqp=CAE', 19.99, 9),
(39, 'The Legend of Zelda', 'Link\'s latest challenge is set on the mysterious Koholint, a place where dreams and reality collide. As a castaway, Link must find a way to escape from the island and return to his beloved homeland of Hyrule. This will not be an easy task. The island\'s inhabitants have no knowledge of the outside world. One creature, a talking owl, may know the solution to Link\'s dilemma.', 'https://encrypted-tbn0.gstatic.com/shopping?q=tbn:ANd9GcTtMK9GevltOd9sXoU1P5pUSiN8gZ9jb0mPHscV6qBFJ2g9liJMLiEcb5FdL3U8usBRzZy_AXE_&usqp=CAE', 19.99, 9),
(40, 'Pokemon LeafGreen', 'Pokémon technology will make its next quantum leap. We\'ve seen the future, and it\'s all about Pokémon FireRed and Pokémon LeafGreen. The new games are set in Kanto, the region where Pokémon first took root and exploded into a major phenomenon, and the latest titles stuff in tons of exciting new features. One thing\'s for certain: when Pokémon FireRed and LeafGreen get into Trainers\' hands, Pokémon fans stand to become the coolest, most connected gaming community in the world.', 'https://images-na.ssl-images-amazon.com/images/I/61MV7BBP1EL._AC_US218_.jpg', 19.99, 9),
(41, 'Nintendogs (Chihuahua) ', 'Put a puppy inside your Nintendo DS! Described as a \"puppy simulator\", this innovative new title gives you a small amount of money to purchase your own puppy...and from there, the sky\'s the limit! Using the Nintendo DS\'s built-in microphone, you can name your dog, and then teach him tricks! Nintendogs also makes heavy use of the DS Touch Screen. Use the stylus to pet your dog, rub him on the belly, or touch his nose!', 'https://images-na.ssl-images-amazon.com/images/I/51Oo6KinRbL._AC_US218_.jpg', 14.99, 10),
(42, 'Detective Pikachu', 'Tim is searching for his missing father in Ryme City, but instead encounters a witty, tough-talking Pikachu! Along the way, experience over 150 fun-filled animated cutscenes starring this unique Pikachu, providing helpful hints or talking up a storm. You can also tap the extra-large Detective Pikachu amiibo figure to access all cutscenes up until the current chapter played. ', 'https://images-na.ssl-images-amazon.com/images/I/51dekd5BfFL._AC_US218_.jpg', 39.99, 10),
(43, 'Pokemon Ultra Moon', 'A new light shines on the Alola region! Take on the role of a Pokémon Trainer and unravel the mystery of the Legendary Pokémon Necrozma\'s new forms: Dusk Mane Necrozma in the Pokémon Ultra Sun game and Dawn Wings Necrozma in the Pokémon Ultra Moon game. You can encounter and battle 400+ Pokémon, including new forms. A brand-new showdown awaits!', 'https://images-na.ssl-images-amazon.com/images/I/61noguqlIPL._AC_US218_.jpg', 39.99, 10),
(44, 'Super Mario 3D Land', 'Past Mario games have let the blue-suspendered hero roam around fully rendered 3D landscapes. Now, for the first time, players can see true depth of their environment without the need for special glasses. Super Mario is a 3D evolution of classic Mario platforming featuring new level designs and challenges.', 'https://images-na.ssl-images-amazon.com/images/I/61h7a2VxgrL._AC_US218_.jpg', 18.99, 10),
(45, 'Spyro Reignited Trilogy', 'The original roast master is back! Same sick burns, same smoldering attitude, now all scaled up in stunning HD. Spyro is bringing the heat like never before in the Spyro Reignited Trilogy game collection. Rekindle the fire with the original three games, Spyro the Dragon, Spyro 2: Ripto\'s Rage! and Spyro: Year of the Dragon. ', 'https://images-na.ssl-images-amazon.com/images/I/81YA3Mo2hWL._AC_SR201,266_.jpg', 39.99, 2),
(46, 'Dragon Quest XI', 'Dragon Quest XI: Echoes of an Elusive Age tells a captivating tale of a hunted hero and is the long-awaited role-playing game from series creator Yuji Horii and character designer Akira Toriyama. ', 'https://images-na.ssl-images-amazon.com/images/I/71WL00VpsbL._AC_SX215_.jpg', 59.99, 2);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`catId`);

--
-- Index pour la table `platform`
--
ALTER TABLE `platform`
  ADD PRIMARY KEY (`platformId`);

--
-- Index pour la table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`productId`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `category`
--
ALTER TABLE `category`
  MODIFY `catId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `platform`
--
ALTER TABLE `platform`
  MODIFY `platformId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `product`
--
ALTER TABLE `product`
  MODIFY `productId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
