use app_db;
SET CHARACTER_SET_CLIENT = utf8;
SET CHARACTER_SET_CONNECTION = utf8;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
                         `id` int NOT NULL AUTO_INCREMENT,
                         `email` varchar(255) NOT NULL,
                         `password` varchar(255) NOT NULL,
                         `created` datetime DEFAULT NULL,
                         `modified` datetime DEFAULT NULL,
                         PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'cakephp@example.com','secret','2023-02-14 04:50:11','2023-02-14 04:50:11'),(2,'kinjyo.hideki@hamee.co.jp','0000','2023-02-14 05:52:39','2023-02-14 05:52:39');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `articles`
--

DROP TABLE IF EXISTS `articles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
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
                            KEY `user_key` (`user_id`),
                            CONSTRAINT `articles_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `articles`
--

LOCK TABLES `articles` WRITE;
/*!40000 ALTER TABLE `articles` DISABLE KEYS */;
INSERT INTO `articles` VALUES (1,1,'First Post','first-post','This is the first post.',1,'2023-02-14 04:50:12','2023-02-14 04:50:12'),(2,2,'もしも世界','moshimo','スタテン島空港へ行く途中で停止して、電話したのが間違いなく失敗だn「出発を５分待ちましょう。これが私どものできる精いっぱいです」\r\n　そこで、タクシーに大急ぎで戻って、３速でぶっ飛ばし、彗星のようにスタテン橋に突っ込み、鋼鉄の虹橋にじばしに踏み込んだ。\r\n　モスクワで開催されるウラル・トンネディクソン・ウェルズ、会社はＮ・Ｊ・ウエルズコーポレーション、つまり父のだが。\r\n　俺には何事にも遅刻するという悪い評判があった。いつも何かしら起こって、時間到着を妨害する。\r\n　決して俺の落ち度ではない。今回は恩師のハスカル・た。スタテン橋の途中で発射轟音が聞こえ、ソ連のバイカルロケットがゴーッと上空を長い炎を引きながら曳光弾えいこうだんのように飛んで行った。\r\n　会社はとにかく契約した。ベイルートの社員を引っ張ってモスクワへ飛ばせたが、俺の評判はガら、夕刊を見たら、すごくいい取引をした気がした。\r\n　バイカル機が嵐を避けるために、東境界線の北端を飛んでいる時、イギリスの貨物機と翼が接触し、乗客500人のうち100人を除く人命が失われたという。\r\n　俺はもう少しで残酷な意味『故・道で育ち、二十才をすぎてから上京して、三十代を関西で送った。私の父は東北出身だったので、東北のズーズー弁と、北海道生れの、やや標準語に近い母の言葉を手本に私は成長した。私の父は、たいていの品物の下に「こ」をつけて話した。\r\n　例いな」\r\n　たいへん機嫌のいい時など、父は、こんなふうに云った。北海道では、父と同じように「こっこ」という言葉はあるが、つづけて、「娘っこ、こつこ」とは云わないので、私たちは、そんなときには腹をかかえて笑った。父はそのほかにも、は気がつかないが、父さんは、そんなに「こ」をつけるかな」\r\n「つけるねえ。これからは、ぜったい言葉の終りに『こ』をつけないほうがいいと思う」\r\n　父は、私をみおろして、にっと笑った。\r\n「それも程度問題だ。あんまり緊張すると、話があるものだ。父さんの国では、他の場所へいったとき、みな、この『こ』に全神経を使うために、笑い話まであるほどなのだ。ある人が東京へいって、ぜったいに『こ』を使わずに話をした所、たいへん調子よくいったので、勢いに乗じて街へ一人で買いにく、そのお品は、ただいま品切れ中でございます』\r\n　すると、その人は、すっかりふんがいしてしまって、大声で云った。',0,'2023-02-14 05:57:19','2023-02-14 05:57:19'),(4,1,'坊っちやん','bochan','　親譲りの無鉄砲で小供の時から損から飛び降りて一週間程腰を抜かした事がある。なぜそんな無闇をしたと聞く人があるかも知れぬ。別段深い理由でもない。新築の二階から首を出して居たら、同級生の一人が冗談に、いくら威張つても、そこから飛び降りる事は出来まい。弱虫やーい。翳して、友達に見せて居たら、一人が光る事は光るが切れさうもないと云つた。切れぬ事があるか、何でも切つて見せると受け合つた。そんなら君の指を切つて見ろと注文したから、何だ指位此通りだと右の手の親指の甲をはすに切り込んだ。幸ナイフがのと、親指の骨が堅かつたので、今だに親指は手に付いて居る。然し創痕は死ぬ迄消えぬ。\r\n　庭を東へ二十歩に行き尽すと、南上がりに聊か許りの菜園があつて、真中に栗の木が一本立つて居る。是は命より大事な栗だ。実の熟する時分は起き抜けに、とう／＼勘太郎を捕まへてやつた。其時勘太郎は逃げ路を失つて、一生懸命に飛びかゝつて来た。向ふは二っ許り年上である。弱虫だが力は強い。鉢の開いた頭を、こつちの胸へ宛てゝぐい／＼押した拍子に、勘太郎の頭がすべつて、おれの袷の袖の中つた。邪魔になつて手が使へぬから無暗に手を振つたら、袖の中にある勘太郎の頭が、右左へぐら／＼靡いた。仕舞に苦しがつて袖の中から、おれの二の腕へ食い付いた。痛かつたから勘太郎を垣根へ押しつけて置いて、足搦あしがらをかけて向へ斃しても取り返して来た。',0,'2023-02-14 05:57:40','2023-02-14 05:57:40');
/*!40000 ALTER TABLE `articles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags`
--

DROP TABLE IF EXISTS `tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tags` (
                        `id` int NOT NULL AUTO_INCREMENT,
                        `title` varchar(191) DEFAULT NULL,
                        `created` datetime DEFAULT NULL,
                        `modified` datetime DEFAULT NULL,
                        PRIMARY KEY (`id`),
                        UNIQUE KEY `title` (`title`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags`
--

LOCK TABLES `tags` WRITE;
/*!40000 ALTER TABLE `tags` DISABLE KEYS */;
INSERT INTO `tags` VALUES (1,'青空文庫','2023-02-14 05:58:36','2023-02-14 05:58:36');
/*!40000 ALTER TABLE `tags` ENABLE KEYS */;
UNLOCK TABLES;


--
-- Table structure for table `articles_tags`
--

DROP TABLE IF EXISTS `articles_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `articles_tags` (
                                 `article_id` int NOT NULL,
                                 `tag_id` int NOT NULL,
                                 PRIMARY KEY (`article_id`,`tag_id`),
                                 KEY `tag_key` (`tag_id`),
                                 CONSTRAINT `articles_tags_ibfk_1` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`),
                                 CONSTRAINT `articles_tags_ibfk_2` FOREIGN KEY (`article_id`) REFERENCES `articles` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*!40101 SET character_set_client = @saved_cs_client */;
