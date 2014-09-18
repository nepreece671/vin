# ************************************************************
# Sequel Pro SQL dump
# Version 3408
#
# http://www.sequelpro.com/
# http://code.google.com/p/sequel-pro/
#
# Host: localhost (MySQL 5.1.39)
# Database: cddev
# Generation Time: 2011-10-26 10:12:47 -0700
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table carts
# ------------------------------------------------------------

DROP TABLE IF EXISTS `carts`;

CREATE TABLE `carts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `carts` WRITE;
/*!40000 ALTER TABLE `carts` DISABLE KEYS */;

INSERT INTO `carts` (`id`, `created_at`, `updated_at`)
VALUES
	(1,'2011-10-19 20:22:09','2011-10-19 20:22:09');

/*!40000 ALTER TABLE `carts` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table line_items
# ------------------------------------------------------------

DROP TABLE IF EXISTS `line_items`;

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

DROP TABLE IF EXISTS `orders`;

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

DROP TABLE IF EXISTS `products`;

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;

INSERT INTO `products` (`id`, `typo`, `title`, `artist`, `description`, `image_url`, `price`, `created_at`, `updated_at`)
VALUES
	(2,'audio-CD','O Come All Ye Faithful','Amy Grant','Christmas song','O_Holiday_Hits.jpg',6.80,'2011-10-11 00:11:23','2011-10-11 00:11:23'),
	(3,'audio-CD','Songs Without Words, Vol. 4, Op. 53 - 1. Andante Con Moto','András Schiff','Felix Mendelssohn','Mendelssohn:_Songs_Without_Words.jpg',1.22,'2011-10-11 00:11:29','2011-10-11 00:11:29'),
	(4,'audio-CD','Silent Night','Aretha Franklin','Christmas song','O_Holiday_Hits.jpg',8.80,'2011-10-11 00:11:23','2011-10-11 00:11:23'),
	(5,'audio-CD','Robinson Crusoe','Art Of Noise','Georges Van Parys/Gian-Piero Reverberi/Robert Mellin','The_Best_Of_The_Art_Of_Noise.jpg',4.10,'2011-10-11 00:11:14','2011-10-11 00:11:14'),
	(6,'audio-CD','Dizzy Miss Lizzy','Beatles','NULL','Help!.jpg',14.14,'2011-10-11 00:11:30','2011-10-11 00:11:30'),
	(7,'audio-CD','Get Back','Beatles','Lennon- McCartney','Let_It_Be.jpg',12.12,'2011-10-11 00:11:25','2011-10-11 00:11:25'),
	(8,'audio-CD','Tomorrow Never Knows','Beatles','John Lennon-Paul McCartney','Revolver.jpg',14.14,'2011-10-11 00:11:20','2011-10-11 00:11:20'),
	(9,'audio-CD','Drive My Car','Beatles','Lennon/McCartney','Rubber_Soul.jpg',1.14,'2011-10-11 00:11:27','2011-10-11 00:11:27'),
	(10,'audio-CD','With A Little Help From My Friends','Beatles','Lennon/McCartney','Sgt._Peppers_Lonely_Hearts_Club_Band.jpg',2.13,'2011-10-11 00:11:28','2011-10-11 00:11:28'),
	(11,'audio-CD','Only A Northern Song [Mono]','Beatles','George Harrison','Yellow_Submarine_[2009_Stereo_Remaster].jpg',2.13,'2011-10-11 00:11:28','2011-10-11 00:11:28'),
	(12,'audio-CD','Girl','Beck','Beck and Dust Brothers','Guero.jpg',3.13,'2011-10-11 00:11:14','2011-10-11 00:11:14'),
	(13,'audio-CD','Devils Haircut','Beck','Beck/John King/Michael Simpson','Odelay.jpg',1.13,'2011-10-11 00:11:15','2011-10-11 00:11:15'),
	(14,'audio-CD','The Golden Age','Beck','beck hansen','Sea_Change.jpg',1.12,'2011-10-11 00:11:25','2011-10-11 00:11:25'),
	(15,'audio-CD','All Of Me','Billie Holiday','Billy Holiday','Love_Songs.jpg',1.16,'2011-10-11 00:11:15','2011-10-11 00:11:15'),
	(16,'audio-CD','Little Bob','Black Grape','Black Grape','Its_Great_When_Youre_Straight...Yeah.jpg',10.10,'2011-10-11 00:11:15','2011-10-11 00:11:15'),
	(17,'audio-CD','Its the Most Wonderful Time of the Year','Brian McKnight','Christmas song','O_Holiday_Hits.jpg',5.80,'2011-10-11 00:11:23','2011-10-11 00:11:23'),
	(18,'audio-CD','Solo Guitar With Tin Foil','BrianEno  and David Byrne','Brian Eno, David Byrne','My_Life_In_The_Bush_Of_Ghosts.jpg',18.18,'2011-10-11 00:11:20','2011-10-11 00:11:20'),
	(19,'audio-CD','Bolero','Charles Dutoit; Montreal Symphony Orchestra','Ravel, Maurice (1875-1937)','Ravel:_Bolero,_Rapsodie_Espagnole,_etc..jpg',1.40,'2011-10-11 00:11:17','2011-10-11 00:11:17'),
	(20,'audio-CD','London Calling','Clash','Joe Strummer/Mick Jones','London_Calling.jpg',1.19,'2011-10-11 00:11:26','2011-10-11 00:11:26'),
	(21,'audio-CD','Changes','David Bowie','David Bowie','Hunky_Dory.jpg',1.11,'2011-10-11 00:11:27','2011-10-11 00:11:27'),
	(22,'audio-CD','Everyones In Love With You','David Byrne','David Byrne','Look_Into_The_Eyeball.jpg',12.12,'2011-10-11 00:11:26','2011-10-11 00:11:26'),
	(23,'audio-CD','The New Year','Death Cab For Cutie','Gibbard/Harmer/Jason McGerr/Walla','Transatlanticism.jpg',1.11,'2011-10-11 00:11:14','2011-10-11 00:11:14'),
	(24,'audio-CD','Here With Me','Dido','Dido Armstrong, Paul Statham, Pascal Gabriel','No_Angel.jpg',1.12,'2011-10-11 00:11:16','2011-10-11 00:11:16'),
	(25,'audio-CD','Walk Between The Raindrops','Donald Fagen','Donald Fagen','The_Nightfly.jpg',8.80,'2011-10-11 00:11:14','2011-10-11 00:11:14'),
	(26,'audio-CD','Ocean Rain [Live]','Echo and Bunnymen','Ian McCulloch/Will Sergeant/Pete de Freitas/Les Pattinson','Ocean_Rain.jpg',17.17,'2011-10-11 00:11:24','2011-10-11 00:11:24'),
	(27,'audio-CD','This House Is Empty Now','Elvis Costello With Burt Bacharach','Bacharach/Burt Bacharach/Costello/Elvis Costello','Painted_From_Memory.jpg',4.12,'2011-10-11 00:11:27','2011-10-11 00:11:27'),
	(28,'audio-CD','The Scarlet Tide','ElvisCostello  and Imposters','Elvis Costello  and T-Bone Burnett','The_Delivery_Man.jpg',13.13,'2011-10-11 00:11:14','2011-10-11 00:11:14'),
	(29,'audio-CD','Jackpot','English Beat','Agard/Robinson/Crooks/The Beat','I_Just_Cant_Stop_It.jpg',12.12,'2011-10-11 00:11:22','2011-10-11 00:11:22'),
	(30,'audio-CD','Joy To The World','Faith Hill','Christmas song','O_Holiday_Hits.jpg',1.80,'2011-10-11 00:11:23','2011-10-11 00:11:23'),
	(31,'audio-CD','Gold Dust Woman','Fleetwood Mac','Stevie Nicks','Rumours.jpg',11.11,'2011-10-11 00:11:19','2011-10-11 00:11:19'),
	(32,'audio-CD','M.I.A.','Foo Fighters','Dave, Taylor, Nate, Chris','There_Is_Nothing_Left_To_Lose.jpg',11.11,'2011-10-11 00:11:13','2011-10-11 00:11:13'),
	(33,'audio-CD','Van Tango','Franz Ferdinand','Franz Ferdinand','Observer_EP_[Promo].jpg',5.50,'2011-10-11 00:11:20','2011-10-11 00:11:20'),
	(34,'audio-CD','When Your Minds Made Up','GlenHansard  and Markéta Irglová','Glen Hansard','Once.jpg',4.13,'2011-10-11 00:11:29','2011-10-11 00:11:29'),
	(35,'audio-CD','Its Beginning To Look A Lot Like Christmas','Harry Connick, Jr.','Christmas song','O_Holiday_Hits.jpg',7.80,'2011-10-11 00:11:23','2011-10-11 00:11:23'),
	(36,'audio-CD','O Holy Night','Il Divo','Christmas song','O_Holiday_Hits.jpg',3.80,'2011-10-11 00:11:23','2011-10-11 00:11:23'),
	(37,'audio-CD','In Between Dreams','Jack Johnson','null','In_Between_Dreams.jpg',6.66,'2011-10-11 00:11:12','2011-10-11 00:11:12'),
	(38,'audio-CD','Grasshopper','Jeff Lorber','Jeff Lorber','West_Side_Stories.jpg',1.11,'2011-10-11 00:11:12','2011-10-11 00:11:12'),
	(39,'audio-CD','Meat City (Home Version)','John Lennon','John Lennon','Mind_Games_[Bonus_:Tracks].jpg',15.15,'2011-10-11 00:11:21','2011-10-11 00:11:21'),
	(40,'audio-CD','HappyChristmas  and Give Peace A Chance','John Lennon','John Lennon','Shaved_Fish.jpg',11.11,'2011-10-11 00:11:17','2011-10-11 00:11:17'),
	(41,'audio-CD','Clarity','John Mayer','John Mayer','Heavier_Things.jpg',1.10,'2011-10-11 00:11:26','2011-10-11 00:11:26'),
	(42,'audio-CD','It Came Upon a Midnight Clear (image_url Version).jpg','Josh Groban','Christmas song','O_Holiday_Hits.jpg',4.80,'2011-10-11 00:11:23','2011-10-11 00:11:23'),
	(43,'audio-CD','So It Shall Be','k.d. lang','Greg Penny','Ingenue.jpg',5.10,'2011-10-11 00:11:20','2011-10-11 00:11:20'),
	(44,'audio-CD','Jenny Was A Friend of Mine','Killers','Panteón Rococó','Hot_Fuss.jpg',1.11,'2011-10-11 00:11:24','2011-10-11 00:11:24'),
	(45,'audio-CD','Karmacoma','Massive Attack','Locke/Del Naja/Norfolk/Vowles/Grant \\Daddy G\"Marshall\"\"\"','Protection.jpg',2.10,'2011-10-11 00:11:21','2011-10-11 00:11:21'),
	(46,'audio-CD','Alsatian Cousin','Morrissey','Morrissey/Stephen Street','Viva_Hate.jpg',1.13,'2011-10-11 00:11:21','2011-10-11 00:11:21'),
	(47,'audio-CD','Margaret On The Guillotine','Morrissey','Morrissey/Stephen Street','Viva_Hate.jpg',13.13,'2011-10-11 00:11:21','2011-10-11 00:11:21'),
	(48,'audio-CD','Brand New Sidewalk','Nickel Creek','Chris Thile','This_Side.jpg',13.13,'2011-10-11 00:11:18','2011-10-11 00:11:18'),
	(49,'audio-CD','Nod Your Head','Paul McCartney','Paul McCartney/paul mccartney','Memory_Almost_Full.jpg',13.13,'2011-10-11 00:11:23','2011-10-11 00:11:23'),
	(50,'audio-CD','Sunflower','Paul Weller','Paul Weller','Wild_Wood.jpg',1.16,'2011-10-11 00:11:15','2011-10-11 00:11:15'),
	(51,'audio-CD','Another Day','PaulMcCartney  and Wings','Linda McCartney','Wings_Greatest.jpg',1.12,'2011-10-11 00:11:25','2011-10-11 00:11:25'),
	(52,'audio-CD','Brick Is Red','Pixies','Black Francis','Surfer_Rosa.jpg',14.14,'2011-10-11 00:11:22','2011-10-11 00:11:22'),
	(53,'audio-CD','My Baby','Pretenders','Chrissie Hynde','The_Singles.jpg',15.16,'2011-10-11 00:11:13','2011-10-11 00:11:13'),
	(54,'audio-CD','India','Psychedelic Furs','Duncan Kilburn/Richard Butler/Roger Morris/Timothy Butler/Vincent Davey','The_Psychedelic_Furs.jpg',1.13,'2011-10-11 00:11:24','2011-10-11 00:11:24'),
	(55,'audio-CD','Losing My Religion','R.E.M.','Bill Berry-Peter Buck-Mike Mills-Michael Stipe','Out_Of_Time.jpg',2.11,'2011-10-11 00:11:13','2011-10-11 00:11:13'),
	(56,'audio-CD','Electioneering','Radiohead','Thom Yorke, Jonny Greenwood, Phil Selway, Ed O Brien, Colin Greenwood','OK_Computer.jpg',8.12,'2011-10-11 00:11:21','2011-10-11 00:11:21'),
	(57,'audio-CD','Blow Out','Radiohead','Colin Greenwood/Edward OBrien/Jonathan Greenwood/Philip Selway/Thomas Yorke','Pablo_Honey.jpg',12.12,'2011-10-11 00:11:28','2011-10-11 00:11:28'),
	(58,'audio-CD','Cigarettes And Chocolate Milk','Rufus Wainwright','Rufus Wainwright','Poses.jpg',1.13,'2011-10-11 00:11:22','2011-10-11 00:11:22'),
	(59,'audio-CD','(Da Le) Yaleo','Santana','Santana, Carlos','Supernatural.jpg',1.13,'2011-10-11 00:11:18','2011-10-11 00:11:18'),
	(60,'audio-CD','Jingo','Santana','M. Olatunji','The_Best_of_Carlos_Santana.jpg',1.16,'2011-10-11 00:11:27','2011-10-11 00:11:27'),
	(61,'audio-CD','Bring It On (Reprise)','Seal','Seal, Isidore, Melvoin, Coleman, Bruce, Rizzo','Seal.jpg',11.11,'2011-10-11 00:11:19','2011-10-11 00:11:19'),
	(62,'audio-CD','Some Fantastic Place','Squeeze','Difford and Tilbrook','Some_Fantastic_Place.jpg',2.11,'2011-10-11 00:11:20','2011-10-11 00:11:20'),
	(63,'audio-CD','Too High','Stevie Wonder','Stevie Wonder','Innervisions.jpg',1.90,'2011-10-11 00:11:24','2011-10-11 00:11:24'),
	(64,'audio-CD','This Must Be the Place (Naive Melody)','Talking Heads','David Byrne, Chris Frantz, Jerry Harrison, Tina Weymouth','Speaking_In_Tongues.jpg',9.90,'2011-10-11 00:11:27','2011-10-11 00:11:27'),
	(65,'audio-CD','Ill Be Home For Christmas','Tony Bennett','Christmas song','O_Holiday_Hits.jpg',2.80,'2011-10-11 00:11:23','2011-10-11 00:11:23'),
	(66,'audio-CD','Yahweh','U2','AdamClayton, Bono, Larry Mullen  and the Edge','How_To_Dismantle_An_Atomic_Bomb.jpg',11.11,'2011-10-11 00:11:19','2011-10-11 00:11:19'),
	(67,'audio-CD','Wake Up Dead Man','U2','Bono, The Edge, Adam Clayton, and Larry Mullen','Pop.jpg',12.12,'2011-10-11 00:11:22','2011-10-11 00:11:22'),
	(68,'audio-CD','I Got You Babe','UB40 Feat. Chrissie Hynde','Jack Nitzsche/Sonny Bono','The_Singles.jpg',16.16,'2011-10-11 00:11:13','2011-10-11 00:11:13'),
	(69,'audio-CD','Velvet Morning','Verve','Richard Ashcroft','Urban_Hymns.jpg',12.13,'2011-10-11 00:11:19','2011-10-11 00:11:19'),
	(70,'audio-CD','A Man Is In Love','Waterboys','Scott/The Waterboys','The_Best_Of_The_Waterboys.jpg',12.12,'2011-10-11 00:11:15','2011-10-11 00:11:15'),
	(71,'audio-CD','The Lion/Gaiende','Youssou N Dour','Youssou N Dour, Habib Faye','The_Lion.jpg',1.90,'2011-10-11 00:11:24','2011-10-11 00:11:24');

/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table schema_migrations
# ------------------------------------------------------------

DROP TABLE IF EXISTS `schema_migrations`;

CREATE TABLE `schema_migrations` (
  `version` varchar(255) NOT NULL,
  UNIQUE KEY `unique_schema_migrations` (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `schema_migrations` WRITE;
/*!40000 ALTER TABLE `schema_migrations` DISABLE KEYS */;

INSERT INTO `schema_migrations` (`version`)
VALUES
	('20110711000001'),
	('20110711000002'),
	('20110711000003'),
	('20110711000004'),
	('20110711000005'),
	('20110711000006'),
	('20110711000007'),
	('20110711000008'),
	('20110711000009'),
	('20111003230433'),
	('20111003230849'),
	('20111007132115'),
	('20111007132116'),
	('20111007202102'),
	('20111016231534');

/*!40000 ALTER TABLE `schema_migrations` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table sessions
# ------------------------------------------------------------

DROP TABLE IF EXISTS `sessions`;

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

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `password_digest` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;

INSERT INTO `users` (`id`, `name`, `password_digest`, `created_at`, `updated_at`)
VALUES
	(1,'nic','$2a$10$IQyoGqihva7d6ncjUjVCaOIra3mq25ywQjsJVzFwV3ruTHusxVZ46','2011-10-12 23:01:26','2011-10-12 23:01:26');

/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
