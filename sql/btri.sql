CREATE TABLE `location` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(500) NOT NULL,
  `type` enum('Kennel','Foster') NOT NULL,
  `city` varchar(50) NOT NULL,
  `state` enum('AL','AK','AS','AZ','AR','CA','CO','CT','DE','DC','FL','GA','GU','HI','ID','IL','IN','IA','KS','KY','LA','ME','MD','MH','MA','MI','FM','MN','MS','MO','MT','NE','NV','NH','NJ','NM','NY','NC','ND','MP','OH','OK','OR','PW','PA','PR','RI','SC','SD','TN','TX','UT','VT','VA','VI','WA','WV','WI','WY') NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

CREATE TABLE `dog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `gender` enum('Male','Female') NOT NULL,
  `breed` enum('Bull Terrier','Miniature Bull Terrier') NOT NULL,
  `status` enum('Pending','Ready','Adopted','Expired') NOT NULL,
  `location_id` int(11) NOT NULL,
  `hospice` tinyint(1) DEFAULT NULL,
  `description` text,
  PRIMARY KEY (`id`),
  KEY `location_id` (`location_id`),
  CONSTRAINT `dog_ibfk_1` FOREIGN KEY (`location_id`) REFERENCES `location` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

ALTER TABLE `dog` ADD COLUMN `age` enum('Puppy','Adult','Senior') NOT NULL;
