CREATE DATABASE  IF NOT EXISTS `bd_trainer_one` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `bd_trainer_one`;
-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: localhost    Database: bd_trainer_one
-- ------------------------------------------------------
-- Server version	8.0.30

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `tbb_area`
--

DROP TABLE IF EXISTS `tbb_area`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbb_area` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `bodypart` varchar(100) NOT NULL,
  `tipo` enum('Fortaleza','Extención','Plometría') NOT NULL,
  `equipo` varchar(150) NOT NULL,
  `clasificacion` varchar(50) NOT NULL,
  `ejercicios_ID` int NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ID_UNIQUE` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbb_area`
--

LOCK TABLES `tbb_area` WRITE;
/*!40000 ALTER TABLE `tbb_area` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbb_area` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbb_ejercicios`
--

DROP TABLE IF EXISTS `tbb_ejercicios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbb_ejercicios` (
  `id` int NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(100) NOT NULL,
  `Descripcion` text NOT NULL,
  `Nivel` enum('Principiante','Intermedio') NOT NULL,
  `Promedio` int NOT NULL,
  `estatus_ID` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbb_ejercicios`
--

LOCK TABLES `tbb_ejercicios` WRITE;
/*!40000 ALTER TABLE `tbb_ejercicios` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbb_ejercicios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbb_equipo`
--

DROP TABLE IF EXISTS `tbb_equipo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbb_equipo` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `tipo` varchar(120) NOT NULL,
  `meterial` varchar(100) NOT NULL,
  `uso` text NOT NULL,
  `tbb_area_ID` int NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ID_UNIQUE` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbb_equipo`
--

LOCK TABLES `tbb_equipo` WRITE;
/*!40000 ALTER TABLE `tbb_equipo` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbb_equipo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbb_lugar`
--

DROP TABLE IF EXISTS `tbb_lugar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbb_lugar` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `tipo` enum('Gimnasio','Casa') NOT NULL,
  `nivel` enum('Avanzado','Intermedio','Principiante') NOT NULL,
  `ejercicio_ID` int NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ID_UNIQUE` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbb_lugar`
--

LOCK TABLES `tbb_lugar` WRITE;
/*!40000 ALTER TABLE `tbb_lugar` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbb_lugar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbb_personas`
--

DROP TABLE IF EXISTS `tbb_personas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbb_personas` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `genero` enum('M','F') NOT NULL,
  `tipo_entrenamiento` enum('Volumen','Adelgazamiento','Resistencia') NOT NULL,
  `Peso_promedio` int NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `apellido` varchar(100) NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ID_UNIQUE` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbb_personas`
--

LOCK TABLES `tbb_personas` WRITE;
/*!40000 ALTER TABLE `tbb_personas` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbb_personas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'bd_trainer_one'
--

--
-- Dumping routines for database 'bd_trainer_one'
--
/*!50003 DROP FUNCTION IF EXISTS `fn_bandera_porcentaje` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `fn_bandera_porcentaje`(v_porcentaje INT) RETURNS int
    DETERMINISTIC
BEGIN
   /* Declaración de una variable con un valor aleatorio de entre 0 y 100*/
   DECLARE v_valor INT DEFAULT (fn_numero_aleatorio_rangos(0,100));
   /* Declaración de una variable booleana con valor inicial de falso */
   DECLARE v_bandera BOOLEAN DEFAULT false;
   
   IF v_valor <= v_porcentaje THEN 
      SET v_bandera = true;
   END IF;
   RETURN v_bandera;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `fn_genera_nombre_simple` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `fn_genera_nombre_simple`(v_genero CHAR, v_pais VARCHAR(50)) RETURNS varchar(50) CHARSET utf8mb4
    DETERMINISTIC
BEGIN
    DECLARE v_nombre_generado VARCHAR(100) DEFAULT NULL;
    
    CASE v_pais 

## -------------------------- ARGENTINA  (Leslie Aparicio)------------------------------------------------------------------------------- ##
	WHEN "Argentina" THEN
		IF v_genero = "M" THEN 
			SET v_nombre_generado = ELT(fn_numero_aleatorio_rangos(1,75),
               "Álvaro", "Benjamín", "Cipriano", "Dante", "Eladio", "Fidel", "Genaro", "Hugo", "Ignacio" ,"Jaime",
               "Florentino", "Leoncio", "Mariano", "Noah", "Oleguer", "Patricio", "Edmundo", "Roque", "Santino" ,"Thiago",
               "Ulises", "Valentín", "Walter", "Nicasio", "Zenon", "Arnoldo", "Bautista", "Cirilo", "Dylan" ,"Evaristo",
               "Fausto", "Gael", "Miguel", "Isidoro", "Javier", "Norberto", "Liam", "Mauro", "Natalio" ,"Osmar",
               "Paulino", "Rafael", "Leandro", "Timoteo", "Ubaldo", "Valentino", "Wenceslao", "Zacarías", "Bruno","Gregorio",
               
## -------------------------- ARGENTINA  (Arely Aguilar IDGS_200559)------------------------------------------------------------------------------- ##
               "Agustín", "Facundo", "Nicolás", "Sebastián", "Matías", 
               "Lucas", "Juan", "Emiliano", "Santiago", "Alejandro",
               "Gonzalo", "Joaquín", "Martín", "Franco", "Andrés", 
               "Leonardo", "Diego", "Federico", "Ramiro", "Carlos", 
               "Ezequiel", "Manuel", "Roberto", "Roberto", "Gabriel");  
               
																			
		ELSEIF v_genero = "F" THEN 
            SET v_nombre_generado = ELT(fn_numero_aleatorio_rangos(1,75),
				"Antonella", "Berenice", "Catalina", "Delia", "Estela", "Felipa", "Gloria", "Haydee", "Isabel" ,"Josefa",
                "Herminia", "Lucrecia", "Mirta", "Nelida", "Olga", "Pilar", "Roxana", "Raquel", "Soledad" ,"Teresita",
                "Nelly", "Vanessa", "Yolanda", "Victoria", "Ruth", "Ariel", "Blanca", "Claudia", "Dora" ,"Esther",
                "Francisca", "Griselda", "Helena", "Ida", "Jorgelina", "Karina", "Lorenza", "Mariel", "Nora" ,"Clelia",
                "Patricia", "Ramona", "Stella", "Tomasa", "Alcira", "Julieta", "Debora", "Viviana", "Zunilda","Georgina",
               
## -------------------------- ARGENTINA  (Arely Aguilar IDGS_200559)------------------------------------------------------------------------------- ##
				"Agustina", "Camila", "Florencia", "Milagros", "Rocío", 
                "Belén", "Guadalupe", "Celeste", "Abril", "Renata",
                "Juliana", "Luciana", "Valentina", "Martina", "Lucía", 
                "Micaela", "Emilia", "Josefina", "Carolina", "Brenda", 
                "Noelia", "Marina", "Lourdes", "Lucila", "Sofía");
		END IF;              
            
            
## -------------------------- ARMENIA  (Leslie Aparicio)------------------------------------------------------------------------------- ##
	WHEN "Armenia" THEN
		IF v_genero = "M" THEN 
			SET v_nombre_generado = ELT(fn_numero_aleatorio_rangos(1,50),
				"Aram", "Berj", "Christapor", "Diran", "Erik", "Manoug", "Gadar", "Hakov", "Ishkhan" ,"Janig",
                "Kach", "Gomidas", "Mark", "Narek", "Drtad", "Pegor", "Apov", "Torkom", "Shant" ,"Tigran",
                "Yergat", "Zorait", "Mher", "Samvel", "Michael", "Arek", "Barkev", "Hovhannes", "Donabed" ,"Hazar",
                "Kail", "Gor", "Arturo", "Mardig", "Hrazdán", "Kevork", "Louys", "Melyk", "Dzaghig" ,"Abraham",
                "Petros", "Ari", "Shent", "Toros", "Yeram", "Lori", "Krikor", "Zarkis", "Levon","Zabel");                                                                                                   ELSEIF v_genero = "F" THEN 
			SET v_nombre_generado = ELT(fn_numero_aleatorio_rangos(1,50),
				"Adrine", "Barig", "Luseres", "Dalita", "Alyag", "Dzirani", "Galy", "Hasmig", "Isgouhi" ,"Jebid",
                "Elen", "Lar", "Mane", "Nanor", "Ovsanna", "Pari", "Nver", "Houshing", "Siranoush" ,"Tabar",
                "Marmar", "Lucine", "Yeghisabet", "Talar", "Palasan", "Aghavni", "Baydsar", "Anahit", "Datev" ,"Sosi",
                "Lori", "Gateel", "Haverj", "Aline", "Joudig", "Amalia", "Lelag", "Milena", "Azniv" ,"Dzirani",
                "Pareli", "María", "Sevan", "Takuhi", "Yerchanig", "Zabel", "Dzia", "Vanya", "Narin","Tangakin");
		END IF;


#----------------------------BÉLGICA (Carolina Arias)--------------------------------------------#
	WHEN "Bélgica" THEN
		IF v_genero = "M" THEN
			SET v_nombre_generado = ELT(fn_numero_aleatorio_rangos(1,75),
				"Lucas", "Liam", "Noah", "Adam", "Louis", "Victor", "Jules", "Mathis", "Nathan", "Maxime",
                "Felix", "Simon", "Hugo", "Thomas", "Arthur", "Timéo", "Milan", "Mohamed", "Antoine", "Samuel",
                "Tom", "Benjamin", "Axel", "Jolan", "Emile", "Léo", "Raphaël", "Ayoub", "Elias", "Eden",
                "Robin", "Youssef", "David","Mehdi", "Adrien","Théo", "Adamo", "Gabriel", "Hamza", "Younes",
                "Simon", "Lenny", "Ilyas", "Cédric", "Corentin", "Tristan","Gaspard", "Antoine", "Baptiste", "Mohamed",
        
 #----------------------------Bélgica (Elisama Calva)--------------------------------------------#
				"Dout","Fynn","Lukas","Julees","Leon",
				"Élyas","Bobbie","Raphael","Oskar","Matthéo",
                "Otis","Kay","Jabal","Mathis","Julien",
				"Lio","Milo","Viktor","Alexander","Sebastien",
				"Milas","Emil","Basil","Cyril","Lewis");
       
		ELSEIF v_genero = "F" THEN
			SET v_nombre_generado = ELT(fn_numero_aleatorio_rangos(1,75),
				"Emma", "Louise", "Lina", "Olivia", "Alice", "Juliette", "Mila", "Anna", "Sofia", "Elena", 
                "Nora", "Chloé", "Sarah", "Charlotte", "Jade", "Marie", "Sofia", "Léa", "Laura", "Zoé",
                "Noor", "Nina", "Héloïse", "Romane", "Camille", "Manon", "Amélie", "Pauline", "Margaux", "Lucie",
                "Inès", "Mathilde", "Elisa", "Axelle", "Victoria", "Clémence", "Leïla", "Margot", "Célestine", "Gabrielle",
                "Héloïse", "Valentine", "Marguerite", "Lisa", "Juliette", "Léonie", "Constance", "Apolline", "Astrid", "Alix",

#----------------------------Bélgica (Elisama Calva)--------------------------------------------#
				"Lillie","Émilia","Ella","Eden","Myla",
                "Lou","Sophia","Mya","Lucie","Liv",
                "Julya","Mía","Renée","Ellie","Lía",
                "Rachelle","Thea","Lena","Maelys","Lili",
                "Norah","Éléna","Emy","Elise","Elea");
		END IF;


##----------------------------BRASIL (Carolina Arias --------------------------------------------##
	WHEN "Brasil" THEN
		IF v_genero = "M" THEN
			SET v_nombre_generado = ELT(fn_numero_aleatorio_rangos(1, 75),
				"João", "José", "Antônio", "Francisco", "Carlos", "Paulo", "Pedro", "Lucas", "Marcos", "Luiz",
                "Fernando", "André", "Rafael", "Marcelo", "Bruno", "Vinicius", "Daniel", "Gabriel", "Rodrigo", "Maurício",
                "Thiago", "Eduardo", "Felipe", "Diego", "Ivan", "Fabio", "Arthur", "Ricardo", "Samuel", "Renato",
                "William", "Leandro", "Valmir", "Victor", "Davi", "Alex", "Geraldo", "Márcio", "Nilton", "Eder",
                "Otávio", "Enzo", "Alexandre", "Jorge", "César", "Gustavo", "Jair", "Roberto", "Agnaldo", "Ailton",
            
##----------------------------BRASIL(Eliel Diaz Galindo)  --------------------------------------------##
				"Adriano", "Afonso", "Benicio", "Bento", "Benardo", 
				"Caio", "Cristiano", "Estevao", "Felipe", "Gael",
				"Guilherme", "Heitor", "Henrique", "Hóracio", "Mathues",
				"Paulo", "Henrique", "Horácio", "Luciano", "Joaquim", 
				"Manoel", "Teodoro", "Pascoal","Carlos", "Osvaldo");
                
		ELSEIF v_genero = "F" THEN
			SET v_nombre_generado = ELT(fn_numero_aleatorio_rangos(1, 75),
				"Maria", "Ana", "Francisca", "Marcia", "Adriana", "Daniela", "Juliana", "Fernanda", "Patrícia", "Camila",
                "Amanda", "Paula", "Letícia", "Caroline", "Bruna", "Luana", "Raquel", "Renata", "Natália", "Fabiana",
                "Valéria", "Priscila", "Jéssica", "Gisele", "Viviane", "Flávia", "Luciana", "Jaqueline", "Isabela", "Marcela",
                "Lívia", "Eduarda", "Tatiana", "Tainá", "Mariana", "Isabella", "Aline", "Lorena", "Heloísa", "Vanessa",
                "Karina", "Bárbara", "Gabriela", "Andreia", "Sueli", "Nayara", "Rosângela", "Mirian", "Alice", "Júlia",
            
 ##----------------------------BRASIL(Eliel Diaz Galindo)  --------------------------------------------##
				"Mika", "Manuela", "Larissa", "Beatriz","Carla", 
				"Tahis", "Karolina", "Linda", "Marcelina","Simone",
				"Antonia", "Marcia", "Lucrecia", "Aparecida","Cristiane", 
				"Alexia", "Sandra", "Josefa", "Vera", "Sônia",
				"Lucia", "Linet",  "Tiana", "Mica", "Isabel");                       
		END IF;          


## -------------------------- CANADÁ (Pepe Briones) ------------------------------------------------------------------------------- ##
	WHEN "Canadá" THEN
		IF v_genero = "M" THEN 
			SET v_nombre_generado = ELT(fn_numero_aleatorio_rangos(1,87),
				"Aaron", "Adam", "Adrian", "Alan", "Alex", "Andrew", "Anthony", "Benjamin", "Brandon", "Brian", 
                "Cameron", "Charles", "Christopher", "Colin", "Connor", "Daniel", "David", "Derek", "Duncan", "Edward", 
                "Eric", "Ethan", "Gabriel", "George", "Graham", "Gregory", "Jacob", "James", "Jason", "Jeffrey", 
                "Jeremy", "Jesse", "John", "Jonathan", "Jordan", "Joshua", "Justin", "Kevin", "Kyle", "Liam", 
                "Lucas", "Mark", "Matthew", "Michael", "Nathan", "Nicholas", "Patrick", "Paul", "Peter", "Richard", 
                "Robert", "Ryan", "Samuel", "Scott", "Sean", "Steven", "Taylor", "Thomas", "Timothy", "Travis", 
                "Tyler", "William",
                
## -------------------------- CANADÁ  (Arely Aguilar IDGS_200559)------------------------------------------------------------------------------- ##
				"Aidan", "Austin", "Braley", "Caleb", "Carter", 
				"Cole", "Devin", "Donovan", "Ethan", "Evan", 
				"Garrett", "Grant", "Hayden", "Isaac", "Jackson", 
				"Jacob", "Jayden", "Jonah", "Jordan", "Justin", 
				"Liam", "Logan", "Mason", "Noah", "Owen");
           
		ELSEIF v_genero = "F" THEN 
			SET v_nombre_generado = ELT(fn_numero_aleatorio_rangos(1,76),
				"Aaliyah", "Abigail", "Alexa", "Alexandra", "Alice", "Alicia", "Alyssa", "Amelia", "Amy", "Angela", 
                "Annabelle", "Ashley", "Audrey", "Aurora", "Avery", "Brianna", "Brooklyn", "Cadence", "Caroline", "Charlotte", 
                "Chloe", "Clara", "Ella", "Emily", "Emma", "Grace", "Hailey", "Hannah", "Isabella", "Isabelle", 
                "Jasmine", "Jennifer", "Jessica", "Jordan", "Julia", "Kaitlyn", "Kate", "Katherine", "Kaylee", "Leah", 
                "Lily", "Madison", "Makayla", "Mia", "Olivia", "Paige", "Rachel", "Rebecca", "Samantha", "Sarah", 
                "Sophia",
  
## -------------------------- CANADÁ  (Arely Aguilar IDGS_200559)------------------------------------------------------------------------------- ##
				"Addison", "Ava", "Brooklyn", "Claire", "Ella", 
				"Evelyn", "Gabrielle", "Harper", "Hazel", "Isla", 
				"Julia", "Kennedy", "Leah", "Lily", "Maya", 
				"Natalie", "Nova", "Olivia", "Piper", "Quinn", 
				"Ruby", "Scarlett","Stella", "Victoria", "Zoe"); 
		END IF;


## -------------------------- COREA DEL SUR (Pepe Briones) ------------------------------------------------------------------------------- ##
	WHEN "Corea del Sur" THEN
		IF v_genero = "M" THEN 
			SET v_nombre_generado = ELT(fn_numero_aleatorio_rangos(1,53),
				"Chang-min", "Chul", "Dae-hyun", "Dong-hyun", "Gi-tae", "Gi-woong", "Gyu-han", "Gyu-nam", "Gyu-won", "Han-gyeol",
				"Han-sol", "Ho-seok", "Ho-yong", "Hoon", "Hoon-jin", "Hoon-joon", "Hwan", "Hwan-hee", "Hwan-woo", "Hyeon-jun",
				"Hyeong-jun", "Hyeong-woo", "Hyuk", "Hyun", "Hyun-joon", "Hyun-jun", "Hyun-ki", "Hyun-seok", "Il-sung", "Jae-ha",
				"Jae-ho", "Jae-hun", "Jae-hyeon", "Jae-hyuk", "Jae-kyung", "Jae-min", "Jae-suk", "Jae-wook", "Jeong", "Jeong-hun",
				"Jeong-hwan", "Jeong-hyeon", "Ji-hoon", "Jin-ho", "Jin-hyung", "Jong-ho", "Jong-hoon", "Joon-ho", "Joon-woo","Jun-seo", 
                "Kang-min", "Ki-bum", "Ki-hoon");
		ELSEIF v_genero = "F" THEN 
			SET v_nombre_generado = ELT(fn_numero_aleatorio_rangos(1,51),
				"Ah-reum", "Bomi", "Bo-yeon", "Chae-won", "Da-hyun", "Eun-ji", "Ga-eun", "Hae-won", "Hana", "Hee-jin", 
                "Hye-jin", "Hye-won", "Hyo-jin", "Hyo-rin", "Jae-eun", "Ji-eun", "Ji-hye", "Ji-hyun", "Ji-min", "Ji-woo", 
                "Ji-yeon", "Jin-ah", "Jin-hee", "Jin-joo", "Jin-kyung", "Jin-sol", "Jin-young", "Joo-eun", "Joo-hyun", "Ye-eun",
                "Joo-ri", "Kyung-ah", "Kyung-hee", "Kyung-jin", "Mi-ae", "Min-ah", "Min-ji", "Min-seo", "Na-ra", "Sae-bom", 
                "Seo-yeon", "Seul-gi", "Seung-hee", "Shin-hye", "Si-eun", "Si-hyeon", "So-hee", "So-yeon", "Su-ah", "Su-ji", 
                "Ye-ji");
		END IF;
        
        
## -------------------------- EGIPTO (Ana Crisanto) ------------------------------------------------------------------------------- ##
	WHEN "Egipto" THEN
		IF v_genero = "M" THEN 
			SET v_nombre_generado = ELT(fn_numero_aleatorio_rangos(1,85),
				"Mohamed", "Ahmed", "Mahmoud", "Mostafa", "Ibrahim", "Khaled", "Muhammad", "Ayman", "Ashraf", "Hassan", 
				"Hossam", "Sherif", "Osama", "Hany", "Yasser", "Tarek", "Sayed", "Karim", "Emad", "Hesham",
				"Wael", "Tamer", "Hamada", "Walid", "Yousef", "Salah", "Abdullah", "Samir", "Waleed", "Hatem",
				"Hisham", "Nabil", "Haitham", "Ramadan", "Abdelrahman", "Said", "Mohsen", "Ismail", "Jamal", "Shady",
				"Neven", "Gigi", "Abdelaziz", "Joseph", "Hasan", "Hady", "Malek", "Sabri", "Shaban", "Abdulaziz",
            
## ----------------------------------Egipto Josseline Alvarado Genero M ------------------------------------------------------------ ##         
				"Mero", "Hanbal", "Selim", "Nour Atiyeh", "Haji Daher", 
				"Monim Seif", "Dodsr", "Mody", "Kafele", "Mido", 
				"Kasiya", "Haji", "Aymn", "Islam", "Osman", 
				"Ragab","Nizsm", "Usi", "Bebti", "Chatuluka", 
				"Mando", "Ashraf",  "Ari", "Gyasi", "Achraf", 
				"Assem","Issa", "Reda", "Tsekani", "Psamtic", 
				"Gyasi" , "Momo", "Husani", "Kareem", "Masud");            
            
		ELSEIF v_genero = "F" THEN 
			SET v_nombre_generado = ELT(fn_numero_aleatorio_rangos(1,83),
				"Ema", "Mona", "Heba", "Marwa", "Asmaa", "Amira", "Dina", "Fatma", "Amal", "Mai", 
				"Doaa", "Noha", "Rania", "Salma", "Nour", "Hanan", "Islam", "Rasha", "Sarah", "Ghada",
				"Samar", "Hoda", "Basma", "Manal", "Sahar", "Hend", "Rehab", "Walaa", "Azza", "Shaimaa", 
				"Wafaa", "Malak", "Samah", "Habiba", "Omnia", "Reda", "Salwa", "Sally", "Manar", "Zeinab", 
				"Zahra", "Safaa", "Nahed", "Seham", "Rahma", "Hayam", "Sabah", "Nermin", "Samira", "Ahlam",
            
            
## -------------------------------------------Josseline Alvarado Genero F ---------------------------------------- ##            
				"Souhila", "Shadya", "Zalika", "Rana", "Quibailah", 
				"Lapis", "Alima", "Karima","Myrrh", "Tale", 
				"Sahirah", "Nadeen", "Ayah", "Nadeen","Maria", 
				"Hana", "Samia", "Iman", "Kakra", "Mesi", 
				"Aliaa","Talibah", "Sohair", "Kaikara", "Moushira", 
				"Haqikah","Samia", "Sanura", "Chavi", "Ife", 
				"Norhan", "Olufemi", "Naima");            
		END IF;
        
        
## -------------------------- ESPAÑA (Ana Crisanto) ------------------------------------------------------------------------------- ##
	WHEN "España" THEN
		IF v_genero = "M" THEN 
			SET v_nombre_generado = ELT(fn_numero_aleatorio_rangos(1,75),
				"Antonio", "Manuel", "Jose", "Francisco", "David", "Juan", "Javier", "Daniel", "Carlos", "Jesus",
                "Alejandro", "Miguel", "Rafael", "Pedro", "Pablo", "Angel", "Sergio", "Fernando", "Jorge", "Luis",
                "Alberto", "Alvaro", "Adrian", "Diego", "Raul", "Ivan", "Ruben", "Enrique", "Oscar", "Ramon",
                "Vicente", "Andres", "Joaquin", "Santiago", "Victor", "Eduardo", "Mario", "Roberto", "Jaime", "Marcos",
                "Ignacio", "Alfonso", "Jordi", "Hugo", "Ricardo", "Salvador", "Guillermo", "Emilio", "Gabriel", "Gonzalo",
               
##--------------------------España (JOSE LUIS PICAZO) -----------------------------------------##               
				"Gabriel","Marc","Izan","Julio","Julian",
                "Mohamed","Tomas","Martin","Agustin","Nicolas",
                "Ismael","Joan","Felix","Samuel","Cristian",
                "Ailton","Lucas","Hector","Iker","Josep",
                "Alex","Mariano","Domingo","Sebastian","Alfredo");
	
		ELSEIF v_genero = "F" THEN 
			SET v_nombre_generado = ELT(fn_numero_aleatorio_rangos(1,75),
				"Maria", "Carmen", "Josefa", "Isabel", "Cristina", "Marta", "Francisca", "Lucia", "Antonia", "Dolores",
                "Sara", "Paula", "Elena", "Raquel", "Pilar", "Concepcion", "Manuela", "Mercedes", "Julia", "Beatriz",
                "Nuria", "Silvia", "Rosario", "Juana", "Alba", "Irene", "Teresa", "Patricia", "Montserrat", "Andrea",
                "Rocio", "Monica", "Rosa", "Alicia", "Sonia", "Sandra", "Angela", "Marina", "Susana", "Natalia",
                "Margarita", "Claudia", "Eva", "Sofia", "Carla", "Esther", "Noelia", "Veronica", "Angeles", "Nerea",
               
##--------------------------España (JOSE LUIS PICAZO) -----------------------------------------##               
               "Laura","Ana","Encarnacion","Yolanda","Inmaculada",
               "Carolina","Ines","Mariana","Miriam","Daniela",
               "Lorena","Victoria","Amparo","Catalina","Martina",
               "Lidia","Alejandra","Celia","Consuelo","Olga",
               "Ainhoa","Fatima","Gloria","Emilia","Clara");
		END IF;
            
            
## -------------------------- Cuba (Edgar Cruz)------------------------------------------------------------------------------- ##
	WHEN "Cuba" THEN
		IF v_genero = "M" THEN 
			SET v_nombre_generado = ELT(fn_numero_aleatorio_rangos(1,75),
				"Roberto","Luis","Jose","Rafael","Ramon","Antonio","Jorge","Francisco"," Manuel","Carlos",
				"Alberto","Raul","Pedro","Orlando","Miguel","Rolando","Angel","Ricardo","Ernesto","Felix",
				"Mario","Guillermo","Andres","Armando","Lazaro","Enrique","Julio","Alfredo","Osvaldo","Hector",
				"Oscar","Gilberto","Reinaldo","Alejandro","Leonardo","Rodolfo","Rodolfo","Rigoberto","Emilio","Fernando",
				"Pablo","Daniel","Omar","Humberto","Nelson","Reynaldo","Victor","Tomas","Sergio","Santiago",
## -------------------------- (marco rosas)------------------------------------------------------------------------------- ##
				"Edel","Yanko","Maikel","Jasiel","Yadiel",
				"Arel","Rainier","Yussel","Daris","Luis",
				"Luan","Josue","Renier","Alexey","Erick",
				"Alain","Ruslan","Roberto","Aniel","Andy",
				"Ernesto","Arian","Odel","Karel","Gabriel");

		ELSEIF v_genero = "F" THEN 
			SET v_nombre_generado = ELT(fn_numero_aleatorio_rangos(1,75),
				"Maria","Caridad","Rosa","Mercedes","Isabel","Barbara","Teresa","Martha","Maritza","Juana",
				"Margarita","Nancy","Miriam","Carmen","Olga","Elena","Yolanda","Xiomara","Luisa","Esther",
				"Milagros","Silvia","Odalis","Migdalia","Sonia","Raquel","Julia","Belkis","Angela","Mirtha",
				"Ana","Luisa","Odalys","Norma","Gladys","Lourdes","Lidia","Maribel","Tania","Marta",
				"Josefa","Hilda","Alicia","Mayra","Esperanza","Idalmis","Ramona","Marisol","Alina","Niurka",
                
 ## -------------------------- (marco rosas)------------------------------------------------------------------------------- ##           
				"Yeider","Alian","Aliet","shley","Deylert",
				"Elien","Eniel","Gertrud","Haile","Irán",
				"Jogli","Johari","Jonan","Kimani","Norge",
				"Raisa","Zayn","Raisel","Sarahi","Vajk",
				"Yan","Yanara","Yansel","Yaril","Yasmel");
		END IF;


## -------------------------- Guatemala (Edgar Cruz) ------------------------------------------------------------------------------- ##
	WHEN "Guatemala" THEN
		IF v_genero = "M" THEN 
			SET v_nombre_generado = ELT(fn_numero_aleatorio_rangos(1,50),
				"Juan","Luis","Pedro","Manuel","Miguel","Mario","Victor","Domingo","Jose","Carlos",
				"Francisco","Jorge","Edgar","Santiago","Pablo","Antonio","Cesar","Marco","Ricardo","Sebastian",
				"Marvin","Guillermo","Alberto","Roberto","Edwin ","Martin","Felipe","Angel","Byron","Daniel",
				"Erick","Alejandro","Alfredo","Gustavo","Mateo","Sergio","Andres","Walter","Enrique","David",
            	"Fredy","Eduardo","Rigoberto","Nicolas","Mariano","Lorenzo","Rodolfo","Emilio","Raul","Alfonso");

		ELSEIF v_genero = "F" THEN 
			SET v_nombre_generado = ELT(fn_numero_aleatorio_rangos(1,50),
				"Maria","Ana","Juana","Santos","Rosa","Marta","Blanca","Irma","Sandra","Aura",
				"Carmen","Gloria","Francisca","Silvia","Olga","Silvia","Margarita","Brenda","Manuela","Claudia",
				"Vilma","Isabel","Ingrid","Julia","Miriam","Zoila","Tomasa","Sonia","Norma","Mirna",
				"Catarina","Lidia","Mayra","Dora","Candelaria","Teresa","Elsa","Alba","Lucia","Paula ",
				"Reyna","Hilda","Lilian","Dominga","Berta","Sara","Gladys","Angela","Rosario","Josefa");
		END IF;
        
        
#----------------------------ISRAEL(Mariano Islas)------------------------------#
	WHEN "Israel" THEN
		IF v_genero = "M" THEN
			SET v_nombre_generado = ELT(fn_numero_aleatorio_rangos(1,50),
				"Abed","Ben","Dmitry","Evgeny","Fuad","Gabriel","Hassan","Igor","Jamal","Lev",
				"Mohammed","Noam","Oleg","Paul","Qasim","Rony","Saul","Tariq","Uriel","Vladislav",
				"Waleed","Yosef","Ziyad","Aharon","Boris","Dani","Eliezer","Faivel","Gideon","Hatem",
				"Ibrahim","jerahmmel","Leon","Muhammad","Nicolai","Osama","Roman","Samuel","Tamar","Viktor",
				"Yuval","Ayman","Betuel","Dalet","Eitan","Frayde","Gregory","Haim","Iyad","Jacobo");
		ELSEIF v_genero = "F" THEN
			SET v_nombre_generado = ELT(fn_numero_aleatorio_rangos(1,50),
				"Adi","Batya","Chana","Dalia","Eden","Galit","Hadas","Irit","Keren","Leah",
				"Maayan","Naomi","Odelia","Rachel","Sara","Tali","Vardit","Yael","Zehava","Adina",
				"Bracha","Chaya","Daniella","Einat","Gila","Hagar","Liat","Michal","Nava","Ora",
				"Rina","Sagivah","Tamara","Varda","Yafa","Zehavit","Ariel","Devorah","Ela","Hannah",
				"Liel","Miriam","Noa","Orli","Ruth","Shira","Tamar","Vered","Yamit","Zemirah");
		END IF;
        
        
#---------------------------JAPÓN (Mariano Islas)---------------------------------#
	WHEN "Japón" THEN
		IF v_genero = "M" THEN
			SET v_nombre_generado = ELT(fn_numero_aleatorio_rangos(1, 75),
				"Aiko","Bishamon","Dai","Eiji","Fudo","Ganju","Hachi","Ibuki","Jiro","Kaede", 
				"Lori","Makoto","Nao","Ohara","Rafu","Sabuduro","Tadao","Umi","Washi","Yamato",
				"Akemi","Botan","Daichi","Fujita","Gô","Hachiro","Ichiro","Jo","Kai","Mamoru",
				"Nana","Osamu","Raiden","Sadao","Tadashi","Usui","Wataru","Yasahiro","Aki","Byacuya",
				"Daiki","Fumio","Goku","Haiden","Ichigo","Joji","Kaien","Maro","Nagisa","Otani",
            
#---------------------------JAPÓN (Gabriel Guzmán García 9A)---------------------------------#
				"Kenji","Hiroshi","Shigeru","Sachiko","Masako",
				"Katsumi","Yoko","Michiko","Toshio","Yoshiko",
				"Hiromi","Hiroko","Yoshio","Kazuo","Akira",
				"Keiko","Hisako","Yoshimi","Fumiko","Masao",
				"Toshiko","Kiyoshi","Takashi","Yukio","Hideo");
            
		ELSEIF v_genero = "F" THEN
			SET v_nombre_generado = ELT(fn_numero_aleatorio_rangos(1,75),
				"Ai","Bunko","Chiasa","Daruma","Emi","Fuji","Gen","Hana","Ima","Jin",
				"Kaede","Leiko","Madoka","Nanako","Orino","Reiko","Sachi","Taiki","Ume","Wakana",
				"Yori","Aimi","Chie","Daichi","Emiko","Fumiko","Gina","Hanae","Isamu","Jun",
				"Kanon","Mai","Nanami","Osamu","Rieko","Sachiko","Také","Umi","Yoshi","Aina",
				"Chieko","Daiki","Eimi","Fuyuko","Hanako","Izanami","Junko","Kaori","Majime","Naoki",
#---------------------------JAPÓN (Gabriel Guzmán García 9A)---------------------------------#            
				"Aiko","Aimi","Hibiki","Hatsu","Dai",
				"Daichi","Emi","Kazue","Kei","Hana",
				"Yori","Haru","Haruka","Maru","Manami",
				"Kasumi","Kaoru","Maru","Masako","Naomi",
				"Noa","Mai","Rai","Sadashi","Saoori");
		END IF;


## -------------------------- Italia (Alejandro Romero) ------------------------------------------------------------------------------- ##
	WHEN "Italia" THEN
		IF v_genero = "M" THEN
			SET v_nombre_generado = ELT(fn_numero_aleatorio_rangos(1,75),
				"Alberto", "Alessandro", "Alessio", "Alex", "Andrea", "Angelo", "Antonio", "Carlo", "Claudio" ,"Cristiano",
                "Dario", "Davide", "Diego", "Edoardo", "Emanuele", "Emilio", "Enrico", "Marco", "Fabio" ,"Federico",
                "Filippo", "Francesco", "Gabriele", "Giovanni", "Giacomo", "Giorgio", "Giuseppe", "Guglielmo", "Jacopo" ,"Leonardo",
                "Lorenzo", "Luca", "Mauro", "Matteo", "Mattia", "Mirko", "Nicolo", "Pietro", "Raffaele" ,"Riccardo",
                "Salvatore", "Simone", "Stefano", "Tommaso", "Umberto", "Vincenzo", "Vittorio", "Walter", "William","Massimo",
               
 ## --------------------------DANIELA ALVAREZ ------------------------------------------------------------------------------- ##
               "Adolfo", "Adriano", "Alonzo", "Amadeo", "Arnaldo",
               "Baldassare", "Celestino", "Dante", "Basilio", "Michaelangelo",
               "Bartolomeo", "Felippo", "Celio", "Orsino", "Rinaldo", 
               "Valentino", "Virgilio", "Sabino", "Nestore", "Liugi",
               "Battista", "Camill","Emill","Gustovf","Domenico");
               
		ELSEIF v_genero = "F" THEN
			SET v_nombre_generado = ELT(fn_numero_aleatorio_rangos(1,75),
				"Agnesa", "Alessia", "Alice", "Asia", "Aurora", "Beatrice", "Benedetta", "Camilla", "Carlotta", "Chiara",
                "Costanza", "Debora", "Denise", "Elisa", "Eleonora", "Erica", "Federica", "Francesca", "Gaia", "Giorgia",
                "Giulia", "Giuliana", "Gloria", "Ginevra", "Irene", "Isabella", "Laura", "Lisa", "Ludovica", "Luana",
                "Margherita", "Marika", "Marta", "Martina", "Matilde", "Michela", "Noemi", "Rebecca", "Sara", "Silvia",
                "Simona", "Sofia", "Valentina", "Vanessa", "Veronica", "Viola", "Virginia", "Viviana", "Giusy", "Roberta",

## --------------------------DANIELA ALVAREZ ------------------------------------------------------------------------------- ##                
				"Bianca", "Grazia", "Allegra", "Graziella", "Arianna",
                "Stella", "Patrizia", "Marcella", "Mia", "Isabel",
                "Lorenza", "Idara", "Adrienna", "Dehidara", "Rosetta", 
                "Eleonora", "Daniella", "Fiorella", "Domenica", "Donna",
                "Ermine", "Gaia","Marina","Martia","Idalia");
		END IF;
        
        
## -------------------------- Kenia (Alejandro Romero)------------------------------------------------------------------------------- ##
	WHEN "Kenia" THEN
		IF v_genero = "M" THEN 
			SET v_nombre_generado = ELT(fn_numero_aleatorio_rangos(1,51),
				"Abdi", "Abdul", "Abel", "Abraham", "Alfred", "Brian", "Charles", "Collins", "Daniel", "David", 
                "Dennis","Dickson", "Elijah", "Emmanuel", "Eric", "Francis", "George", "Godfrey", "Isaac", "Jackson", 
                "James","Jared", "John", "Joseph", "Joshua", "Kelvin", "Kennedy", "Kevin", "Martin", "Michael", 
                "Moses", "Nicholas", "Patrick", "Paul", "Peter", "Philip", "Robert", "Simon", "Stephen", "Timothy", 
                "Titus", "Tom", "Victor", "Vincent", "William", "Wilson", "Luca", "Isai", "Oleg", "Boris", 
                "Pavlo");
		ELSEIF v_genero = "F" THEN 
			SET v_nombre_generado = ELT(fn_numero_aleatorio_rangos(1,50),
				"Amina", "Ann", "Asha", "Beatrice", "Caroline", "Catherine", "Charity", "Damaris", "Diana", "Elizabeth",
                "Eunice", "Faith", "Grace", "Hellen", "Jackline", "Jane", "Janet", "Joyce", "Judith", "Julia",
                "June", "Kathleen", "Lucy", "Margaret", "Mary", "Mercy", "Monica", "Nancy", "Nelly", "Pauline", 
                "Peninah", "Peris", "Phyllis", "Priscilla", "Rahab", "Rebecca", "Risper", "Rose", "Ruth", "Sarah", 
                "Sofia", "Susan", "Tabitha", "Teresia", "Veronica", "Victoria", "Wambui", "Wanjiru", "Winnie", "Paka");
		END IF;
            
            
## -------------------------- LITUANIA (Zacek Gutierrez) ------------------------------------------------------------------------------- ##
	WHEN "Lituania" THEN
		IF v_genero = "M" THEN 
			SET v_nombre_generado = ELT(fn_numero_aleatorio_rangos(1,50),
				"Andrius","Tadas","Tomas","Jonas","Arvydas","Darius","Algirdas","Rokas","Saulius","Marius",
                "Gintaras","Aurimas","Mindaugas","Žygimantas","Linas","Vidas","Rimantas","Gediminas","Mantas","Dainius",
                "Kęstutis","Antanas","Artūras","Nerijus","Egidijus","Gytis","Domas","Julius","Ignas","Mantas",
                "Kestas","Donatas","Edvardas","Aleksandras","Simas","Kazys","Augustas","Vytautas","Evaldas","Algis",
                "Marijus","Rytis","Tomas","Raimondas","Vytenis","Artūras","Šarūnas","Vaidas","Deividas","Marius");
		ELSEIF v_genero = "F" THEN 
			SET v_nombre_generado = ELT(fn_numero_aleatorio_rangos(1,50),
				"Eglė","Rasa","Jurgita","Ieva","Laura","Vilija","Giedrė","Lina","Dovilė","Agnė",
                "Daiva","Inga","Renata","Kristina","Julija","Vaida","Greta","Sonata","Simona","Eglė",
                "Indrė","Aistė","Karolina","Raminta","Austėja","Rūta","Edita","Monika","Jolanta","Sigita",
                "Rita","Ieva","Gintarė","Živilė","Miglė","Kotryna","Loreta","Eglė","Kristina","Ingrida",
                "Dalia","Eimantė","Sandra","Reda","Vaiva","Rūta","Laima","Eglė","Diana","Asta");
		END IF;
        
        
## -------------------------- KUWAIT (Zacek Gutierrez) ------------------------------------------------------------------------------- ##
	WHEN "Kuwait" THEN
		IF v_genero = "M" THEN 
			SET v_nombre_generado = ELT(fn_numero_aleatorio_rangos(1,50),
				"Ahmad","Mohammed","Ali","Abdulaziz","Saud","Fahad","Meshari","Abdullah","Khalid","Jassem",
                "Nasser","Mubarak","Faisal","Hamad","Abdulrahman","Talal","Khaled","Mishari","Saad","Yousef",
                "Saleh","Bader","Salem","Meshal","Nawaf","Jaber","Rashid","Meshari","Ayman","Abdullah",
                "Adel","Yaqoub","Abdullah","Marzouq","Turki","Abdullah","Badr","Mohammed","Talal","Essa",
                "Meshari","Abdullah","Meshal","Waleed","Khalifa","Mishaal","Abdullah","Abdulkareem","Abdulwahab","Saad");
		ELSEIF v_genero = "F" THEN 
			SET v_nombre_generado = ELT(fn_numero_aleatorio_rangos(1,50),
				"Abeer", "Afrah", "Aisha", "Alia", "Amal", "Amina", "Asma", "Aysha", "Baderah", "Basma",
                "Bushra", "Dalal", "Dana", "Danam", "Eman", "Fatima", "Ghadeer", "Hala", "Haya", "Hessa",
                "Hind", "Hoor", "Khadija", "Lamya", "Lulwa", "Maha", "Maryam", "Maysoon", "Mona", "Muna",
                "Muneera", "Nada", "Najla", "Nawal", "Nawar", "Noor", "Noura", "Rana", "Rasha", "Rawan",
                "Reem", "Rehab", "Salwa", "Sara", "Sarah", "Shaikha", "Sheikha", "Thuraya", "Wafa","Zainab");
		END IF;
			
            
## -------------------------- NUEVA ZELANDA (Octavio López) ------------------------------------------------------------------------------- ##
	WHEN "Nueva Zelanda" THEN
		IF v_genero = "M" THEN 
			SET v_nombre_generado = ELT(fn_numero_aleatorio_rangos(1,75),
				"Jack","Oliver","James","William","Mason","Noah","Liam","Lucas","Benjamin","Samuel",
                "Thomas","Jacob","Ethan","Alexander","Charlie","Daniel","Joshua","Oscar","Leo","Cooper",
                "Max","Harrison","Hunter","Eli","Isaac","Finn","Aiden","Caleb","George","Blake",
                "Ryan","Luke","Matthew","Dylan","Levi","Michael","Logan","Edward","Nathan","Joseph",
                "Theodore","Hudson","David","Jordan","Patrick","Cameron","Tyler","Archie","Flynn","Mordecai",
               
##--------------------------- nueva zelanda (Mateo Maldonado Tolentino )------------------------------------------###            
				"Arthur","Elias","Harry","Elliot","Niko",
                "Felix","Art","Sebastian","Buonaventura","Bay",
				"Lúcás","Daniël","Dániel","Lachlan","Léo",
                "Elijah","Jackson","Jayden","Braxton","Eden",
				"Riley","Mackenzie","Alexis","Connor","Toby");
   
		ELSEIF v_genero = "F" THEN 
			SET v_nombre_generado = ELT(fn_numero_aleatorio_rangos(1,75),
				"Charlotte","Olivia","Isla","Amelia","Harper","Ava","Emily","Mia","Sophie","Ella",
                "Grace","Lily","Ruby","Chloe","Isabella","Emma","Zoe","Lucy","Mila","Hannah",
                "Sophia","Scarlett","Evie","Madison","Aria","Layla","Georgia","Hazel","Alice","Willow",
                "Ivy","Harper","Maya","Abigail","Poppy","Bella","Matilda", "Sarah","Stella","Aurora",
                "Zara","Victoria","Ellie","Piper","Penelope","Lyla", "Molly","Rosie","Florence","Sienna",

##--------------------------- nueva zelanda (Mateo Maldonado Tolentino )------------------------------------------###    
				"Emilia","Chloé","Orah","Adeline","Amilia",
                "Krisztina","Arley","Emmy","Eva","Summer",
				"Olívia","Amélia","Avi","No'ah","Eleanor",
                "Ellen","Hunter","Zoé","Zoë","Paige",
				"Jessica","Éva","Jayden","Maia","Maddison");
		END IF;
            
            
## -------------------------- HOLANDA (Octavio López) ------------------------------------------------------------------------------- ##
	WHEN "Paises Bajos" THEN	
		IF v_genero = "M" THEN 
			SET v_nombre_generado = ELT(fn_numero_aleatorio_rangos(1,75),
				"Jan","Piet","Henk","Peter","Johannes","Gerrit","Jacob","Willem","Cornelis","Adrianus",
                "Nicolaas","Pieter","Johannes","Martinus","Hendrik","Antonius","Arie","Dirk","Franciscus","Franciscus",
                "Joannes","Johan","Lambertus", "Leendert","Marcelis","Marinus","Mathijs","Michiel","Petrus","Reijer",
                "Rijk","Robbert","Rudolf","Sebastiaan","Sander","Simon","Theodorus","Thomas","Timo","Tobias",
                "Victor","Wouter","Yannick","Zeger","Gal","DerVan","Robben","John","Persie","Herman",
 
 ##--------------------------FABRICIO GUZMAN-----------------------------------------##	   
               "Gerard","Albert","Hans","Peter","Klaas",
               "Maarten","Kees","David","Michael","Roelof",
               "Robert","Hendrikus","Wim","Richard","Erik",
               "Bart","Tim","Jeroen","Albertus","Stefan",
               "Mark","Martijn","Marcel","Alex","Jurgen");
		
        ELSEIF v_genero = "F" THEN 
			SET v_nombre_generado = ELT(fn_numero_aleatorio_rangos(1,75),
				"Johanna","Maria","Anna","Cornelia","Elisabeth","Hendrika","Catharina","Adriana","Wilhelmina","Jacoba",
                "Helena","Aaltje","Grietje","Neeltje","Geertruida","Geertje","Gerritje","Antonia","Margaretha","Sara",
                "Jannetje","Petronella","Trijntje","Pieternella", "Trijntje","Alida","Cornelia","Martha","Magdalena","Christina",
                "Willemijn","Lotte","Laura","Sophie","Emma","Julia","Sara","Tess","Anna","Lisa",
                "Fenna","Eva","Mila","Nora","Olivia","Zoë","Isabel","Noa","Maud","Rosa",
               
##--------------------------FABRICIO GUZMAN-----------------------------------------##	                  
				"Anna","Emma","Sophie","Lisa","Laura",
                "Linda","Elise","Julia","Sanne","Marijke",
                "Karin","Annelies","Evelien","Marjolein","Esther",
                "Suzanne","Nicole","Mirjam","Kim","Femke",
                "Saskia","Rianne","Simone","Ingrid","Maartje");
		END IF;


## -------------------------- MÉXICO ------------------------------------------------------------------------------- ##
	WHEN "México" THEN
		IF v_genero = "M" THEN 
			SET v_nombre_generado = ELT(fn_numero_aleatorio_rangos(1,50),
				"Antonio", "Baltazar", "Carlos", "Daniel", "Ernesto", "Fernando", "Gustavo", "Hugo", "Ignacio" ,"Jaime",
                "Karim", "Lorenzo", "Manuel", "Nabor", "Octavio", "Pablo", "Quetzálcoatl", "Ramón", "Saúl" ,"Tadeo",
                "Uriel", "Valentín", "Yahir", "Xavier", "Zacek", "Alejandro", "Bernardo", "Camilo", "Dylan" ,"Edgar",
                "Francisco", "Gerardo", "Héctor", "Iván", "Josafat", "Karlo", "Luis", "Marco", "Neftalí" ,"Óscar",
                "Pedro", "Raúl", "Salvador", "Timoteo", "Uziel", "Víctor", "William", "Germán", "Benito","Gonzálo");
		ELSEIF v_genero = "F" THEN 
			SET v_nombre_generado = ELT(fn_numero_aleatorio_rangos(1,50),
				"Alondra", "Berenice", "Carla", "Daniela", "Evelyn", "Fernanda", "Gabriela", "Hanna", "Isabel" ,"Jazmín",
                "Karen", "Laura", "María", "Natalia", "Olga", "Patricia", "Quetzálli", "Renata", "Sandra" ,"Tamara",
                "Ursula", "Valeria", "Yara", "Xochítl", "Zara", "Alma", "Barbara", "Carolina", "Denisse" ,"Esther",
                "Fatima", "Galilea", "Helena", "Ivana", "Jaqueline", "Karla", "Lorena", "Magdalena", "Nadia" ,"Ofelia",
                "Paola", "Rosa", "Salomé", "Tanya", "Alejandra", "Josefa", "Wendy", "Valentina", "Elena","Sofía");
		END IF;


#----------------------------NICARAGUA (Neftali Hernandez)--------------------------------------------#
	WHEN "Nicaragua" THEN
		IF v_genero = "M" THEN
			SET v_nombre_generado = ELT(fn_numero_aleatorio_rangos(1,50),
				"Carlos", "José", "Luis", "Juan", "Francisco", "Jorge", "Mario", "Miguel", "Pedro", "Manuel", 
				"Antonio", "Alejandro", "Javier", "David", "Oscar","Roberto", "Enrique", "Fernando", "Ricardo", "Gustavo",
				"Marcos", "Daniel", "Eduardo", "Josué", "Léster", "Rafael", "Pablo", "Andrés", "Héctor", "Cristian",
				"Felipe", "Leonardo", "Ernesto", "Samuel", "Tomás", "Santiago", "Jesús", "Sergio", "Ángel", "Emilio", 
				"Diego", "Julio", "Alberto", "Ramon", "Max", "Víctor", "Nicolás", "Omar", "Erick", "Diego");
		ELSEIF v_genero = "F" THEN
			SET v_nombre_generado = ELT(fn_numero_aleatorio_rangos(1,50),
				"María", "Ana", "Sofía", "Isabella", "Valeria", "Daniela", "Andrea", "Gabriela", "Fernanda", "Karla", 
                "Carla", "Adriana", "Jazmín","Patricia", "Cristina", "Verónica", "Gloria", "Elizabeth", "Karen", "Lorena", 
                "Natalia", "Susana", "Lucía", "Alejandra", "Brenda", "Raquel", "Evelyn", "Ivania", "Miriam", "Rosario", 
                "Yamileth", "Fatima", "Lidia", "Angélica", "Tania", "Paola", "Luz", "Ximena", "Nancy", "Rosa",
                "Marta", "Elena", "Silvia", "Jessica", "Mayra", "Bianca", "Mercedes", "Carmen", "Juana", "Carola");
		END IF;
         
         
#----------------------------NORUEGA (Neftali Hernandez)--------------------------------------------#
	WHEN "Noruega" THEN
		IF v_genero = "M" THEN
			SET v_nombre_generado = ELT(fn_numero_aleatorio_rangos(1, 75),
				"Jakob", "Emil", "Oskar", "Oliver", "Lucas", "Henrik", "Noah", "William", "Elias", "Magnus",  
                "Sander", "Markus", "Adrian", "Tobias", "Andreas", "Lars", "Petter", "Even", "Anders", "Kristian", 
                "Marius", "Simen", "Fredrik", "Christian", "Håkon", "Jonas", "Espen", "Joakim", "Vegard", "Mats", 
                "Endre", "Jørgen", "Arne", "Halvor", "Kjetil", "Nils", "Einar", "Per", "Jan", "Hans",  
                "Tore", "Terje", "Harald","Mathias", "Aksel","Eirik", "Martin","Geir", "Thomas","Ivar",
                
#----------------------------NORUEGA (Gabriel Guzmán García 9A)--------------------------------------------#
                "Sebastián", "Daniël", "Isak", "Eric","Svein", 
                "Freyr", "Odin", "Axel", "Alex", "Alf",
                "Filip", "Frode", "Hans", "Leif", "Josva", 
                "Baldur", "Haakon", "Ruan", "Gunther", "Tait",
                "Hal", "Elvis", "Singurd", "Frey", "Vili");
                
        ELSEIF v_genero = "F" THEN
			SET v_nombre_generado = ELT(fn_numero_aleatorio_rangos(1, 75),
				"Sofie", "Emma", "Nora", "Olivia", "Ella", "Ada", "Maja", "Emilie", "Ida", "Anna",  
                "Thea", "Amalie", "Maria", "Leah", "Ingeborg", "Linnea", "Julie", "Aurora", "Selma", "Martine",  
                "Live", "Kaja", "Marit", "Malin", "Solveig", "Kine", "Signe", "Hanne", "Kristine", "Synne",  
                "Ragnhild", "Silje", "Vilde", "Kamilla", "Guro", "Marthe", "Oda", "Anniken", "Sunniva", "Andrea", 
                "Lena", "Tonje", "Helene", "Shanon", "Sara", "Ingrid","Hedda","Eirin", "Tilde", "Caroline", 
 #----------------------------NORUEGA (Gabriel Guzmán García 9A)--------------------------------------------#               
                "Sofia","Benedikte","Bergit","Frida", "Norma",
                "Ingrid","Asdis","Janne","Ane","Adelis",
                "Brenda","Brígida", "Cathrine","Dahlia","Valdis",
                "Elid","Enid","Berit","Maira","Nilsa",
                "Ondina", "Brigit", "Gerdy", "Gry", "Grete");
		END IF;          


## -------------------------- INDIA (Prof. Marco) ------------------------------------------------------------------------------- ##
	WHEN "India" THEN
		IF v_genero = "M" THEN 
			SET v_nombre_generado = ELT(fn_numero_aleatorio_rangos(1,50),
				"Ram", "Mohammed", "Santosh", "Sanjay", "Sunjil", "Rajesh", "Ramesh", "Ashok", "Manoj" ,"Anil",
                "Suresh", "Vijay", "Abdul", "Mohammad", "Raju", "Shanti", "Vinod", "Rajendra", "Raj" ,"Dinesh",
                "Rakesh", "Dilip", "Ajay", "Mukesh", "Amit", "Mohan", "Ravi", "Ganesh", "Gopal" ,"Arun",
                "Rahul", "Mahesh", "Jitendra", "Kamal", "Prakash", "Subhash", "Narayan", "Salim", "Dipak" ,"Pankaj",
                "Naresh", "Shyam", "Arjun", "Satish", "Bharat", "Deepak", "Hari", "Aji", "Manish","Sameer");
		ELSEIF v_genero = "F" THEN 
			SET v_nombre_generado = ELT(fn_numero_aleatorio_rangos(1,50),
				"Sunita", "Anita", "Gita", "Rekha", "Manju", "Suman", "Usha", "Asha", "Krishna" ,"Mina",
                "Kiran", "Pushpa", "Laxmi", "Sita", "Rita", "Sima", "Sangita", "Rani", "Nirmala" ,"Rina",
                "Savita", "Maya", "Rama", "Sarita", "Jyoti", "Kavita", "Mamta", "Mira", "Kamala" ,"Uma",
                "Ranjit", "Priyanka", "Renu", "Shila", "Raja", "Chandra", "Manisha", "Kanchan", "Tara" ,"Padma",
                "Anju", "Lila", "Anjali", "Meena", "Nisha", "Aruna", "Reshma", "Hira", "Indra","Salma");
		END IF;
            
            
## -------------------------- Panamá (Yulissa) ------------------------------------------------------------------------------- ##
	WHEN "Panamá" THEN
		IF v_genero = "M" THEN 
			SET v_nombre_generado = ELT(fn_numero_aleatorio_rangos(1,75),
				"José", "Luis", "Carlos", "Juan", "Jorge", "Ricardo", "Manuel", "Roberto", "Francisco" ,"Víctor",
                "Miguel", "Eduardo", "Javier", "Edwin", "Daniel", "Julio", "Pedro", "César", "Alberto" ,"Héctor",
                "Alexis", "David", "Éric", "Rafael", "Ángel","Rubén", "Fernando", "Mario" , "Jaime" ,"Raúl",
                "Antonio", "Gabriel", "Édgar", "Abdiel", "Guillermo", "Alexander", "Omar", "Enrique", "Alejandro" ,"Jesús",
                "Ernesto", "Rolando", "Óscar", "Gilberto", "Orlando", "Pablo", "Joel", "Andrés", "Alfredo","Franklin",

## -------------------------- Panamá (9A Mauricio Ramírez) ------------------------------------------------------------------------------- ## 
                "Samuel", "Ramón", "Marco", "Benjamín", "Israel", 
                "Cristian", "Hugo", "Emilio", "Josué", "Adolfo", 
                "Gregorio", "Ignacio", "Néstor", "Abel", "Leonardo", 
                "Álvaro", "Augusto", "Armando", "Gonzalo", "Esteban", 
                "Julián", "Mauricio", "Mateo", "Modesto", "Hernán");
                
		ELSEIF v_genero = "F" THEN 
			SET v_nombre_generado = ELT(fn_numero_aleatorio_rangos(1,75),
				"María", "Ana", "Rosa", "Carmen", "Elizabeth", "Katherine", "Diana", "Luz", "Maritza" ,"Gladys",
                "Juana", "Vielka", "Isabel", "Marta", "Maribel", "Iris", "Ariel", "Yamileth", "Gloria" ,"Cecilia",
                "Cristina", "Margarita", "Silvia", "Doris", "Yolanda","Mariela", "Ángela", "Miriam" , "Eneida" ,"Damaris",
                "Lourdes", "Julia", "Elvia", "Carolina", "Olivia", "Gabriela", "Victoria", "Roxana", "Emma" ,"Isabella",
                "Virginia", "Esther", "Aura", "Mercedes", "Itzel", "Sandra", "Elsa", "Ruth", "Edilma","Alicia",
               
## -------------------------- Panamá (9A Mauricio Ramírez) ------------------------------------------------------------------------------- ## 
                "Laura", "Luisa", "Patricia", "Sofía","Elena",
                "Clara", "Beatriz", "Adriana", "Paula", "Verónica", 
                "Fernanda", "Valeria", "Andrea", "Natalia", "Lucía", 
                "Pilar", "Raquel", "Catalina", "Daniela", "Alejandra", 
                "Valentina", "Marina", "Eva", "Sara", "Irene");                
		END IF;


## -------------------------- Polonia (Yulissa) ------------------------------------------------------------------------------- ##
	WHEN "Polonia" THEN
		IF v_genero = "M" THEN 
			SET v_nombre_generado = ELT(fn_numero_aleatorio_rangos(1,75),
				"Aleksander", "Alfred", "Andrezj", "Aurelio", "Bartek", "Bazyli", "Bogdan", "Brunon", "Celestyn" ,"Czeslaw",
                "Damián", "Dawid", "Dominik", "Emil", "Eryk", "Filip", "Florian", "Franciszek", "Grzegorz" ,"Gustaw",
                "Henryk", "Hipolit", "Hubert", "Igor", "Ignacy","Jan", "Jedrek", "Justyn" , "Kacper" ,"Konrad",
                "Lechoslaw", "Lubomir", "Lukasz", "Mikolaj", "Milosz", "Nacek", "Nikodem", "Olaf", "Olek" ,"Oliwier",
                "Oskar", "Pawel", "Rafal", "Stefan", "Szymon", "Tomasz", "Tymon", "Waclaw", "Warcislaw","Ziemowit",
               
## -------------------------- Polonia (Mariela González López) ---------------------------------------------------- ##
				"Adam","Apoloniusz","Ewa","Janina","Łukasz",
                "Maurycy","Paweł","Piotr","Szczepan","Tomisław",
				"Ales","Alojzy","Amadey","Amadej","Amadeusz",
                "Ambrozij","Anastazy","Antoni","Apolinary","Arkadiusz",
				"Aron","Agustyn","Adalbert","Adolf","Aleksy");
                
                
		ELSEIF v_genero = "F" THEN 
			SET v_nombre_generado = ELT(fn_numero_aleatorio_rangos(1,75),
				"Angélica", "Adelajda", "Albinka", "Alina", "Alka", "Anastazja", "Anieli", "Anka", "Antonima" ,"Aureli",
                "Balbina", "Beata", "Botgana", "Doroata", "Edyta", "Elwira", "Elzbieta", "Ewa", "Felka" ,"Franciszka",
                "Grazyna", "Gutka", "Halina", "Hortenspa", "Iwona","Irene", "Jadwiga", "Janica" , "Jasia" ,"Jolanta",
                "Kalena", "Kamilla", "Kaska", "Katarina", "Krysta", "Kunegundy", "Lechsinska", "Lila", "Lodoiska" ,"Lucyna",
                "Mada", "Margita", "Mela", "Nata", "Otylia", "Petra", "Rozalia", "Vanesa", "Wira","Zyta",

## -------------------------- Polonia (Mariela González López) ---------------------------------------------------- ##
				"Euzebia","Beate","Bodgana","Bogna","Bohgan",
                "Basha","Aurele","Antonina","Ania","Aldona",
				"Agnieszka","Agata","Alberta","Albina","Alicja",
                "Alfreda","Anatola","Andezlika","Aneta","Angelika",
                "Angelina","Aniela","Anielka","Asia","Augusta");
		END IF;
            
            
## -------------------------- PORTUGAL (Haziel) ------------------------------------------------------------------------------- ##
	WHEN "Portugal" THEN
		IF v_genero = "M" THEN 
			SET v_nombre_generado = ELT(fn_numero_aleatorio_rangos(1,62),
				"Afonso", "Alexander", "Andy", "Angelino", "Artur", "Ayden", "Bernardo", "Cruz", "Daniel", "David",  
                "Duarte", "Eduardo", "Einar", "Elías", "Eloan", "Énaël", "Ethan", "Félix", "Garbriel", "Gonçalo", 
                "Guilherme", "Gustavo", "Ilán", "James", "Jannik", "Javier", "Joao", "Jorge", "Jóse", "Julián", 
                "Kylian", "León", "Leonardo", "Leopoldo", "Levie", "Liam", "Louis", "Lourenço", "Lucas", "Luciano", 
                "Marco", "Martim", "Mason", "Mateus", "Maureo", "Max", "Milann", "Nathan", "Noah", "Oliver", 
                "Oscar", "Patricio", "Pedro", "Salvador", "Thélio", "Teodoro", "Vicente", "Valente", "Vidal", "Zacarías",
                "Dinis", "Justino");
		ELSEIF v_genero = "F" THEN 
			SET v_nombre_generado = ELT(fn_numero_aleatorio_rangos(1,53),
				"Alice", "Amelia", "Ana", "Beatriz", "Benedita", "Calie", "Camila", "Carolina", "Casandra", "Charlotte", 
                "Clara", "Cloé", "Dayana", "Diana", "Élea", "Éléna", "Élise", "Ella", "Ellin", "Karla",
                "Elyana", "Émilie", "Eva", "Francisca", "Hailey", "Hannah", "Ilyana", "Inês", "Isabella", "Joana", 
                "Julia", "Karlota", "Kelya", "Kiara", "Laura", "Léa", "Léonie", "Leonor", "Lilly","Laila", 
                "Louna", "Lya", "Magdalena", "Manuela", "Margarida", "María", "Mariana", "Maya", "Noémie", "Olivia", 
                "Sophie", "Talya", "Vitória");
		END IF;


## -------------------------- Reino Unido (Haziel) ------------------------------------------------------------------------------- ##
	WHEN "Reino Unido" THEN
		IF v_genero = "M" THEN 
			SET v_nombre_generado = ELT(fn_numero_aleatorio_rangos(1,78),
				"David", "John", "Michael", "Paul", "Andrew", "Peter", "Andrew", "James", "Robert", "Mark",
                "Richard", "Alexander", "Stephen", "Amos", "Angus", "Christopher", "Ian", "Steven", "Thomas", "Alan",
                "Anthony", "Ansel", "Ariel", "Arnold", "Simon", "Arthur", "Arvel", "Boone", "Boris", "Daniel",
                "Cayden", "Martin", "Cedric", "Chanan", "Matthew", "Kevin", "Philip", "Jane", "Jean", "Darragh",
                "Dietrich", "Conrad", "Conway", "Joss", "Kalman", "Keane", "Neron", "Olaf", "Oscar","Oswin", 
                "Saul", "Selig", "Zachary",

##--------------------------(FABIOLA BAUTISTA) -----------------------------------------##
				"Nelson", "Roger", "Faith", "Sam", "Hope", 
                "Robert", "Seth", "Randall", "Thomas", "Eugeniusz", 
                "Scott", "Milton", "Scar", "Zac", "Jesse",
                "Chris", "Noah", "Tom", "Jacob", "Cope", 
                "Maud", "Quince", "Iug", "Zeus", "Starkey");
           
		ELSEIF v_genero = "F" THEN 
			SET v_nombre_generado = ELT(fn_numero_aleatorio_rangos(1,76),
				"Abby", "Ada", "Adele", "Agnes", "Alexa", "Amelie", "Angel", "Alexa", "Bambi", "Beatrice", 
                "Blair", "Blake", "Bonnie", "Cadence", "Callie", "Cat", "Celestine", "Chanel", "Charis", "Elina", 
                "Erin", "Esme", "Evelyn", "Faith", "Felicity", "Fern", "Fleur", "Flora", "Gabriel", "Winona",
                "Gia", "Gillian", "Ginger", "Harmony", "Harper", "Heather", "Hope", "Hazel", "Harriet", "Ida", 
                "India", "Isobel", "Jamie", "Jade", "Jessa", "Kara", "Kristen", "Lacey", "Laila", "Lara", 
                "Xandra",
           
##--------------------------(FABIOLA BAUTISTA) -----------------------------------------##
				"Cecilia", "Ann", "Diana", "Bertha", "Charity", 
				"Louisa", "Jane", "Kate", "Railway", "Fanny", 
                "Orphelia", "Gertrude", "Emily", "Starkey", "Amelia",
				"Hypatia", "Darcy", "Jessi", "Milly", "Teresa", 
				"Olivia", "Ava", "Hela", "Rebecca", "Nora");              
		END IF;
            
            
## -------------------------- Rumania (Raúl Reyes)  ------------------------------------------------------------------------------- ##
	WHEN "Rumania" THEN
		IF v_genero = "M" THEN
			SET v_nombre_generado = ELT(fn_numero_aleatorio_rangos(1,50),
				"Adam","Adrian","Albert","Alex","Alexandru","Alin","Andrei","Anton","Apostol","Artur",
				"Atanase","Augustin","Aurel","Beniamin","Bogdan","Carol","Cătălin","Cezar","Ciprian","Claudiu",
				"Constantin","Cornel","Corneliu","Cosmin","Costache","Costel","Costică","Costin","Cristi","Cristian",
				"Damian","Dan","Daniel","Dănuț","Darius","David","Decebal","Denis","Dinu","Dionisie",	
				"Dorian","Dorin","Doru","Dragomir","Dragos","Dragoș","Dumitru","Eduard","Emanuel","Emil");
                
		ELSEIF v_genero = "F" THEN
			SET v_nombre_generado = ELT(fn_numero_aleatorio_rangos(1,50),
				"Adela","Adelina","Adina","Adriana","Alex","Alexandra","Alina","Amalia","Ana","Anastasie",
				"Anca","Andreea","Angela","Angelica","Antonia","Aurelia","Aurora","Beatrice","Bianca","Bogdana",
				"Brândușa","Camelia","Carmen","Cătălina","Catina","Cecilia","Clara","Claudia","Constanța","Constantina",
				"Corina","Cornelia","Cosmina","Crina","Cristiana","Cristina","Daciana","Dana","Daniela","Daria",
				"Delia","Denisa","Diana","Doina","Dorina","Ecaterina","Elena","Elisabeta","Eliza","Emanuela");
		END IF;
        
        
## -------------------------- Serbia  (Raúl Reyes)------------------------------------------------------------------------------- ##
	WHEN "Serbia" THEN
		IF v_genero = "M" THEN
			SET v_nombre_generado = ELT(fn_numero_aleatorio_rangos(1,50),
				"Adam","Aleksandar","Aljoša","Anđelko","Andrej","Andrija","Anto","Antonije","Atanasije","Bartolomej",
				"Blagoje","Bogdan","Bojan","Boris","Borislav","Borko","Boro","Boško","Boža","Božidar",
				"Božo","Branimir","Branislav","Branko","Bratislav","Čedomir","Dalibor","Damir","Damjan","Danijel",
				"Danilo","Danko","Darko","David","Davor","Dejan","Dimitrije","Djordje","Djuradj","Djuro",
				"Dmita","Dobroslav","Đorđe","Dragan","Drago","Dragomir","Dragoslav","Dragutin","Draško","Dražen");
		ELSEIF v_genero = "F" THEN
			SET v_nombre_generado = ELT(fn_numero_aleatorio_rangos(1,50),
				"Adrijana","Agata","Agnija","Aleksandra","Ana","Anastasija","Anđa","Anđela","Anđelka","Andjela",
				"Andrea","Andrijana","Angelina","Anica","Anja","Anka","Ankica","Antonija","Atanasija","Biljana",
				"Biserka","Blanka","Bogdana","Bojana","Borislava","Božena","Božidarka","Branimira","Branislava","Branka",
				"Brankica","Cveta","Cvijeta","Dajana","Daliborka","Damjana","Danica","Danijela","Darija","Davorka",
				"Dejana","Dijana","Divna","Djuradja","Dora","Doroteja","Draga","Dragana","Dragica","Dragoslava");
		END IF;
       
       
#----------------------------ZIMBABUE--------------------------------------------#
	WHEN "Zimbabue" THEN
		IF v_genero = "M" THEN
			SET v_nombre_generado = ELT(fn_numero_aleatorio_rangos(1,75),
				"Tatenda", "Tapiwa", "Farai", "Kudakwashe", "Tendai", "Kudzai", "Tawanda", "Munashe", "Tawanda", "Simba", 
                "Tinashe", "Tendai", "Taurai", "Brighton", "Tapiwa", "Terrence", "Kelvin", "Munyaradzi", "Gift", "Walter", 
                "Lovemore", "Tanaka", "Tatenda", "Tonderai", "Darlington", "Tichaona", "Davison", "Godfrey", "Tashinga", "Panashe", 
                "Thabani", "Phillip", "Justice", "Admire", "Blessing", "Ngonidzashe", "Tafadzwa", "Collins", "Obert", "Stanley", 
                "Shepherd", "Lloyd", "Milton", "Tafara", "Edmore", "Tinotenda", "Trust", "Ronald", "Donald", "Prince",
				
#--------------------------------Zimbabue (Daniel Arroyo Méndez)----------------------------------------#
				"Fara", "Tapwa", "Takudzwa", "Ruvimbo", "Kundai", 
				"Tafadza", "Nysha", "Nige", "Tapuwa","Simbarashe", 
				"Shingai", "Chenjerai", "Courage", "Tinonda", "Munyaradzi",
				"Panash", "Tawan", "Rutendo", "Takura", "Tinashe", 
				"Obert", "Talent", "Terrence","Takawira", "Washington");
				
		ELSEIF v_genero = "F" THEN
            SET v_nombre_generado = ELT(fn_numero_aleatorio_rangos(1,75),
				"Nyasha", "Tariro", "Chipo", "Rudo", "Tendai", "Tsitsi", "Danai", "Farai", "Mai", "Shingai", 
				"Chiedza", "Nyarai", "Mavis", "Sekai", "Gamuchirai", "Mandipa", "Chenai", "Nyari", "Munashe", "Kudzai", 
                "Chipo", "Nyasha", "Tafadzwa", "Nokutenda", "Ruvimbo", "Rumbidzai", "Tariro", "Rudo", "Shamiso", "Mutsa", 
                "Vimbai", "Chengetai", "Mai", "Shingirai", "Anesu", "Tatenda", "Charity", "Pamela", "Mary", "Prudence", 
                "Fadzai", "Tsungai", "Nomatter", "Maud", "Grace", "Jesca", "Lucia", "Sithembile", "Abigail", "Khumala",
            
  #--------------------------------Zimbabue (Daniel Arroyo Méndez)----------------------------------------#
				"Munash","Takudzwa","Rumo", "Kundai", "Tafad", 
				"Nasha", "Nige", "Tapuwa", "Simbarash", "Shingi", 
				"Chenjerai","Courag", "Tatena", "Tinotenda", "Munyara", 
				"Rutendo", "Takura", "Talent", "Godfrey","Kudzi", 
				"Takawira", "Washington", "Farayi", "Tapera", "Kuzivakwashe");          
		END IF;


#----------------------------FIYI--------------------------------------------#
	WHEN "Fiyi" THEN
		IF v_genero = "M" THEN
			SET v_nombre_generado = ELT(fn_numero_aleatorio_rangos(1, 51),
				"Ratu", "Jone", "Savenaca", "Tevita", "Apisai", "Josua", "Pita", "Meli", "Saimoni", "Apenisa", 
				"Rupeni", "Sakiusa", "Peni", "Eroni", "Isikeli", "Semisi", "Asaeli", "Waisake", "Sireli", "Aisake", 
				"Kitione", "Kavekini", "Viliame", "Vuate", "Sikeli", "Jope", "Aisea", "Setareki", "Marika", "Taniela", 
				"Mosese", "Lote", "Semi", "Mataiasi", "Eparama", "Koli", "Pauliasi", "Ilikena", "Tukana", "Misi", 
				"Aminiasi", "Vuniani", "Josaia", "Peceli", "Nemani", "Maikeli", "Amani", "Iowane", "Solomoni", "Peceli", 
                "Inoke");
		ELSEIF v_genero = "F" THEN
			SET v_nombre_generado = ELT(fn_numero_aleatorio_rangos(1, 50),
				"Adi", "Mere", "Asenaca", "Salote", "Losalini", "Luisa", "Lavenia", "Ana", "Litia", "Sereana", 
				"Elenoa", "Asinate", "Makereta", "Vasemaca", "Mereoni", "Laisani", "Susana", "Adieta", "Iliana", "Talei",
				"Lena", "Sainimere", "Siteri", "Alisi", "Sera", "Koleta", "Unaisi", "Taina", "Makereta", "Kelera", 
				"Elenoa", "Vani", "Miriama", "Ruci", "Mili", "Laisa", "Emalini", "Salaseini", "Marama", "Vika", 
				"Sulueti", "Miriama", "Katarina", "Ateca", "Vasiti", "Ligavatu", "Ana", "Tui", "Asenaca", "Lusiana");
		END IF;


#----------------------------Ucrania (Juan Vázqiez) ------------------------------#
	WHEN "Ucrania" THEN
		IF v_genero = "M" THEN
			SET v_nombre_generado = ELT (fn_numero_aleatorio_rangos(1,75),
				"Anatoliy","Anton","Bohdan","Borys","Danylo","Davyd","Fedor","Georgiy","Gleb","Havryil",
				"Ivan","Kostyantyn","Kuzma","Luka","Marko","Martyn","Maxim","Nikolai","Oleg","Oleksandr",
				"Pavlo","Petro","Roman","Sergiy","Valentyn","Bohuslav","Boyan","Estas","Feliks","Georgiy",
				"Grygoriy","Ihor","Ilay","Isaí","Kirill","Makar","Oleh","Oleksandr","Roman","Umut",
				"Robin","Spartak","Straton","Tymofiy","Umut","Alikhan","Andriy","Artem","Boris","Danylo",

#----------------------------Ucrania (URIEL MALDONADO) ------------------------------#
				"Mykhailo", "Oleksandr", "Dmytro", "Volodymyr", "Andriy", 
				"Ivan", "Yuriy", "Serhiy", "Vasyl" ,"Artem",
				"Roman", "Pavlo", "Oleg", "Vitaliy", "Yevhen", 
				"Taras", "Maksym", "Ihor", "Mykola" ,"Oleksandr",
				"Oleksandr", "Bohdan", "Roman", "Vladyslav", "AndriyAndriy");

		ELSEIF v_genero = "F" THEN
			SET v_nombre_generado = ELT(fn_numero_aleatorio_rangos(1,75),
				"Alla","Alisa","Alisa","Ana","Ana","Arina","Bohuslava","Bozhena","Daryna","Diana",
				"Feya","Fiona","Fiona","Fiona","Hlafira","Inna","Iryna","Iya","Kateryna","Khrystna",
				"Klavdiia","Kseniya","Lada","Layán","Liliya","Lidia","Liubov","Marselina","Mariya","Milana",
				"Myroslava","Nadiya","Natalia","Oksana","Olena","Oresta","Oriyana","Roksolana","Sevilla","Sofia",
				"Solomiya","Svitlana","Teona","Tetyana","Valeria","Vasylyna","Veronika","Victoria","Vira","Vladyslava",
				
#----------------------------Ucrania (URIEL MALDONADO) ------------------------------#            
				"Sofia", "Anna", "Victoria", "Veronika", "Anastasia", 
                "Kateryna", "Iryna", "Yulia", "Oleksandra" ,"Mariya",
                "Khrystyna", "Tetiana", "Olena", "Hanna", "Svitlana", 
                "Nataliia", "Ivanna", "Oksana", "Lyudmyla" ,"Lyudmyla",
                "Kateryna", "Daryna", "Marichka", "Vlada", "Tamara");
		END IF;
        
        
#---------------------------Zambia (Juan Vázquez) ---------------------------------#
	WHEN "Zambia" THEN
		IF v_genero = "M" THEN
			SET v_nombre_generado = ELT(fn_numero_aleatorio_rangos(1, 50),
				"John","Peter","Moses","Emmanuel","Christopher","Kennedy","Stephen","David","Brian","Evans", 
				"Alfred ","Thomas","William","Samuel","Godfrey","Jackson","Alex","Felix","Simon","Martin",
				"Nathan","Solomon","Peter","Joel","silvester","CHarles","Frank","Edwar","Gibson","Mufumbwe",
				"Kelvin","Kenneth","Mutale","Mwamba","Musonda","Kapanda","Chanda","Tembo","Sischone","Mbewe",
				"John","Daniel","James","Michel","Patrick","Andrew","Simon","Samuel","Moses","Emmanuel");
		ELSEIF v_genero = "F" THEN
			SET v_nombre_generado = ELT(fn_numero_aleatorio_rangos (1,50),
				"Alice","Ruth","Esther","Grace","Joyce","Mary","Patricia","Charity","Precious","Caroline",
				"Agnness","Gloria","Sarah","Bridget","Loveness","Florence","Hilda","Theresa","Pricscila","Catherine",
				"Faith","Vernonica","Beatrice","Edith","Linda","Victoria","Janet","Margaret","Winnie","Marta",
				"Memory","Monica","Gladys","Elizabeth","Agatha","Mildred","Miriam","Angela","Rosemary","Suan",
				"Agenss","Jane","Lydia","Mwamba","Mulenga","Chisala","Sampa","Mwape","Mwila","Chibwe");
		END IF;


## --------------------------  Trinidad y Tobago (Martín Vargas)------------------------------------------------------------------------------- ##
	WHEN "Trinidad y Tobago" THEN
		IF v_genero = "M" THEN
			SET v_nombre_generado = ELT(fn_numero_aleatorio_rangos(1,50),
				"Aiden", "Brian", "Christopher", "Dylan", "Elijah", "Fabian", "Gabriel", "Hayden", "Isaac", "Jayden",
                "Keegan", "Liam", "Mason", "Nathan", "Orlando", "Preston", "Quinn", "Ryan", "Sebastian", "Tristan",
                "Uriah", "Victor", "William", "Xavier", "Zachary", "Alex", "Brandon", "Caleb", "Daniel", "Ethan",
                "Francis", "George", "Harrison", "Ian", "Jacob", "Kai", "Lucas", "Matthew", "Noah", "Oliver",
                "Patrick", "Riley", "Samuel", "Thomas", "Ulysses", "Vincent", "Wesley", "Xander", "Yusuf", "Zane");
		ELSEIF v_genero = "F" THEN
			SET v_nombre_generado = ELT(fn_numero_aleatorio_rangos(1,50),
                "Aaliyah", "Brianna", "Chloe", "Destiny", "Emily", "Faith", "Gabrielle", "Hailey", "Isabella", "Jada",
                "Kayla", "Leah", "Mia", "Nevaeh", "Olivia", "Paige", "Queen", "Riley", "Savannah", "Trinity",
                "Uma", "Victoria", "Willow", "Xena", "Zoe", "Ava", "Brooklyn", "Caitlin", "Danielle", "Eva",
                "Felicity", "Grace", "Hannah", "Imogen", "Jasmine", "Kiera", "Lily", "Madison", "Nina", "Ophelia",
                "Peyton", "Rosalie", "Sienna", "Talia", "Una", "Violet", "Whitney", "Xanthe", "Yara", "Zara");
		END IF;
        
        
## -------------------------- TANZANIA (Martín Vargas)------------------------------------------------------------------------------- ##
	WHEN "Tanzania" THEN
		IF v_genero = "M" THEN
			SET v_nombre_generado = ELT(fn_numero_aleatorio_rangos(1,50),
				"Abdul", "Ahmed", "Ali", "Amir", "Bakari", "Baraka", "Furaha", "Hassan", "Ibrahim", "Jengo",
                "Kamili", "Khamis", "Mosi", "Nuru", "Omari", "Rashid", "Salim", "Tumaini", "Yakobo", "Zuberi",
                "Abasi", "Babu", "Chuma", "Faraji", "Hashim", "Issa", "Jelani", "Kito", "Lazaro", "Mwita",
                "Nashon", "Omar", "Rafiki", "Saidi", "Uzuri", "Yusuf", "Zuri", "Amani", "Bakar", "Daudi",
                "Faiz", "Hasani", "Isaya", "Juma", "Kondo", "Majaliwa", "Neema", "Pendo", "Rashidi", "Said");
                
		ELSEIF v_genero = "F" THEN
			SET v_nombre_generado = ELT(fn_numero_aleatorio_rangos(1,50),
				"Aaliyah","Malkia", "Nia", "Rahma", "Subira", "Tumaini", "Zahra", "Aisha", "Baraka", "Dalila", 
                "Eshe", "Faraja", "Halima", "Jaliyah", "Kanoni", "Lulu", "Maua", "Naima", "Rashida", "Sumaia", 
                "Upendo","Zawadi", "Amani", "Bibi", "Doto", "Fadhila", "Halisi", "Jasiri", "Khadija", "Mariam", 
                "Neema","Pendo", "Saida", "Taji", "Wema", "Zuhura", "Ashura", "Binti", "Elimu", "Furaha", 
                "Hasina", "Jengo", "Kulwa", "Leyla", "Mwanajuma", "Nasra", "Rehema", "Salama", "Tulia", "Zainabu");
		END IF;

#----------------------------Estados Unidos (Esperanza Cruz)------------------------------#
	WHEN "Estados Unidos" THEN
		IF v_genero = "M" THEN
			SET v_nombre_generado = ELT(fn_numero_aleatorio_rangos(1,75),
				"Anthony","Benjamin","Charles","Dylan","Ethan","Franklin","Garret","Harrison","Ian","Justin",
				"Kai","Liam","Matthew","Nathaniel","Owen","Patrick","Quentin","Ryan","Samuel","Tyler",
				"Uriah","Vincent","William","Xander","Zane","Andrew","Braxton","Cooper","Dominic","Elliot",
				"Finn","Giovanni","Hunter","Ivan","Jeremy","Kaleb","Luke","Miles","Noah","Oliver",
				"Phillip","Quinton","Robert","Spencer","Theodore","Uriel","Wilson","Chris","Ricky","Harry",
                
#----------------------------Estados Unidos (Daniel Arroyo Méndez)------------------------------#
                "Alexander", "Blake", "Caleb", "Daniel", "Elijah", 
                "Gabriel", "Henry", "Isaac", "Jacob", "Jackson", 
                "Kevin", "Lucas", "Mason", "Nathan", "Oliver", 
                "Parker", "Quinn", "Ryder", "Samuel", "Thomas", 
                "Victor", "Wyatt", "Zachary", "Austin", "William");

		ELSEIF v_genero = "F" THEN
			SET v_nombre_generado = ELT(fn_numero_aleatorio_rangos(1,75),
				"Alice","Brandie","Caroline","Daisy","Elizabeth","Grace","Hailey","Isabelle","Jackie","Kelly",
				"Lila","Molly","Nora","Olivia","Pepper","Queen","Rose","Scarlett","Trish","Violet",
				"Winter","Zoe","Ashley","Blondie","Chloe","Dolly","Ella","Gabriella","Hannah","Irela",
				"Janice","Katherine","Leah","Mía","Natalie","Ohana","Peyton","Ruby","Sarah", "Torie",
				"Valerie","Zoey","Arianna","Betsy","Candie","Emily","Janeth","Kisha","Lindsay","Mila",
                
#----------------------------Estados Unidos (Daniel Arroyo Méndez)------------------------------#
				"Abigail", "Brooke", "Charlotte", "Danielle", "Emma", 
                "Faith", "Grace", "Harper", "Isabella", "Jasmine", 
                "Kennedy", "Lily", "Madison", "Natalie", "Olivia", 
                "Penelope", "Quinn", "Riley", "Savannah", "Taylor", 
                "Vanessa", "Willow", "Zoe", "Ava", "Sophia");                
		END IF;
        
        
#---------------------------Francia (Esperanza Cruz)---------------------------------#
	WHEN "Francia" THEN
		IF v_genero = "M" THEN
			SET v_nombre_generado = ELT(fn_numero_aleatorio_rangos(1, 75),
				"Adrien","Bastian","Casper","Damien","Edmond","Fabien","Gérard","Henri","Jacques","Luc",
				"Marc","Normand","Octave","Paul","Robin","Simon","Stéphane","Théodore","Victor","Walter",
				"Yvan","André","Bruno","Cristophe","Damien","Elliot","Felix","Gustave","Honoré","Julien",
				"Laurent","Marius","Oliver","Pierre","Tristan","Victor","Wilfried","Yves","Alphonse","Bernard",
				"Casper","Étienne","Francis","Guillaume","Jean","Louis","Mathias","Patrice","Romain","Yannick",

#--------------------------- (SANDRA AGUILAR SANTOS)---------------------------------#                
                "Alexandre", "Benjamin", "Cédric", "David", "Émile",
                "François", "Gabriel", "Hugo", "Isaac", "Jérôme",
                "Kilian", "Léo", "Maxime", "Nathan", "Olivier",
                "Philippe", "Quentin", "Raphael", "Sébastien", "Thierry",
                "Vincent", "William", "Xavier", "Yohan", "Zacharie");
                
		ELSEIF v_genero = "F" THEN
			SET v_nombre_generado = ELT(fn_numero_aleatorio_rangos(1, 76),
				"Anaís","Coralie","Esme","Fayette","Jolie","Rosalie","Agathe","Brielle","Clarisse","Delphine", 
				"Ember","Fosette","Giselle","Hortense","Inés","Juliette","Lille","Margot","Nicole","Odette",
				"Pauline","Risette","Sophie","Thérése","Valerie","Yvette","Zoe","Angélique","Brigitte","Catherine",
				"Danielle","Édith","Félice","Gertrude","Henriette","Jeanne","Liana","Manette","Nadine","Ophélie",
                "Paulette", "Renée","Suzette","Tabatha","Valérie","Zoé","Anouk","Bérénice","Clarice","Ingrid",
                "Lydie",

#--------------------------- (SANDRA AGUILAR SANTOS)---------------------------------#                                
                "Amélie", "Béatrice", "Camille", "Daphné", "Élise", 
                "Fleur", "Gabrielle", "Hélène", "Isabelle", "Jacqueline", 
                "Léa", "Mélanie", "Noémie", "Océane", "Paula", 
                "Roxane", "Simone", "Thaïs", "Véronique", "Wendy", 
                "Xavier", "Yasmine", "Zara", "Aurore", "Blanche");
		END IF;
            
            
## -------------------------- SUIZA (Esau Vargas) ------------------------------------------------------------------------------- ##
	WHEN "Suiza" THEN
		IF v_genero = "M" THEN 
			SET v_nombre_generado = ELT(fn_numero_aleatorio_rangos(1,75),
				"Amélie", "Franzi", "Hans", "Martin", "Stefan", "Markus", "Andreas", "Peter", "Thomas" ,"Michael",
                "Christian", "Daniel", "David", "Patrick", "Matthias", "Lukas", "Simon", "Marcel", "Dominik" ,"Raphael",
                "Fabian", "Oliver", "Nico", "Dominique", "Walter", "Fritz", "Josef", "Max", "Otto" ,"Rolf",
                "Erich", "Karl", "Ueli", "Hans", "Renato", "Cedric", "Granit", "Remo", "Djibril" ,"Silvan",
                "Eray", "Nico", "Jérémy", "Yann", "Jonas", "Zeki", "Gregor", "Ardon", "Michel","Philipp",
               
#----------------------------Suiza (Alfredo Solis)--------------------------------------------#
               "Noah", "Lou", "Elia", "Noe", "Luca", 
               "Juri", "Lynn", "Aria", "Lian", "Charlie",
               "Nino", "Elin", "Leo", "Robin", "Laurin", 
               "Jaime", "Kaya", "Jona", "Mika", "Neo",
               "Yannik", "Junis", "Milou", "Tom", "Alva");
               
		ELSEIF v_genero = "F" THEN 
			SET v_nombre_generado = ELT(fn_numero_aleatorio_rangos(1,75),
				"Gaëlle", "Seraina", "Livia", "Elvira", "Nina", "Thaïs", "Jana", "Irina", "Julia" ,"Noëlle",
                "Luana", "Kattalin", "Florijana", "Francesca", "Géraldine", "Riola", "Naomi", "Lia", "Sandrine" ,"Malin",
                "Fabienne", "Alisha", "Kim", "Lara", "Aurélie", "Svenja", "Viola", "Mónica", "Nadine" ,"Meriame",
                "Isabelle", "Heidi", "Brigitte", "Franziska", "Sabine", "Corine", "Renate", "Beatrice", "Simone" ,"Ursula",
                "Leonie", "Emma", "Sophie", "Selina", "Anna", "Carla", "Emilia", "Lisa", "Elena","Chiara",

#----------------------------Suiza (Alfredo Solis)--------------------------------------------#
				"Jena", "Mila", "Mia", "Sophia", "Louisa", 
                "Leila", "Emily", "Sofia", "Lina", "Amelie",
				"Elea", "Lily", "Malia", "Liana", "Elina", 
                "Alina", "Lena", "Liv", "Zoe", "Leana",
				"Lea", "Luana", "Hannah", "Nora", "Nelia");
		END IF;
            
            
## -------------------------- SUECIA (Esau Vargas) ------------------------------------------------------------------------------- ##
	WHEN "Suecia" THEN
		IF v_genero = "M" THEN 
			SET v_nombre_generado = ELT(fn_numero_aleatorio_rangos(1,75),
				"Erik", "Karl", "Johan", "Lars", "Anders", "Per", "Nils", "Magnus", "Henrik" ,"Mikael",
                "Gustav", "Fredrik", "Sven", "Jonas", "Tobias", "Oskar", "Viktor", "Alexander", "Arvid" ,"Emil",
                "Victor", "Johannes", "William", "Anton", "Filip", "Marcus", "Benjamin", "Axel", "Ludvig" ,"Isak",
                "Mattias", "Patrik", "Linus", "Stefan", "Edward", "Philip", "Robin", "Richard", "Filip" ,"Kristoffer",
                "Christoffer", "Kerim", "Oscar", "Jesper", "Isaac", "Jacob", "Dejan", "Albin", "Ludwig","Zlatan",
               
#----------------------------SUECIA (Alfredo Solis)--------------------------------------------#               
				"Anshelm", "Timothee", "Elay", "Vynn", "Ray", 
                "Liam", "Lucas", "Levi", "Elias", "Valentin",
                "Julian", "Theo", "Leon", "Cesar", "William", 
                "Thorvald", "Leonel", "Matteo", "Oliver", "Vilgot",
                "Elliot", "Celian", "Ion", "Milo", "Nilo");
                
		ELSEIF v_genero = "F" THEN 
			SET v_nombre_generado = ELT(fn_numero_aleatorio_rangos(1,75),
				"Jennifer", "Emma", "Hedvig", "Zecira", "Jonna", "Nathalie", "Magdalena", "Nilla", "Hanna" ,"Amanda",
                "Linda", "Filipa", "Julia", "Elin", "Olivia", "Caroline", "Matilda", "Anna", "Kosovare" ,"Stina",
                "Rebecka", "Lina", "Sofia", "Madelen", "Mimmi", "Fridolina", "Linnea", "Ella", "Ebba" ,"Maja",
                "Klara", "Alva", "Linn", "Frida", "Sara", "Wilma", "Vera", "Ida", "Astrid" ,"Agnes",
                "Saga", "Molly", "Nova", "Tilda", "Signe", "Ronja", "Nellie", "Lovisa", "Liv","Tuva",

#----------------------------SUECIA (Alfredo Solis)--------------------------------------------#
				"Ottilia", "Lilly", "Aischa", "Natalia", "Yasmine", 
                "Ellie", "Mandi", "Freja", "Mila", "Loelia",
                "Anabelle", "Rachel", "Lea", "Lucia", "Emilia", 
                "Luna", "Neyla", "Elenor", "Ines", "Lia",
                "Kelli", "Alicia", "Melia", "Cleo", "Vera");
		END IF;

## -------------------------- Siria (Abdiel Rivera) ------------------------------------------------------------------------------- ##
	WHEN "Siria" THEN
		IF v_genero = "M" THEN 
			SET v_nombre_generado = ELT(fn_numero_aleatorio_rangos(1,50),
				"Abdel","Adib","Adil","Ahmed","Akram","Amin","Anás","Antara","Assim","Azahar",
                "Bahir","Bilal","Dalil","Dalal","Farid","Habib","Hafid","Haid","Haidar","Hakim",
                "Halim","Hamza","Hasan","Ibrahim","Jalal","Jalil","Jamal","Jamil","Kamal","Karim",
                "Khalil","Madani","Malek","Malih","Moad","Nader","Nadir","Nadim","Naim","Nasra",
                "Nassim","Omar","Rayan","Reda","Samir","Talal","Walid","Yassir","Yusuf","Zaid");
		ELSEIF v_genero = "F" THEN 
			SET v_nombre_generado = ELT(fn_numero_aleatorio_rangos(1,50),
				"Abir","Abla","Adila","Amal","Amira","Azahara","Badra","Basima","Dalila","Dounia",
                "Emira","Farah","Fariha","Fátima","Habiba","Halima","Hamida","Hanane","Houda","Ikram",
                "Jalila","Jelila","Janna","Jenna","Kalila","Karima","Latifa","Maissa","Malak","Malika",
                "Marjane","Nabila","Nadra","Naouar","Nayla","Olaya","Rada","Radia","Rania","Sabira",
                "Salima","Salma","Samira","Soraya","Yamina","Yasamina","Yassira","Zahira","Zahra","Zoraida");
		END IF;
        
        
## -------------------------- Sudán (Abdiel Rivera) ------------------------------------------------------------------------------- ##
	WHEN "Sudán" THEN
		IF v_genero = "M" THEN 
			SET v_nombre_generado = ELT(fn_numero_aleatorio_rangos(1,50),
				"Ahmed","Ali","Adam","Adil","Amar","Atif","Ammar","Amin","Asim","Abdul",
                "Abbas","Ahmad","Akram","Abdullah","Abraham","Abdelaziz","Abdu","Andrew","Amr","Abdulrahman",
                "Mohammed","Khalid","Omer","Ibrahim","Osman","Yousif","Yasir","Abdalla","Ayman","Isam",
                "Nazar","Ashraf","Musa","Waleed","Hatim","Abubaker","Amir","David","Hamid","Emad",
                "Anwar","Haitham","Yahia","Hamza","Paul","Samuel","Saad","Bashir","Stephen","George");
		ELSEIF v_genero = "F" THEN 
			SET v_nombre_generado = ELT(fn_numero_aleatorio_rangos(1,50),
				"Sara","Salma","Hiba","Sarah","Rania","Manal","Hanan","Dalia","Alaa","Safa",
                "Rehab","Nahla","Randa","Sawsan","Rabab","Wafa","Susan","Nuha","Fatma","Awatif",
                "Elizabeth","Sana","Elham","Nadir","Rose","Maria","Huda","Samar","Yousra","Arwa",
                "Wisal","Asha","Suad","Islam","Hana","Lina","Zainab","Ala","Lubna","Walaa",
                "Sanaa","Shadia","Martha","Diana","Amina","Yosra","Omnia","Lamia","Yasmin","Nancy");
		END IF;

## --------------------------Indonesia (Jesus Estrada) ------------------------------------------------------------------------------- ##
	WHEN "Indonesia" THEN
		IF v_genero = "M" THEN 
			SET v_nombre_generado = ELT(fn_numero_aleatorio_rangos(1,50),
				"Ahmad", "Ali", "Arief", "Aris", "Arief", "Budi", "Dedi", "Dharma", "Dodi", "Dwi", 
                "Eko", "Faisal", "Farhan", "Fauzi", "Fikri", "Galang", "Hadi", "Hamzah", "Handoko", "Haris", 
                "Hasan", "Ibrahim", "Imam", "Irfan", "Ismail", "Joko", "Joni", "Krisna", "Makmur", "Maman", 
                "Miftah", "Mochamad", "Muhammad", "Nasir", "Nugroho", "Pramono", "Rahmat", "Rangga", "Rendra","Rian", 
                "Ricky", "Ridwan", "Saputra", "Satria", "Sigit", "Sudirman", "Surya", "Taufik", "Yudi", "Yusuf");
                
		ELSEIF v_genero = "F" THEN 
			SET v_nombre_generado = ELT(fn_numero_aleatorio_rangos(1,50),
				"Aðalbjörg", "Anna", "Arna", "Ásta", "Berglind", "Birna", "Dóra", "Eir", "Eva", "Fríða", 
                "Guðrún", "Halla", "Hekla", "Helga","Hildur", "Inga", "Ingibjörg", "Jóhanna", "Katrín","Kristín", 
                "Lára", "Margrét", "María", "Ragnheiður","Rakel","Sara", "Sigríður", "Sóley", "Sólveig", "Steinunn", 
                "Svala", "Tinna", "Valdís", "Valgerður", "Védís", "Vigdís", "Ýr", "Þórdís","Þórunn", "Þuríður", 
                "Alda", "Ásdís", "Borghildur", "Dagný", "Elísabet", "Emilía", "Gudlaug", "Hildigunnur","Kolbrún", "Rósa");
		END IF;
## -------------------------- Islandia (Jesus Estrada) ------------------------------------------------------------------------------- ##
	WHEN "Islandia" THEN
		IF v_genero = "M" THEN 
			SET v_nombre_generado = ELT(fn_numero_aleatorio_rangos(1,50),
				"Alexander", "Andri", "Arnar", "Baldur", "Birkir", "Bjarni", "Davíð", "Eiríkur", "Erlingur", "Finnur", 
                "Friðrik", "Gísli", "Guðmundur", "Guðni", "Halldór", "Hannes", "Haraldur", "Haukur", "Hjörtur", "Ingvar", 
                "Jón", "Kári", "Kristján", "Magnús", "Már", "Matthías", "Ólafur", "Óskar", "Páll", "Pétur", 
                "Ragnar", "Rúnar", "Sigmar", "Sigurður", "Stefán", "Sveinn", "Tryggvi", "Valdimar", "Valur", "Víðir", 
                "Vigfús", "Vilhjálmur", "Þórarinn","Þórður", "Þórir", "Þorsteinn", "Þröstur", "Örn", "Örvar", "Örnólfur");
		
		ELSEIF v_genero = "F" THEN     
			SET v_nombre_generado = ELT(fn_numero_aleatorio_rangos(1,50),
				"Anna", "Arna", "Ásta", "Auður", "Berglind", "Birgitta", "Birta", "Dagný", "Eir", "Eva", 
				"Fanney", "Guðrún", "Halla", "Hanna", "Hildur", "Inga", "Ingibjörg", "Íris", "Jóhanna", "Katrín", 
				"Kristín", "Laufey", "Lilja", "Linda", "Magdalena", "Margrét","Maria", "Rakel", "Rannveig", "Sara", 
				"Sigríður", "Sigurlína", "Sólrún", "Sólveig", "Stefanía", "Steinunn", "Svanhildur", "Svava", "Svea", "Tinna", 
				"Una", "Vala", "Valgerður", "Vigdís", "Þóra", "Þórdís", "Viktoría", "Vilborg", "Ýr", "Þórdís");
		END IF;
        
/*Agregados a la base*/

## -------------------------- Alemania  (URIEL MALDONADO CORTEZ 200931)------------------------------------------------------------------------------- ##
	WHEN "Alemania" THEN
		IF v_genero = "M" THEN 
			SET v_nombre_generado = ELT(fn_numero_aleatorio_rangos(1,25),
				"Andreas", "Anton", "Benjamin", "Christian", "David", 
                "Elias", "Felix", "Florian" ,"Friedrich","Georg", 
                "Gustav", "Heinrich", "Jakob", "Johannes", "Jonas", 
                "Karl", "Klaus", "Konrad" ,"Ludwig","Matthias", 
                "Maximilian", "Michael", "Moritz", "Nikolaus", "Otto");                                                                                                   
			
		ELSEIF v_genero = "F" THEN 
			SET v_nombre_generado = ELT(fn_numero_aleatorio_rangos(1,25),
				"Anna", "Charlotte", "Emma", "Emilia", "Hannah", 
                "Isabella", "Julia", "Katharina", "Laura" ,"Lea",
				"Leonie", "Lina", "Marie", "Mia", "Sophie", 
                "Sophia", "Theresa", "Victoria", "Viola" ,"Vivien",
				"Zoe", "Alina", "Alina", "Clara", "Lena");
		END IF;
            
           
#---------------------------Republica Checa (SANDRA AGUILAR SANTOS)---------------------------------#
	WHEN "Republica Checa" THEN
		IF v_genero = "M" THEN
			SET v_nombre_generado = ELT(fn_numero_aleatorio_rangos(1, 25),
				"Alexandre", "Benjamin", "Cédric", "David", "Émile", 
                "François", "Gabriel", "Hugo", "Isaac", "Jérôme",
                "Kilian", "Léo", "Maxime", "Nathan", "Olivier",
                "Philippe", "Quentin", "Raphael", "Sébastien", "Thierry",
                "Vincent", "William", "Xavier", "Yohan", "Zacharie");
			
		ELSEIF v_genero = "F" THEN
			SET v_nombre_generado = ELT(fn_numero_aleatorio_rangos(1, 25),
				"Amélie", "Béatrice", "Camille", "Daphné", "Élise", 
                "Fleur", "Gabrielle", "Hélène", "Isabelle", "Jacqueline", 
                "Léa", "Mélanie", "Noémie", "Océane", "Paula", 
                "Roxane", "Simone", "Thaïs", "Véronique", "Wendy", 
                "Xavier", "Yasmine", "Zara", "Aurore", "Blanche") ;
		END IF;


## -------------------------- Palestina (9A Mauricio Ramírez) ------------------------------------------------------------------------------- ##
	WHEN "Palestina" THEN
		IF v_genero = "M" THEN 
			SET v_nombre_generado = ELT(fn_numero_aleatorio_rangos(1,50),
				'Muhammad', 'Ahmed', 'Mahmoud', 'Youssef', 'Omar', 'Ali', 'Ibrahim', 'Khaled', 'Mustafa', 'Hassan',
                'Rami', 'Ahmad', 'Khalil', 'Samir', 'Tarek', 'Nabil', 'Jamal', 'Said', 'Raed', 'Kareem',
                'Salim', 'Fadi', 'Jaber', 'Yasir', 'Ziad', 'Faisal', 'Abdullah', 'Hussein', 'Kamal', 'Nasser',
                'Tamer', 'Adel', 'Anwar', 'Hamza', 'Majed', 'Fares', 'Zakaria', 'Wael', 'Yasser', 'Imad',
                'Fouad', 'Nidal', 'Mansour', 'Ayman', 'Issa', 'Muhannad', 'Walid', 'Jamil', 'Abed', 'Amer');                                                                                                   
		ELSEIF v_genero = "F" THEN 
			SET v_nombre_generado = ELT(fn_numero_aleatorio_rangos(1,48),
				'Fatima', 'Aisha', 'Mariam', 'Sarah', 'Leila', 'Nour', 'Rana', 'Dina', 'Layla', 'Malak',
                'Hala', 'Noor', 'Farah', 'Rasha', 'Wafa', 'Ghada', 'Amal', 'Yasmin', 'Suha', 'Maha',
                'Sana', 'Rania', 'Fadwa', 'Lina', 'Nadia', 'Hanan', 'Muna', 'Rima', 'Samar', 'Maya',
                'Huda', 'Nawal', 'Abeer', 'Maysa', 'Samia', 'Mona', 'Saida', 'Najwa', 'Widad','Salma',
                'Nisreen', 'Hayat', 'Nabila', 'Hiba', 'Asma', 'Amani', 'Nada', 'Amira');
		END IF;
         

## -------------------------- Sri Lanka (CsSuar) ------------------------------------------------------------------------------- ##
	WHEN "Sri Lanka" THEN
		IF v_genero = "M" THEN 
			SET v_nombre_generado = ELT(fn_numero_aleatorio_rangos(1,25),
				"Mykhailo", "Oleksandr", "Dmytro", "Volodymyr", "Andriy",
                "Ivan", "Yuriy", "Serhiy", "Vasyl" ,"Artem",
                "Roman", "Pavlo", "Oleg", "Vitaliy", "Yevhen",
                "Taras", "Maksym", "Ihor", "Mykola" ,"Oleksandr",
                "Oleksandr", "Bohdan", "Roman", "Vladyslav", "AndriyAndriy");                                                                 
		ELSEIF v_genero = "F" THEN 
			SET v_nombre_generado = ELT(fn_numero_aleatorio_rangos(1,25),
				"Wijesekara", "Desilva", "Indika", "Farook", "Ranathunga",
                "Attanayake", "Basnayake", "Senaratne", "Withanage" ,"Abdul",
                "Madushan", "Dilrukshi", "Sameera", "Senevirathna", "Nuwan",
                "Kodithuwakku", "Jayarathna", "Oksana", "Adikari" ,"Siriwardena",
                "Kannangara", "Sri", "Wijerathne", "Chamara","Chanchan");                                                                                                                                
		END IF;    


## -------------------------- Singapur  (CsSuar)------------------------------------------------------------------------------- ##
	WHEN "Singapur" THEN
		IF v_genero = "M" THEN 
			SET v_nombre_generado = ELT(fn_numero_aleatorio_rangos(1,25),
				"Andreas", "Anton", "Benjamin", "Christian", "David",
                "Elias", "Felix", "Florian" ,"Friedrich","Otto",
                "Georg", "Gustav", "Heinrich", "Jakob", "Johannes",
                "Jonas", "Karl", "Klaus", "Konrad" ,"Ludwig",
                "Matthias", "Maximilian", "Michael", "Moritz", "Nikolaus");                                                                                                   
			
		ELSEIF v_genero = "F" THEN 
			SET v_nombre_generado = ELT(fn_numero_aleatorio_rangos(1,25),
				"Anna", "Cherlotte", "Enma", "Emily", "Hanna",
                "Isabella", "Julia", "Katharina", "Laura" ,"Lea",
                "Leoniie", "Lina", "Marie", "Mia", "Sophie",
                "Shophia", "Theresa", "Victoria", "Violah" ,"Viviene",
                "Zoe", "Alina", "Ale", "Clara", "Lena");
			END IF;


## -------------------------- Vietnam (marco rosas)------------------------------------------------------------------------------- ##
	WHEN "Vietnam" THEN
		IF v_genero = "M" THEN 
			SET v_nombre_generado = ELT(fn_numero_aleatorio_rangos(1,25),
				"Thai","Tuan","Minh","Hoang","An",
                "Quang","Nam","Duc","Hieu","Khai",
                "Vinh","Long","Hung","Khoa","Dinh",
                "Thanh","Trung","Hai","Bao","Ngoc",
                "Tam","Son","Nhat","Khanh","Quoc");
	
		ELSEIF v_genero = "F" THEN 
			SET v_nombre_generado = ELT(fn_numero_aleatorio_rangos(1,25),
				"Thien","Linh","Mai","Huyen","Anh",
                "Lan","Thi","Bich","Nga","Ngoc",
                "Hoa","Trang","Nhu","Hanh","Thu",
                "Ngan","Dieu","Huong","Quynh","Phuong",
                "Thao","Huynh","Tuyet","Thanh","Yen");
		END IF;


#----------------------------Australia (Elisama Calva)--------------------------------------------#
	WHEN "Australia" THEN
		IF v_genero = "M" THEN
			SET v_nombre_generado = ELT(fn_numero_aleatorio_rangos(1,25),
				"Frankie","Blair","Aubrey","Freddie","Winnie",
				"Ariel","Arwyn","Ryan","Poppe","Laurin",
				"Page","Ari","Mackenzie","Kit","Briar",
				"Addison","River","Emerson","Kaya","Marlin",
				"Willo","Ainsley","Peytonn","Ashton","Gray");

		ELSEIF v_genero = "F" THEN
			SET v_nombre_generado = ELT(fn_numero_aleatorio_rangos(1,25),
				"Genevieve","Aad","Adelaide","Persephone","Daisy",
				"Matilda","Ruby","Scarlett","Malea","Eva",
				"Poppie","Kiani","Iwanka","Zali","Violet",
				"Abam","Costanza","Malía","Piper","Lucy",
				"Phoebe","Antoinette","Asia","Elara","Margot");
		END IF;


## -------------------------- Chile  (Lesly Yareth Hernandez Bonilla)------------------------------------------------------------------------------- ##
	WHEN "Chile" THEN
		IF v_genero = "M" THEN 
			SET v_nombre_generado = ELT(fn_numero_aleatorio_rangos(1,25),
				"Agustin", "Benjamin", "Vicente", "Matias", "Tomas",
                "Joaquin", "Maximiliano", "Sebastian", "Gabriel" ,"Ignacio",
                "Santiago", "Diego", "Juan", "Andres", "Francisco", 
                "Jose", "Carlos", "Nicolas", "Felipe" ,"Manuel",
                "Cristobal", "Javier", "Eduardo", "Daniel", "Mauricio");         
                                                                          
		ELSEIF v_genero = "F" THEN 
			SET v_nombre_generado = ELT(fn_numero_aleatorio_rangos(1,25),
				"Sofia", "Emilia", "Isabella", "Agustina", "Florencia", 
                "Martina", "Catalina", "Antonia", "Javiera" ,"Valentina",
                "Josefina", "Victoria", "Constanza", "Fernanda", "Amanda", 
                "Camila", "Tanacia", "Francisca", "Beatriz" ,"Gabriela",
                "Maria", "Carolina", "Paula", "Daniela", "Alejandra");                                                                                                                             
		END IF; 
            
            
## -------------------------- Somalia (Lesly Yareth Hernandez Bonilla)------------------------------------------------------------------------------- ##
	WHEN "Somalia" THEN
		IF v_genero = "M" THEN 
			SET v_nombre_generado = ELT(fn_numero_aleatorio_rangos(1,25),
				"Mohamed", "Ahmed", "Abdullahi", "Abdi", "Hassan", 
                "Ali", "Yusuf", "Mustafa", "Osman" ,"Khaild",
                "Ibrahim", "Omar", "Abdirahman", "Abdirizak", "Abshir", 
                "Liban", "Said", "Jama", "Hussen" ,"Ismail",
                "Adan", "Abdikadir", "Abdul", "Afail", "Mohamed Ali");                                                                 
		ELSEIF v_genero = "F" THEN 
			SET v_nombre_generado = ELT(fn_numero_aleatorio_rangos(1,25),
				"Aisha", "Fatima", "Khadija", "Hodan", "Faduna", 
                "Halima", "Maryan", "Safiya", "Sahra" ,"Hawa",
                "Asha", "Farhiya", "Nasra", "Muna", "Shamso", 
                "Hamdi", "Ifrah", "Ikran", "Amal" ,"Sabrina",
                "Sumaya", "Naima", "Ubah", "Hani", "Nima");                                                                                                                                
		END IF;         


## ------------------------------ Honduras (Josseline Alvarado) ----------------------------------------------------------------##
	WHEN "Honduras" THEN 
		IF v_genero = "M" THEN
			SET v_nombre_generado = ELT(fn_numero_aleatorio_rangos(1,25),
				"Jasiel", "Allan", "Danny", "Jareth", "Joseth", 
				"Denilson", "Yankel", "Marel", "Andrew", "Evans",
				"Osmin", "Dominic", "Delmer", "Jahzeel", "Arlin", 
				"Dodanim", "Jayden", "Anthony", "Kelvin", "Paul", 
				"Kenner", "Henry", "Yanuel", "Tabora", "Abisai");
		ELSEIF v_genero = "F" THEN
			SET v_nombre_generado = ELT(fn_numero_aleatorio_rangos(1,26),
				"Bessy", "Lizzy", "Emely", "Krizia", "Esly",
				"Litzy", "Kelin", "Angely", "Soad", "Hillary", 
				"Delmy", "Saidy", "Stephany", "Sayda", "Day", 
				"lin", "Sherly", "Meylin", "Lurvin", "Emy", 
				"Denia", "Maylin","Glenda", "Heysel", "Larissa", 
				"Sherlyn");				
        END IF;
        
 ## -------------------------- CHINA(Eliel Diaz Galindo)------------------------------------------------------------------------------- ##
	WHEN "China" THEN
		IF v_genero = "M" THEN 
			SET v_nombre_generado = ELT(fn_numero_aleatorio_rangos(1,25),
				"Tai", "Shun", "Hai", "Min", "Shen", 
                "Shi", "Chun", "Mao", "Su", "Zhou", 
                "Ning", "Mu", "Yun", "Jiang", "Fo", 
                "Xen", "Fu", "Inari", "Syaoran", "Dalai",
                "Yu", "Jian", "Tao", "Kun", "Qiang");
		ELSEIF v_genero = "F" THEN 
			SET v_nombre_generado = ELT(fn_numero_aleatorio_rangos(1,25),
				"Miyu", "Nuo", "Zhen", "Mulán", "Fen", 
                "Yu", "Lian", "Xia", "Bo", "Tao", 
                "Jun", "Fei", "Shan", "Wen", "Shui", 
                "Ju", "Ming", "Mei", "Fang", "Xiang", 
                "Liazng", "Guan", "An", "Tien", "Shuang");
		END IF;
 
 
 ## ----------- PERÚ (Mariela González López) --------------------------##
	WHEN "Perú" THEN
		IF v_genero = "M" THEN 
			SET v_nombre_generado = ELT(fn_numero_aleatorio_rangos(1,25),
				"Liam","Thiago","Dylan","Gael","Mateo",
                "Luis","Juan","Axel","Ian","Ángel",
				"Santiago","Lucas","Carlos","José","Iker",
                "Gabriel","Mathias","Sebastián","Diego","Óscar",
                "Daniel","Marco","Edwin","Walter","Javier");
		ELSEIF v_genero = "F" THEN 
			SET v_nombre_generado = ELT(fn_numero_aleatorio_rangos(1,25),
				"Mia","Alessia","Camila","Danna","Zoe",
                "Luciana","Aitana","María","Briana","Luz",
                "Ariana","Valentina","Luana","Sofia","Emma",
                "Antonella","Emily","Lia","Kiara","Ana",
                "Rosa","Carmen","Flor","Diana","Ruth");
		END IF;


## ----------- PARAGUAY (Mateo Maldonado Tolentino) --------------------------##
	WHEN "Paraguay" THEN
		IF v_genero = "M" THEN 
			SET v_nombre_generado = ELT(fn_numero_aleatorio_rangos(1,25),
				"Juan","José","Pedro","Carlos","Francisco",
                "Luis","Jorge","Miguel","Víctor","Ramón",
                "Julio","Óscar","Mario","Antonio","Hugo",
                "César","Gustavo","Roberto","Rubén","Pablo",
                "Édgar","Ángel","Alberto","Ricardo","Arnaldo");
		ELSEIF v_genero = "F" THEN 
			SET v_nombre_generado = ELT(fn_numero_aleatorio_rangos(1,25),
				"Silvia","Blanca","María","Juana","Ana",
                "Rosa","Ramona","Carmen","Francisca","Norma",
                "Gladys","Gloria","Mirian","Graciela","Lidia",
                "Liz","Sonia","Nancy","Teresa","Marta",
                "Lucía","Antonia","Laura","Mirta","Julia");
		END IF;


## -------------------------- Venezuela  (Fabricio Guzman Vite)------------------------------------------------------------------------------- ##
	WHEN "Venezuela" THEN
		IF v_genero = "M" THEN 
			SET v_nombre_generado = ELT(fn_numero_aleatorio_rangos(1,25),
				"José","Carlos","Luis","Juan","Pedro",
                "Miguel","Alejandro","Andrés","Gabriel","Rafael",
                "Antonio","Francisco","Jesús","Manuel","David",
                "Fernando","Jorge","Ramón","Diego","Leonardo",
                "Ernesto","Víctor","Ricardo","Tomás","Marcelo");                                                                 
		ELSEIF v_genero = "F" THEN 
			SET v_nombre_generado = ELT(fn_numero_aleatorio_rangos(1,25),
				"María","Ana","Carmen","Laura","Gabriela",
                "Isabel","Luisa","Victoria","Carolina","Adriana",
                "Patricia","Valentina","Paola","Diana","Andrea",
                "Natalia","Alejandra","Sofía","Clara","Raquel",
                "Beatriz","Julia","Mariana","Daniela","Valeria");                                                                                                                                
		END IF;

## -------------------------- Grecia  Jose Luis()------------------------------------------------------------------------------- ##
	WHEN "Grecia" THEN
		IF v_genero = "M" THEN 
			SET v_nombre_generado = ELT(fn_numero_aleatorio_rangos(1,25),
				"Georgios","Dimitrios","Loannis","Nikolaos","Konstantin",
                "Christos","Panagiotis","Vasiliki","Vasileios","Konstantinos",
                "Atnanasios","Angeliki","Evangelos","Antinios","Emmanovil",
                "Theodoros","Spyridon","Anastasio", "Foteini","Paraskevi",
                "Kolliopi","Charalamos","Alexandros","Ryriaki","Stauros");                                                                 
		ELSEIF v_genero = "F" THEN 
			SET v_nombre_generado = ELT(fn_numero_aleatorio_rangos(1,25),
				"Eleni","Sofia","Anastasia","Georgia","Evangelia",
                "Anna","Dimitra","Loanna","Despoina","Christina",
                "Andreas","Ilias","Alexandra","Stavroula","Chrysoula",
                "Theodora","Athina","Eleftheria","Olga","Eugenia",
                "Konstantina","Marina","Antonia","Niki","Margarita");                                                                                                                                			
		END IF;      
        
        
## -------------------------- Tailandia  (Daniela Álvarez - 9°A) ------------------------------------------------------------------------------- ##
	WHEN "Tailandia" THEN
		IF v_genero = "M" THEN 
			SET v_nombre_generado = ELT(fn_numero_aleatorio_rangos(1,25),
				"Anuman", "Veera", "Pravat", "Phichit", "Sumate",  
                "Ram", "Runa", "Punyaa", "Chai", "Ritthirong", 
                "Decha", "Aat", "Ananda", "Boon-nam", "Preed", 
                "Prem", "Benz", "Boon-mee", "Sakda", "Anurak", 
                "Apinya", "Somchair", "Tierra", "Tanawat", "Daw");                                                                 
		ELSEIF v_genero = "F" THEN 
			SET v_nombre_generado = ELT(fn_numero_aleatorio_rangos(1,26),
				"Chantana", "Anong", "Arpa", "Lamai", "Achara", 
                "Dok Mai", "Viga", "Aom", "Gamon", "Busaba", 
                "Busarakham", "Chaem", "Choi", "Chailai", "Dok Rak", 
                "Kamlai", "Kanda", "Karnchana", "Ireshi", "Aranya", 
                "Kaeo", "Duangkamol", "Chalermwan", "Kannika", "Junta", 
                "Buppha");                                                                                                                                
		END IF;      


## -------------------------- Arabia Saudita (FABIOLA BAUTISTA - 9°A)------------------------------------------------------------------------------- ##
	WHEN "Arabia Saudita" THEN
		IF v_genero = "M" THEN 
			SET v_nombre_generado = ELT(fn_numero_aleatorio_rangos(1,25),
				"Antara", "Amin", "Jamal", "Madani", "Bilal", 
                "Azahar", "Moad", "Talal", "Omar", "Bahir", 
                "Walid", "Yassir", "Rami", "Reda", "Haidar", 
                "Jamil", "Nasra", "Malek", "Ibrahim", "Abel", 
                "Nassim", "Rayan", "Hamza", "Farid", "Abdel");    
                
		ELSEIF v_genero = "F" THEN 
			SET v_nombre_generado = ELT(fn_numero_aleatorio_rangos(1,25),
				"Adila", "Zoraida", "Houda", "Dalila", "Latifa", 
                "Kalila", "Emira", "Hamida", "Janna", "Azahara", 
                "Kaila", "Salma", "Yasamina", "Malak", "Amira", 
                "Zaida", "Dounia", "Donna", "Yasmine", "Halima", 
                "Fariha", "Jenna", "Badra", "Zoraida", "Abir");                                                                                                                                 
		END IF;      
        
        
	ELSE SET v_nombre_generado= CONCAT("Desconocido de: ",v_pais);
	END CASE;
	RETURN v_nombre_generado;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `fn_numero_aleatorio_rangos` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `fn_numero_aleatorio_rangos`(v_limite_inferior int,
 v_limite_superior INT) RETURNS int
    DETERMINISTIC
BEGIN
     DECLARE v_numero_generado INT DEFAULT FLOOR(Rand()* (v_limite_superior-v_limite_inferior+1)+v_limite_inferior);
     SET @numero_generado = v_numero_generado;
RETURN v_numero_generado;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-07-17 17:13:52
