-- MariaDB dump 10.19  Distrib 10.9.2-MariaDB, for Win64 (AMD64)
--
-- Host: 127.0.0.1    Database: 
-- ------------------------------------------------------
-- Server version	10.9.2-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Current Database: `hry_db`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `hry_db` /*!40100 DEFAULT CHARACTER SET utf8mb3 */;

USE `hry_db`;

--
-- Table structure for table `novinkas`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `novinkas` (
  `id` int(11) NOT NULL,
  `title` varchar(100) DEFAULT NULL,
  `text` text DEFAULT NULL,
  `date` date DEFAULT NULL,
  PRIMARY KEY (`id`)
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `novinkas`
--

INSERT INTO `novinkas` VALUES (15,'Televízory sú teraz v zľavách, ktorý kúpiť?','Televízory sú ako vždy pred Vianocami aj tento rok vo veľkých zľavách a oplatí sa pozrieť, či sa vám neoplatí kúpiť nový. Samozrejme, otázka je potom, aký presne? Teraz je výber široký a oplatí sa naštudovať si rozdiely. \r\n\r\nV zásade máte na výber:\r\n\r\nLacné TV - okolo 500 eur dnes už kúpite TV s decentným obrazom a 60Hz podporou\r\nStredne drahé TV - do 700-800 eur, tie sú väčšinou s kvalitnejším obrazom a niektoré už pridávajú aj 120Hz podporu\r\nVyššie TV - od 900 eur vyššie už začína pekná ponuka rozmanitých TV s plnými funkciami a aj 120Hz podporou\r\nZároveň si môžete vybrať TV podľa veľkosti, kde sú ideálne veľkosti okolo 55-65 palcov, kde:\r\n\r\n65\" začína byť teraz štandardom\r\n55\" je stále slušná uhlopriečka, ale ak ju máte, zrejme už budete chcieť viac\r\n75\"-85\"  sú možnosti pre veľké izby, ale cena pri kvalitných TV ide výrazne vyššie\r\nAle viete kúpiť aj kvalitné 42-48\" TV vhodnejšie do izby niekde na stôl a viete ich použiť aj ako monitor\r\n32\" TV sú len v lacných kategóriách s nízkym rozlíšením, veľmi sa tam neoplatí ísť, ak chcete kvalitný TV\r\nNakoniec najdôležitejšie rozhodnutie, ísť do OLED  alebo LCD:\r\n\r\nV zásade s OLEDom dostanete najlepší obraz, vysokú ostrosť, veľmi dobré farby, aj keď je tam možnosť vypaľovania. Síce v nových TV je už niekoľko ochranných funkcií, ale stále nikto nevie, v akom stave budú o nejakých 5 rokov. \r\n\r\nLCD (tam patrí aj QLED, QNED a podobné označenia) síce vydržia a nevypália sa, ale ani najkvalitnejšie s miniLED podsvietením nie sú obrazom až tam, kde OLED. Môžeme však povedať, že už sú veľmi blízko. Zároveň však majú silnejší jas a intenzívne HDR. Ak mávate zapnutý TV celý deň, pri LCD idete na istotu. \r\nAle ešte je tu jedno rozdelenie a to podľa systému TV. Nemusí to byť pre vás zásadné, ak vám stačia štandardné videoaplikácie a nepotrebujete Kodi alebo niečo špeciálne. Tu treba vedieť, že Samsung má svoj systém, LG má svoj systém, Sony a Philips používajú Android. Natívne systémy Samsungu a LG majú lepšie prepojené výstupy a aplikácie. Android TV to má oddelené, ale má viac aplikácii.\r\n\r\nZároveň z hier teraz Samsung má Xbox Game Pass ponuku, LG má Geforce Now. Postupne však zrejme aplikácie budú na všetkých značkách.\r\n\r\n \r\n\r\nAk by sme mali hneď vybrať niekoľko TV, ktoré by sme odporučili, z ktorých je veľa aj v akciách, tak (rovno odporúčame 65-palcové verzie):','2022-11-20');
INSERT INTO `novinkas` VALUES (16,'Týždenník - Warzone 2 spustené, Witcher 3 konečne dostane nextgen update','Tento týždeň odštartovalo Call of Duty Warzone 2.0 spolu s DMZ režimom a vyzerá, že úspešne. Vďaka nim na Steame dosiahlo Call of Duty Modern Warfare 2 masívne čísla a stále sa na nich drží. Mierne aj stúpa. Dnes už išiel takmer na 500 tisíc. Spolu so spustením oboch režimov bol spustený Battle Pass.\r\n\r\nCD Projekt tento týždeň konečne oficiálne ohlásil vydanie Witcher 3 nextgen updatu na december. Už sme dostali aj prvé porovnania z úvodného obrázku. Popritom aj Atomic Heart začína so svoju finálnu prezentáciou a ukázal ako nepriateľských robotov, tak aj možnosti lootovania. Hra vychádza už vo februári a uvidíme, či ponúkne zážitok ako Bioshock alebo skôr ako Wolfenstein.\r\n\r\nNa Steame bola spustený československý týždeň, z ktorého sme si zahrali nových Bulánkov, predstavili sme aj slovenský titul Vranygrai umiestnený na historické Slovensko alebo aj českú sci-fi survivalovku Brahman od Cinemaxu. \r\n\r\nTento týždeň mal Phil Spencer ďalšie interview, kde hovoril o tom, že odloženie Starfieldu bolo správne rozhodnutie. Spomenul, že streamovací Xbox Keystone bol odložený pre svoju cenu, ako aj to, že odkúpenie Activisionu nie je primárne o Call of Duty a hra na Playstation platformách zostane. Primárne je totiž o mobilných hrách. Keď sme pri mobiloch, dozvedeli sme sa, že Google zaplatilo veľké peniaze Activisionu, aby si nespravili vlastný store.\r\n\r\nZároveň Xbox spustil zľavy na čierny piatok a v USA je už Xbox Series S za 249 dolárov. Uvidíme, či dostane zľavu aj u nás, ale niekde v Nemecku teraz mali aj 199 eur. Popritom Xbox dostal aj nový update a nové zaujímavé hry prichádzajú aj do Game Passu. Rovnako zľavy na gamepady, PS Plus a hry dostalo PlayStation.\r\n\r\nSony popritom vydalo Spider-man: Miles Morales na PC, čo nie je zlá hra, ale cena je na staršiu samostatnú expanziu vysoká. Zverejnené boli nominácie na The Game Awards, ktoré vedie nový God of War. Zároveň Splinter Cell oslavoval 15 rokov. Ubisoft ho ponúka zadarmo a ponúkli aj prvé koncepty z remaku hry. \r\n\r\nZ hardvéru dostali RTX4080 karty recenzie a rovno aj vyšli. Ponúkajú výkon niekde v strede medzi RTX3090ti a 4090, aj keď u nás za vysokú cenu medzi 1500 a 1900 eurami. Zároveň Nvidia doriešila pripájacie káble grafík, kde hovorí, že si treba dávať pozor na dobré zasunutie konektora. Popritom už vypustila Geforce Now aplikáciu do Samsung televízorov a to do ročníkov 2021 a 2022. Rovnako Samsung už povolil Xbox aplikáciu aj pre 2021 televízory.\r\n\r\n','2022-11-20');
INSERT INTO `novinkas` VALUES (17,'Warhammer 40,000: Darktide vydal svoj soundtrack','Warhammer 40,000: Darktide, temná kooperačná akcia od autorov Vermintide, vyjde na PC už o pár dní. Hra vás prenesie do sci-fi verzie Warhammer univerza, kde musíte prežiť v bojoch proti hordám nepriateľov. Keďže je celá ladená viac temne, takmer hororovo, zodpovedá tomu aj hudba. O tú sa postaral svetoznámy skladateľ Jesper Kyd. Ukážku si môžete vypočuť na Youtube a celý soundtrack nájdete na Spotify a Steame.\r\n\r\n','2022-11-20');
INSERT INTO `novinkas` VALUES (18,'PETA chce nový režim pre God of War Ragnarök, ktorý odstráni všetko násilie na zvieratách','\r\n\r\nNezisková organizácia na ochranu práv zvierat požiadala štúdio Santa Monica o \"režim PETA\", aby Kratos mohol ušetriť životy zvierat, ktoré stretne na svojej ceste. Ten v hre pobil množstvo zvierat, vrátane medveďa na začiatku hry. Treba však poznamenať, že väčšina z nich sú mýtické tvory a nie skutočné. Navyše na väčšinu fauny, ktorá sa v severskom svete nachádza, hráč nemôže zaútočiť. Hra vám doslova bráni hodiť po nich sekeru.\r\n\r\nPETA sa však búri najmä proti boss fightu, ktorým je obrovský vlk Garm. PETA konkrétne uviedla vo svojom tweete: „Tento pes bol celé veky uväznený vonku na reťazi v chlade. Kratos a Atreus ho našli v žalostných podmienkach, ako znáša chladné následky Fimbulwinteru bez akéhokoľvek prístrešku. Nemal k dispozícii žiadne jedlo ani vodu. Všetky psy si zaslúžia milujúce domovy a teplé gauče, aj keď majú 60 stôp\". To, čo ale PETA asi nechápe je, že Garm je tiež fiktívne zviera.\r\n\r\n','2022-11-20');

--
-- Table structure for table `users`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `column_name` int(11) NOT NULL COMMENT 'id',
  `login` varchar(100) NOT NULL,
  `hash` varchar(100) NOT NULL,
  PRIMARY KEY (`column_name`)
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

INSERT INTO `users` VALUES (1,'admin','$2y$10$GRA8D27bvZZw8b85CAwRee9NH5nj4CQA6PDFMc90pN9Wi4VAWq3yq');
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-11-22  6:54:09
