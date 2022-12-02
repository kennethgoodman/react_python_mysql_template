DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(128) NOT NULL,
  `password` varchar(255) NOT NULL,
  `active` tinyint(1) NOT NULL,
  `created_date` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (0,'abc','$2b$04$8soYgayLjwuTx5mzLIAmWuFWtzkptaJiLDjqzN3S9f9mmQkdgWIAC',1,'2022-12-01 01:04:07'),
                          (1,'def','$2b$04$8soYgayLjwuTx5mzLIAmWuFWtzkptaJiLDjqzN3S9f9mmQkdgWIAC',1,'2022-12-02 02:05:08'),
                          (2,'xyz','$2b$04$8soYgayLjwuTx5mzLIAmWuFWtzkptaJiLDjqzN3S9f9mmQkdgWIAC',1,'2022-12-03 03:07:09');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
