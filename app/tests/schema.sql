CREATE TABLE `users` (
                         `id` int NOT NULL AUTO_INCREMENT,
                         `email` varchar(255) NOT NULL,
                         `password` varchar(255) NOT NULL,
                         `created` datetime DEFAULT NULL,
                         `modified` datetime DEFAULT NULL,
                         PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
CREATE TABLE `articles` (
                            `id` int NOT NULL AUTO_INCREMENT,
                            `user_id` int NOT NULL,
                            `title` varchar(255) NOT NULL,
                            `slug` varchar(191) NOT NULL,
                            `body` text,
                            `published` tinyint(1) DEFAULT '0',
                            `created` datetime DEFAULT NULL,
                            `modified` datetime DEFAULT NULL,
                            PRIMARY KEY (`id`),
                            UNIQUE KEY `slug` (`slug`),
                            KEY `user_key` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
CREATE TABLE `tags` (
                        `id` int NOT NULL AUTO_INCREMENT,
                        `title` varchar(191) DEFAULT NULL,
                        `created` datetime DEFAULT NULL,
                        `modified` datetime DEFAULT NULL,
                        PRIMARY KEY (`id`),
                        UNIQUE KEY `title` (`title`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
CREATE TABLE `articles_tags` (
                                 `article_id` int NOT NULL,
                                 `tag_id` int NOT NULL,
                                 PRIMARY KEY (`article_id`,`tag_id`),
                                 KEY `tag_key` (`tag_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
