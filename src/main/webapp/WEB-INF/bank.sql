CREATE TABLE user (
  user_id INTEGER NOT NULL AUTO_INCREMENT,
  first_name varchar(50) NOT NULL,
  last_name varchar(50) NOT NULL,
  face varchar(50) NOT NULL,
  city varchar(50) NOT NULL,
PRIMARY KEY (user_id)
);

CREATE TABLE account (
  id INTEGER NOT NULL AUTO_INCREMENT,
  account Integer (30) NOT NULL,
  balans Integer (200) NOT NULL,
  userId INTEGER,
  FOREIGN KEY (userId) REFERENCES user(id)
);

INSERT INTO `user` (`user_id`, `first_name`, `last_name`, `face`, `city`) VALUES  
 ('Piter', 'Troll5', 'legal entity', 'Kiev'),  
 ('Mikhail', 'Troll4', 'private person', 'Kharkiv'),  
 ('Sveta', 'Troll3', 'private person', 'Lviv'),  
 ('Lena', 'Troll2', 'legal entity', 'Donetsk'),  
 ('Andrew', 'Troll1', 'legal entity', 'Kiev');  