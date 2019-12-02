  CREATE DATABASE IF NOT EXISTS test;
  CREATE TABLE `test`.`worlds` (`id` serial,`living_cells` int NOT NULL DEFAULT 0, PRIMARY KEY (id));
