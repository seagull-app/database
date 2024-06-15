-- This code is used to create the Seagull database tables
-- This code has been created with mySQL

-- SESSIONS
CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `expires_at` datetime NOT NULL,
  `user_id` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- USERS
CREATE TABLE `users` (
  `id` varchar(255) NOT NULL,
  `provider` varchar(100) NOT NULL DEFAULT 'credentials',
  `username` varchar(100) DEFAULT NULL,
  `firstName` varchar(255) NOT NULL,
  `lastName` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `isDeveloper` tinyint DEFAULT '0',
  `isClient` tinyint DEFAULT '0',
  `trust` int DEFAULT '250',
  `skill` int DEFAULT '100',
  `registerStage` int NOT NULL DEFAULT '0',
  `openForWork` tinyint NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  UNIQUE KEY `username_UNIQUE` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- TAGS
CREATE TABLE `tags` (
  `id` int NOT NULL AUTO_INCREMENT,
  `affectedId` varchar(255) NOT NULL,
  `order` int DEFAULT NULL,
  `for` varchar(255) NOT NULL,
  `type` varchar(255) DEFAULT 'user',
  `value` varchar(255) NOT NULL,
  `level` varchar(45) DEFAULT 'novice',
  `classes` varchar(255) DEFAULT NULL,
  `timestamp` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=112 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- USERLINKS
CREATE TABLE `userLinks` (
  `id` int NOT NULL AUTO_INCREMENT,
  `userId` varchar(255) NOT NULL,
  `value` varchar(255) NOT NULL,
  `secure` tinyint NOT NULL DEFAULT '0',
  `verified` tinyint NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
