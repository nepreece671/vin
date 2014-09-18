# CocoaMySQL dump
# Version 0.7b3
# http://cocoamysql.sourceforge.net
#
# Host: localhost (MySQL 5.1.39)
# Database: cddev
# Generation Time: 2011-10-26 11:08:17 -0700
# ************************************************************

# Dump of table carts
# ------------------------------------------------------------

CREATE TABLE `carts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

INSERT INTO `carts` (`id`,`created_at`,`updated_at`) VALUES ('1','2011-10-19 20:22:09','2011-10-19 20:22:09');
INSERT INTO `carts` (`id`,`created_at`,`updated_at`) VALUES ('2','2011-10-26 17:12:58','2011-10-26 17:12:58');


# Dump of table line_items
# ------------------------------------------------------------

CREATE TABLE `line_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) DEFAULT NULL,
  `cart_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `quantity` int(11) DEFAULT '1',
  `price` decimal(10,0) DEFAULT NULL,
  `order_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



# Dump of table orders
# ------------------------------------------------------------

CREATE TABLE `orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `address` text,
  `email` varchar(255) DEFAULT NULL,
  `pay_type` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



# Dump of table products
# ------------------------------------------------------------

CREATE TABLE `products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `typo` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `artist` varchar(255) DEFAULT NULL,
  `description` text,
  `image_url` varchar(255) DEFAULT NULL,
  `price` decimal(8,2) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=72 DEFAULT CHARSET=latin1;

INSERT INTO `products` (`id`,`typo`,`title`,`artist`,`description`,`image_url`,`price`,`created_at`,`updated_at`) VALUES ('1','audio-CD','Stanley Road','Paul Weller',NULL,'Stanley_Road.jpg','31322E3132',NULL,NULL);
INSERT INTO `products` (`id`,`typo`,`title`,`artist`,`description`,`image_url`,`price`,`created_at`,`updated_at`) VALUES ('2','audio-CD','Reunion','Righteous Brothers',NULL,NULL,'31312E3131',NULL,NULL);
INSERT INTO `products` (`id`,`typo`,`title`,`artist`,`description`,`image_url`,`price`,`created_at`,`updated_at`) VALUES ('3','audio-CD','Songs Without Words, Vol. 4, Op. 53 - 1. Andante Con Moto','András Schiff','Felix Mendelssohn','Mendelssohn:_Songs_Without_Words.jpg','312E3232','2011-10-11 00:11:29','2011-10-11 00:11:29');
INSERT INTO `products` (`id`,`typo`,`title`,`artist`,`description`,`image_url`,`price`,`created_at`,`updated_at`) VALUES ('4','audio-CD','Silent Night','Aretha Franklin','Christmas song','O_Holiday_Hits.jpg','382E3830','2011-10-11 00:11:23','2011-10-11 00:11:23');
INSERT INTO `products` (`id`,`typo`,`title`,`artist`,`description`,`image_url`,`price`,`created_at`,`updated_at`) VALUES ('5','audio-CD','Robinson Crusoe','Art Of Noise','Georges Van Parys/Gian-Piero Reverberi/Robert Mellin','The_Best_Of_The_Art_Of_Noise.jpg','342E3130','2011-10-11 00:11:14','2011-10-11 00:11:14');
INSERT INTO `products` (`id`,`typo`,`title`,`artist`,`description`,`image_url`,`price`,`created_at`,`updated_at`) VALUES ('6','audio-CD','Dizzy Miss Lizzy','Beatles','NULL','Help!.jpg','31342E3134','2011-10-11 00:11:30','2011-10-11 00:11:30');
INSERT INTO `products` (`id`,`typo`,`title`,`artist`,`description`,`image_url`,`price`,`created_at`,`updated_at`) VALUES ('7','audio-CD','Get Back','Beatles','Lennon- McCartney','Let_It_Be.jpg','31322E3132','2011-10-11 00:11:25','2011-10-11 00:11:25');
INSERT INTO `products` (`id`,`typo`,`title`,`artist`,`description`,`image_url`,`price`,`created_at`,`updated_at`) VALUES ('8','audio-CD','Tomorrow Never Knows','Beatles','John Lennon-Paul McCartney','Revolver.jpg','31342E3134','2011-10-11 00:11:20','2011-10-11 00:11:20');
INSERT INTO `products` (`id`,`typo`,`title`,`artist`,`description`,`image_url`,`price`,`created_at`,`updated_at`) VALUES ('9','audio-CD','Drive My Car','Beatles','Lennon/McCartney','Rubber_Soul.jpg','312E3134','2011-10-11 00:11:27','2011-10-11 00:11:27');
INSERT INTO `products` (`id`,`typo`,`title`,`artist`,`description`,`image_url`,`price`,`created_at`,`updated_at`) VALUES ('10','audio-CD','With A Little Help From My Friends','Beatles','Lennon/McCartney','Sgt._Peppers_Lonely_Hearts_Club_Band.jpg','322E3133','2011-10-11 00:11:28','2011-10-11 00:11:28');
INSERT INTO `products` (`id`,`typo`,`title`,`artist`,`description`,`image_url`,`price`,`created_at`,`updated_at`) VALUES ('11','audio-CD','Only A Northern Song [Mono]','Beatles','George Harrison','Yellow_Submarine_[2009_Stereo_Remaster].jpg','322E3133','2011-10-11 00:11:28','2011-10-11 00:11:28');
INSERT INTO `products` (`id`,`typo`,`title`,`artist`,`description`,`image_url`,`price`,`created_at`,`updated_at`) VALUES ('12','audio-CD','Girl','Beck','Beck and Dust Brothers','Guero.jpg','332E3133','2011-10-11 00:11:14','2011-10-11 00:11:14');
INSERT INTO `products` (`id`,`typo`,`title`,`artist`,`description`,`image_url`,`price`,`created_at`,`updated_at`) VALUES ('13','audio-CD','Devils Haircut','Beck','Beck/John King/Michael Simpson','Odelay.jpg','312E3133','2011-10-11 00:11:15','2011-10-11 00:11:15');
INSERT INTO `products` (`id`,`typo`,`title`,`artist`,`description`,`image_url`,`price`,`created_at`,`updated_at`) VALUES ('14','audio-CD','The Golden Age','Beck','beck hansen','Sea_Change.jpg','312E3132','2011-10-11 00:11:25','2011-10-11 00:11:25');
INSERT INTO `products` (`id`,`typo`,`title`,`artist`,`description`,`image_url`,`price`,`created_at`,`updated_at`) VALUES ('15','audio-CD','All Of Me','Billie Holiday','Billy Holiday','Love_Songs.jpg','312E3136','2011-10-11 00:11:15','2011-10-11 00:11:15');
INSERT INTO `products` (`id`,`typo`,`title`,`artist`,`description`,`image_url`,`price`,`created_at`,`updated_at`) VALUES ('16','audio-CD','Little Bob','Black Grape','Black Grape','Its_Great_When_Youre_Straight...Yeah.jpg','31302E3130','2011-10-11 00:11:15','2011-10-11 00:11:15');
INSERT INTO `products` (`id`,`typo`,`title`,`artist`,`description`,`image_url`,`price`,`created_at`,`updated_at`) VALUES ('17','audio-CD','Its the Most Wonderful Time of the Year','Brian McKnight','Christmas song','O_Holiday_Hits.jpg','352E3830','2011-10-11 00:11:23','2011-10-11 00:11:23');
INSERT INTO `products` (`id`,`typo`,`title`,`artist`,`description`,`image_url`,`price`,`created_at`,`updated_at`) VALUES ('18','audio-CD','Solo Guitar With Tin Foil','BrianEno  and David Byrne','Brian Eno, David Byrne','My_Life_In_The_Bush_Of_Ghosts.jpg','31382E3138','2011-10-11 00:11:20','2011-10-11 00:11:20');
INSERT INTO `products` (`id`,`typo`,`title`,`artist`,`description`,`image_url`,`price`,`created_at`,`updated_at`) VALUES ('19','audio-CD','Bolero','Charles Dutoit; Montreal Symphony Orchestra','Ravel, Maurice (1875-1937)','Ravel:_Bolero,_Rapsodie_Espagnole,_etc..jpg','312E3430','2011-10-11 00:11:17','2011-10-11 00:11:17');
INSERT INTO `products` (`id`,`typo`,`title`,`artist`,`description`,`image_url`,`price`,`created_at`,`updated_at`) VALUES ('20','audio-CD','London Calling','Clash','Joe Strummer/Mick Jones','London_Calling.jpg','312E3139','2011-10-11 00:11:26','2011-10-11 00:11:26');
INSERT INTO `products` (`id`,`typo`,`title`,`artist`,`description`,`image_url`,`price`,`created_at`,`updated_at`) VALUES ('21','audio-CD','Changes','David Bowie','David Bowie','Hunky_Dory.jpg','312E3131','2011-10-11 00:11:27','2011-10-11 00:11:27');
INSERT INTO `products` (`id`,`typo`,`title`,`artist`,`description`,`image_url`,`price`,`created_at`,`updated_at`) VALUES ('22','audio-CD','Everyones In Love With You','David Byrne','David Byrne','Look_Into_The_Eyeball.jpg','31322E3132','2011-10-11 00:11:26','2011-10-11 00:11:26');
INSERT INTO `products` (`id`,`typo`,`title`,`artist`,`description`,`image_url`,`price`,`created_at`,`updated_at`) VALUES ('23','audio-CD','The New Year','Death Cab For Cutie','Gibbard/Harmer/Jason McGerr/Walla','Transatlanticism.jpg','312E3131','2011-10-11 00:11:14','2011-10-11 00:11:14');
INSERT INTO `products` (`id`,`typo`,`title`,`artist`,`description`,`image_url`,`price`,`created_at`,`updated_at`) VALUES ('24','audio-CD','Here With Me','Dido','Dido Armstrong, Paul Statham, Pascal Gabriel','No_Angel.jpg','312E3132','2011-10-11 00:11:16','2011-10-11 00:11:16');
INSERT INTO `products` (`id`,`typo`,`title`,`artist`,`description`,`image_url`,`price`,`created_at`,`updated_at`) VALUES ('25','audio-CD','Walk Between The Raindrops','Donald Fagen','Donald Fagen','The_Nightfly.jpg','382E3830','2011-10-11 00:11:14','2011-10-11 00:11:14');
INSERT INTO `products` (`id`,`typo`,`title`,`artist`,`description`,`image_url`,`price`,`created_at`,`updated_at`) VALUES ('26','audio-CD','Ocean Rain [Live]','Echo and Bunnymen','Ian McCulloch/Will Sergeant/Pete de Freitas/Les Pattinson','Ocean_Rain.jpg','31372E3137','2011-10-11 00:11:24','2011-10-11 00:11:24');
INSERT INTO `products` (`id`,`typo`,`title`,`artist`,`description`,`image_url`,`price`,`created_at`,`updated_at`) VALUES ('27','audio-CD','This House Is Empty Now','Elvis Costello With Burt Bacharach','Bacharach/Burt Bacharach/Costello/Elvis Costello','Painted_From_Memory.jpg','342E3132','2011-10-11 00:11:27','2011-10-11 00:11:27');
INSERT INTO `products` (`id`,`typo`,`title`,`artist`,`description`,`image_url`,`price`,`created_at`,`updated_at`) VALUES ('28','audio-CD','The Scarlet Tide','ElvisCostello  and Imposters','Elvis Costello  and T-Bone Burnett','The_Delivery_Man.jpg','31332E3133','2011-10-11 00:11:14','2011-10-11 00:11:14');
INSERT INTO `products` (`id`,`typo`,`title`,`artist`,`description`,`image_url`,`price`,`created_at`,`updated_at`) VALUES ('29','audio-CD','Jackpot','English Beat','Agard/Robinson/Crooks/The Beat','I_Just_Cant_Stop_It.jpg','31322E3132','2011-10-11 00:11:22','2011-10-11 00:11:22');
INSERT INTO `products` (`id`,`typo`,`title`,`artist`,`description`,`image_url`,`price`,`created_at`,`updated_at`) VALUES ('30','audio-CD','Joy To The World','Faith Hill','Christmas song','O_Holiday_Hits.jpg','312E3830','2011-10-11 00:11:23','2011-10-11 00:11:23');
INSERT INTO `products` (`id`,`typo`,`title`,`artist`,`description`,`image_url`,`price`,`created_at`,`updated_at`) VALUES ('31','audio-CD','Gold Dust Woman','Fleetwood Mac','Stevie Nicks','Rumours.jpg','31312E3131','2011-10-11 00:11:19','2011-10-11 00:11:19');
INSERT INTO `products` (`id`,`typo`,`title`,`artist`,`description`,`image_url`,`price`,`created_at`,`updated_at`) VALUES ('32','audio-CD','M.I.A.','Foo Fighters','Dave, Taylor, Nate, Chris','There_Is_Nothing_Left_To_Lose.jpg','31312E3131','2011-10-11 00:11:13','2011-10-11 00:11:13');
INSERT INTO `products` (`id`,`typo`,`title`,`artist`,`description`,`image_url`,`price`,`created_at`,`updated_at`) VALUES ('33','audio-CD','Van Tango','Franz Ferdinand','Franz Ferdinand','Observer_EP_[Promo].jpg','352E3530','2011-10-11 00:11:20','2011-10-11 00:11:20');
INSERT INTO `products` (`id`,`typo`,`title`,`artist`,`description`,`image_url`,`price`,`created_at`,`updated_at`) VALUES ('34','audio-CD','When Your Minds Made Up','GlenHansard  and Markéta Irglová','Glen Hansard','Once.jpg','342E3133','2011-10-11 00:11:29','2011-10-11 00:11:29');
INSERT INTO `products` (`id`,`typo`,`title`,`artist`,`description`,`image_url`,`price`,`created_at`,`updated_at`) VALUES ('35','audio-CD','Its Beginning To Look A Lot Like Christmas','Harry Connick, Jr.','Christmas song','O_Holiday_Hits.jpg','372E3830','2011-10-11 00:11:23','2011-10-11 00:11:23');
INSERT INTO `products` (`id`,`typo`,`title`,`artist`,`description`,`image_url`,`price`,`created_at`,`updated_at`) VALUES ('36','audio-CD','O Holy Night','Il Divo','Christmas song','O_Holiday_Hits.jpg','332E3830','2011-10-11 00:11:23','2011-10-11 00:11:23');
INSERT INTO `products` (`id`,`typo`,`title`,`artist`,`description`,`image_url`,`price`,`created_at`,`updated_at`) VALUES ('37','audio-CD','In Between Dreams','Jack Johnson','null','In_Between_Dreams.jpg','362E3636','2011-10-11 00:11:12','2011-10-11 00:11:12');
INSERT INTO `products` (`id`,`typo`,`title`,`artist`,`description`,`image_url`,`price`,`created_at`,`updated_at`) VALUES ('38','audio-CD','Grasshopper','Jeff Lorber','Jeff Lorber','West_Side_Stories.jpg','312E3131','2011-10-11 00:11:12','2011-10-11 00:11:12');
INSERT INTO `products` (`id`,`typo`,`title`,`artist`,`description`,`image_url`,`price`,`created_at`,`updated_at`) VALUES ('39','audio-CD','Meat City (Home Version)','John Lennon','John Lennon','Mind_Games_[Bonus_:Tracks].jpg','31352E3135','2011-10-11 00:11:21','2011-10-11 00:11:21');
INSERT INTO `products` (`id`,`typo`,`title`,`artist`,`description`,`image_url`,`price`,`created_at`,`updated_at`) VALUES ('40','audio-CD','HappyChristmas  and Give Peace A Chance','John Lennon','John Lennon','Shaved_Fish.jpg','31312E3131','2011-10-11 00:11:17','2011-10-11 00:11:17');
INSERT INTO `products` (`id`,`typo`,`title`,`artist`,`description`,`image_url`,`price`,`created_at`,`updated_at`) VALUES ('41','audio-CD','Clarity','John Mayer','John Mayer','Heavier_Things.jpg','312E3130','2011-10-11 00:11:26','2011-10-11 00:11:26');
INSERT INTO `products` (`id`,`typo`,`title`,`artist`,`description`,`image_url`,`price`,`created_at`,`updated_at`) VALUES ('42','audio-CD','It Came Upon a Midnight Clear (image_url Version).jpg','Josh Groban','Christmas song','O_Holiday_Hits.jpg','342E3830','2011-10-11 00:11:23','2011-10-11 00:11:23');
INSERT INTO `products` (`id`,`typo`,`title`,`artist`,`description`,`image_url`,`price`,`created_at`,`updated_at`) VALUES ('43','audio-CD','So It Shall Be','k.d. lang','Greg Penny','Ingenue.jpg','352E3130','2011-10-11 00:11:20','2011-10-11 00:11:20');
INSERT INTO `products` (`id`,`typo`,`title`,`artist`,`description`,`image_url`,`price`,`created_at`,`updated_at`) VALUES ('44','audio-CD','Jenny Was A Friend of Mine','Killers','Panteón Rococó','Hot_Fuss.jpg','312E3131','2011-10-11 00:11:24','2011-10-11 00:11:24');
INSERT INTO `products` (`id`,`typo`,`title`,`artist`,`description`,`image_url`,`price`,`created_at`,`updated_at`) VALUES ('45','audio-CD','Karmacoma','Massive Attack','Locke/Del Naja/Norfolk/Vowles/Grant \\Daddy G\"Marshall\"\"\"','Protection.jpg','322E3130','2011-10-11 00:11:21','2011-10-11 00:11:21');
INSERT INTO `products` (`id`,`typo`,`title`,`artist`,`description`,`image_url`,`price`,`created_at`,`updated_at`) VALUES ('46','audio-CD','Alsatian Cousin','Morrissey','Morrissey/Stephen Street','Viva_Hate.jpg','312E3133','2011-10-11 00:11:21','2011-10-11 00:11:21');
INSERT INTO `products` (`id`,`typo`,`title`,`artist`,`description`,`image_url`,`price`,`created_at`,`updated_at`) VALUES ('47','audio-CD','Margaret On The Guillotine','Morrissey','Morrissey/Stephen Street','Viva_Hate.jpg','31332E3133','2011-10-11 00:11:21','2011-10-11 00:11:21');
INSERT INTO `products` (`id`,`typo`,`title`,`artist`,`description`,`image_url`,`price`,`created_at`,`updated_at`) VALUES ('48','audio-CD','Brand New Sidewalk','Nickel Creek','Chris Thile','This_Side.jpg','31332E3133','2011-10-11 00:11:18','2011-10-11 00:11:18');
INSERT INTO `products` (`id`,`typo`,`title`,`artist`,`description`,`image_url`,`price`,`created_at`,`updated_at`) VALUES ('49','audio-CD','Nod Your Head','Paul McCartney','Paul McCartney/paul mccartney','Memory_Almost_Full.jpg','31332E3133','2011-10-11 00:11:23','2011-10-11 00:11:23');
INSERT INTO `products` (`id`,`typo`,`title`,`artist`,`description`,`image_url`,`price`,`created_at`,`updated_at`) VALUES ('50','audio-CD','Sunflower','Paul Weller','Paul Weller','Wild_Wood.jpg','312E3136','2011-10-11 00:11:15','2011-10-11 00:11:15');
INSERT INTO `products` (`id`,`typo`,`title`,`artist`,`description`,`image_url`,`price`,`created_at`,`updated_at`) VALUES ('51','audio-CD','Another Day','PaulMcCartney  and Wings','Linda McCartney','Wings_Greatest.jpg','312E3132','2011-10-11 00:11:25','2011-10-11 00:11:25');
INSERT INTO `products` (`id`,`typo`,`title`,`artist`,`description`,`image_url`,`price`,`created_at`,`updated_at`) VALUES ('52','audio-CD','Brick Is Red','Pixies','Black Francis','Surfer_Rosa.jpg','31342E3134','2011-10-11 00:11:22','2011-10-11 00:11:22');
INSERT INTO `products` (`id`,`typo`,`title`,`artist`,`description`,`image_url`,`price`,`created_at`,`updated_at`) VALUES ('53','audio-CD','My Baby','Pretenders','Chrissie Hynde','The_Singles.jpg','31352E3136','2011-10-11 00:11:13','2011-10-11 00:11:13');
INSERT INTO `products` (`id`,`typo`,`title`,`artist`,`description`,`image_url`,`price`,`created_at`,`updated_at`) VALUES ('54','audio-CD','India','Psychedelic Furs','Duncan Kilburn/Richard Butler/Roger Morris/Timothy Butler/Vincent Davey','The_Psychedelic_Furs.jpg','312E3133','2011-10-11 00:11:24','2011-10-11 00:11:24');
INSERT INTO `products` (`id`,`typo`,`title`,`artist`,`description`,`image_url`,`price`,`created_at`,`updated_at`) VALUES ('55','audio-CD','Losing My Religion','R.E.M.','Bill Berry-Peter Buck-Mike Mills-Michael Stipe','Out_Of_Time.jpg','322E3131','2011-10-11 00:11:13','2011-10-11 00:11:13');
INSERT INTO `products` (`id`,`typo`,`title`,`artist`,`description`,`image_url`,`price`,`created_at`,`updated_at`) VALUES ('56','audio-CD','Electioneering','Radiohead','Thom Yorke, Jonny Greenwood, Phil Selway, Ed O Brien, Colin Greenwood','OK_Computer.jpg','382E3132','2011-10-11 00:11:21','2011-10-11 00:11:21');
INSERT INTO `products` (`id`,`typo`,`title`,`artist`,`description`,`image_url`,`price`,`created_at`,`updated_at`) VALUES ('57','audio-CD','Blow Out','Radiohead','Colin Greenwood/Edward OBrien/Jonathan Greenwood/Philip Selway/Thomas Yorke','Pablo_Honey.jpg','31322E3132','2011-10-11 00:11:28','2011-10-11 00:11:28');
INSERT INTO `products` (`id`,`typo`,`title`,`artist`,`description`,`image_url`,`price`,`created_at`,`updated_at`) VALUES ('58','audio-CD','Cigarettes And Chocolate Milk','Rufus Wainwright','Rufus Wainwright','Poses.jpg','312E3133','2011-10-11 00:11:22','2011-10-11 00:11:22');
INSERT INTO `products` (`id`,`typo`,`title`,`artist`,`description`,`image_url`,`price`,`created_at`,`updated_at`) VALUES ('59','audio-CD','(Da Le) Yaleo','Santana','Santana, Carlos','Supernatural.jpg','312E3133','2011-10-11 00:11:18','2011-10-11 00:11:18');
INSERT INTO `products` (`id`,`typo`,`title`,`artist`,`description`,`image_url`,`price`,`created_at`,`updated_at`) VALUES ('60','audio-CD','Jingo','Santana','M. Olatunji','The_Best_of_Carlos_Santana.jpg','312E3136','2011-10-11 00:11:27','2011-10-11 00:11:27');
INSERT INTO `products` (`id`,`typo`,`title`,`artist`,`description`,`image_url`,`price`,`created_at`,`updated_at`) VALUES ('61','audio-CD','Bring It On (Reprise)','Seal','Seal, Isidore, Melvoin, Coleman, Bruce, Rizzo','Seal.jpg','31312E3131','2011-10-11 00:11:19','2011-10-11 00:11:19');
INSERT INTO `products` (`id`,`typo`,`title`,`artist`,`description`,`image_url`,`price`,`created_at`,`updated_at`) VALUES ('62','audio-CD','Some Fantastic Place','Squeeze','Difford and Tilbrook','Some_Fantastic_Place.jpg','322E3131','2011-10-11 00:11:20','2011-10-11 00:11:20');
INSERT INTO `products` (`id`,`typo`,`title`,`artist`,`description`,`image_url`,`price`,`created_at`,`updated_at`) VALUES ('63','audio-CD','Too High','Stevie Wonder','Stevie Wonder','Innervisions.jpg','312E3930','2011-10-11 00:11:24','2011-10-11 00:11:24');
INSERT INTO `products` (`id`,`typo`,`title`,`artist`,`description`,`image_url`,`price`,`created_at`,`updated_at`) VALUES ('64','audio-CD','This Must Be the Place (Naive Melody)','Talking Heads','David Byrne, Chris Frantz, Jerry Harrison, Tina Weymouth','Speaking_In_Tongues.jpg','392E3930','2011-10-11 00:11:27','2011-10-11 00:11:27');
INSERT INTO `products` (`id`,`typo`,`title`,`artist`,`description`,`image_url`,`price`,`created_at`,`updated_at`) VALUES ('65','audio-CD','Ill Be Home For Christmas','Tony Bennett','Christmas song','O_Holiday_Hits.jpg','322E3830','2011-10-11 00:11:23','2011-10-11 00:11:23');
INSERT INTO `products` (`id`,`typo`,`title`,`artist`,`description`,`image_url`,`price`,`created_at`,`updated_at`) VALUES ('66','audio-CD','Yahweh','U2','AdamClayton, Bono, Larry Mullen  and the Edge','How_To_Dismantle_An_Atomic_Bomb.jpg','31312E3131','2011-10-11 00:11:19','2011-10-11 00:11:19');
INSERT INTO `products` (`id`,`typo`,`title`,`artist`,`description`,`image_url`,`price`,`created_at`,`updated_at`) VALUES ('67','audio-CD','Wake Up Dead Man','U2','Bono, The Edge, Adam Clayton, and Larry Mullen','Pop.jpg','31322E3132','2011-10-11 00:11:22','2011-10-11 00:11:22');
INSERT INTO `products` (`id`,`typo`,`title`,`artist`,`description`,`image_url`,`price`,`created_at`,`updated_at`) VALUES ('68','audio-CD','I Got You Babe','UB40 Feat. Chrissie Hynde','Jack Nitzsche/Sonny Bono','The_Singles.jpg','31362E3136','2011-10-11 00:11:13','2011-10-11 00:11:13');
INSERT INTO `products` (`id`,`typo`,`title`,`artist`,`description`,`image_url`,`price`,`created_at`,`updated_at`) VALUES ('69','audio-CD','Velvet Morning','Verve','Richard Ashcroft','Urban_Hymns.jpg','31322E3133','2011-10-11 00:11:19','2011-10-11 00:11:19');
INSERT INTO `products` (`id`,`typo`,`title`,`artist`,`description`,`image_url`,`price`,`created_at`,`updated_at`) VALUES ('70','audio-CD','A Man Is In Love','Waterboys','Scott/The Waterboys','The_Best_Of_The_Waterboys.jpg','31322E3132','2011-10-11 00:11:15','2011-10-11 00:11:15');
INSERT INTO `products` (`id`,`typo`,`title`,`artist`,`description`,`image_url`,`price`,`created_at`,`updated_at`) VALUES ('71','audio-CD','The Lion/Gaiende','Youssou N Dour','Youssou N Dour, Habib Faye','The_Lion.jpg','312E3930','2011-10-11 00:11:24','2011-10-11 00:11:24');


# Dump of table schema_migrations
# ------------------------------------------------------------

CREATE TABLE `schema_migrations` (
  `version` varchar(255) NOT NULL,
  UNIQUE KEY `unique_schema_migrations` (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `schema_migrations` (`version`) VALUES ('20110711000001');
INSERT INTO `schema_migrations` (`version`) VALUES ('20110711000002');
INSERT INTO `schema_migrations` (`version`) VALUES ('20110711000003');
INSERT INTO `schema_migrations` (`version`) VALUES ('20110711000004');
INSERT INTO `schema_migrations` (`version`) VALUES ('20110711000005');
INSERT INTO `schema_migrations` (`version`) VALUES ('20110711000006');
INSERT INTO `schema_migrations` (`version`) VALUES ('20110711000007');
INSERT INTO `schema_migrations` (`version`) VALUES ('20110711000008');
INSERT INTO `schema_migrations` (`version`) VALUES ('20110711000009');
INSERT INTO `schema_migrations` (`version`) VALUES ('20111003230433');
INSERT INTO `schema_migrations` (`version`) VALUES ('20111003230849');
INSERT INTO `schema_migrations` (`version`) VALUES ('20111007132115');
INSERT INTO `schema_migrations` (`version`) VALUES ('20111007132116');
INSERT INTO `schema_migrations` (`version`) VALUES ('20111007202102');
INSERT INTO `schema_migrations` (`version`) VALUES ('20111016231534');


# Dump of table sessions
# ------------------------------------------------------------

CREATE TABLE `sessions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `session_id` varchar(255) NOT NULL,
  `data` text,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_sessions_on_session_id` (`session_id`),
  KEY `index_sessions_on_updated_at` (`updated_at`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



# Dump of table users
# ------------------------------------------------------------

CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `password_digest` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

INSERT INTO `users` (`id`,`name`,`password_digest`,`created_at`,`updated_at`) VALUES ('1','nic','$2a$10$IQyoGqihva7d6ncjUjVCaOIra3mq25ywQjsJVzFwV3ruTHusxVZ46','2011-10-12 23:01:26','2011-10-12 23:01:26');


