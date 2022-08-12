 SHOW DATABASES;
+--------------------+
| Database           |
+--------------------+
| db_arzenna         |
| db_asep            |
| information_schema |
| mysql              |
| performance_schema |
| phpmyadmin         |
| sekolah            |
| test               |
+--------------------+
8 rows in set (0.043 sec)
 USE sekolah;
Database changed
SHOW TABLES;
Empty set (0.001 sec)
 CREATE TABLE siswa(
    -> NIS CHAR (8) PRIMARY KEY,
    -> NAMA VARCHAR (100),
    -> JK CHAR (1),
    -> TMP_LAHIR VARCHAR (50),
    -> TGL_LAHIR DATE,
    -> alamat TEXT,
    -> kelas VARCHAR(10),
    -> nilai FLOAT);
Query OK, 0 rows affected (0.044 sec)
 DESCRIBE SISWA;
+-----------+--------------+------+-----+---------+-------+
| Field     | Type         | Null | Key | Default | Extra |
+-----------+--------------+------+-----+---------+-------+
| NIS       | char(8)      | NO   | PRI | NULL    |       |
| NAMA      | varchar(100) | YES  |     | NULL    |       |
| JK        | char(1)      | YES  |     | NULL    |       |
| TMP_LAHIR | varchar(50)  | YES  |     | NULL    |       |
| TGL_LAHIR | date         | YES  |     | NULL    |       |
| alamat    | text         | YES  |     | NULL    |       |
| kelas     | varchar(10)  | YES  |     | NULL    |       |
| nilai     | float        | YES  |     | NULL    |       |
+-----------+--------------+------+-----+---------+-------+
8 rows in set (0.024 sec)

MariaDB [sekolah]> SELECT * from siswa;
Empty set (0.066 sec)
SELECT * from siswa;
Empty set (0.066 sec)
 INSERT INTO siswa VALUES(
    -> '12100274',
    -> 'FIRDAUS WIGUNA',
    -> 'L',
    -> 'SUBANG',
    -> '2005-08-17',
    -> 'KALIJATI',
    -> '11-RPL-1',
    -> '70.97');
Query OK, 1 row affected (0.015 sec)
 SELECT * from siswa;
+----------+----------------+------+-----------+------------+----------+----------+-------+
| NIS      | NAMA           | JK   | TMP_LAHIR | TGL_LAHIR  | alamat   | kelas    | nilai |
+----------+----------------+------+-----------+------------+----------+----------+-------+
| 12100274 | FIRDAUS WIGUNA | L    | SUBANG    | 2005-08-17 | KALIJATI | 11-RPL-1 | 70.97 |
+----------+----------------+------+-----------+------------+----------+----------+-------+
1 row in set (0.000 sec)
INSERT INTO siswa VALUES(
    -> '0054736275',
    -> 'ARZENNA HAQI MUHAMMAD',
    -> 'L',
    -> 'SUBANG',
    -> '2005-11-27',
    -> 'SUKAMELANG',
    -> '11-RPL-1',
    -> '99,9');
Query OK, 1 row affected, 2 warnings (0.014 sec)
INSERT INTO siswa VALUES(
    -> '0066695438',
    -> 'ROFI ANUGRAH FIRDAUS',
    -> 'L',
    -> 'SUBANG',
    -> '2006-06-03',
    -> 'CIGADUNG',
    -> '11-RPL-1',
    -> '80');
Query OK, 1 row affected, 1 warning (0.015 sec)
INSERT INTO siswa VALUES(
    -> '12100778',
    -> 'TASYA AMELIA',
    -> 'P',
    -> 'SUBANG',
    -> '2006-06-14',
    -> 'SUBANG',
    -> '11-RPL-1',
    -> '85');
Query OK, 1 row affected (0.014 sec)
INSERT INTO siswa VALUES(
    -> '0067459353',
    -> 'WANANDA DILLA ZAHRA',
    -> 'P',
    -> 'SUBANG',
    -> '2006-01-14',
    -> 'DAWUAN',
    -> '11-RPL-1',
    -> '87.5');
Query OK, 1 row affected, 1 warning (0.015 sec)
SELECT * from siswa;
+----------+-----------------------+------+-----------+------------+------------+----------+-------+
| NIS      | NAMA                  | JK   | TMP_LAHIR | TGL_LAHIR  | alamat     | kelas    | nilai |
+----------+-----------------------+------+-----------+------------+------------+----------+-------+
| 00547362 | ARZENNA HAQI MUHAMMAD | L    | SUBANG    | 2005-11-27 | SUKAMELANG | 11-RPL-1 |    99 |
| 00666954 | ROFI ANUGRAH FIRDAUS  | L    | SUBANG    | 2006-06-03 | CIGADUNG   | 11-RPL-1 |    80 |
| 00674593 | WANANDA DILLA ZAHRA   | P    | SUBANG    | 2006-01-14 | DAWUAN     | 11-RPL-1 |  87.5 |
| 12100274 | FIRDAUS WIGUNA        | L    | SUBANG    | 2005-08-17 | KALIJATI   | 11-RPL-1 | 70.97 |
| 12100778 | TASYA AMELIA          | P    | SUBANG    | 2006-06-14 | SUBANG     | 11-RPL-1 |    85 |
+----------+-----------------------+------+-----------+------------+------------+----------+-------+
5 rows in set (0.001 sec)
UPDATE siswa SET
    -> NIS="12100095"
    -> WHERE
    -> NIS="00547362";
Query OK, 1 row affected (0.015 sec)
UPDATE siswa SET
    -> NIS="12100673"
    -> WHERE
    -> NIS="00666954";
Query OK, 1 row affected (0.014 sec)
UPDATE siswa SET
    -> NIS="12100823"
    -> WHERE
    -> NIS="00674593";
Query OK, 1 row affected (0.014 sec)
SELECT * from siswa;
+----------+-----------------------+------+-----------+------------+------------+----------+-------+
| NIS      | NAMA                  | JK   | TMP_LAHIR | TGL_LAHIR  | alamat     | kelas    | nilai |
+----------+-----------------------+------+-----------+------------+------------+----------+-------+
| 12100095 | ARZENNA HAQI MUHAMMAD | L    | SUBANG    | 2005-11-27 | SUKAMELANG | 11-RPL-1 |    99 |
| 12100274 | FIRDAUS WIGUNA        | L    | SUBANG    | 2005-08-17 | KALIJATI   | 11-RPL-1 | 70.97 |
| 12100673 | ROFI ANUGRAH FIRDAUS  | L    | SUBANG    | 2006-06-03 | CIGADUNG   | 11-RPL-1 |    80 |
| 12100778 | TASYA AMELIA          | P    | SUBANG    | 2006-06-14 | SUBANG     | 11-RPL-1 |    85 |
| 12100823 | WANANDA DILLA ZAHRA   | P    | SUBANG    | 2006-01-14 | DAWUAN     | 11-RPL-1 |  87.5 |
+----------+-----------------------+------+-----------+------------+------------+----------+-------+
5 rows in set (0.000 sec)
DELETE FROM siswa WHERE NIS="12100274";
Query OK, 1 row affected (0.015 sec)
INSERT INTO siswa VALUES(
    -> '12100098',
    -> 'ASEP RIZKI',
    -> 'L',
    -> 'SUBANG',
    -> '2006-07-17',
    -> 'KALIJATI',
    -> '11-RPL-1',
    -> '60.5');
Query OK, 1 row affected (0.007 sec)
SELECT * from siswa;
+----------+-----------------------+------+-----------+------------+------------+----------+-------+
| NIS      | NAMA                  | JK   | TMP_LAHIR | TGL_LAHIR  | alamat     | kelas    | nilai |
+----------+-----------------------+------+-----------+------------+------------+----------+-------+
| 12100095 | ARZENNA HAQI MUHAMMAD | L    | SUBANG    | 2005-11-27 | SUKAMELANG | 11-RPL-1 |    99 |
| 12100098 | ASEP RIZKI            | L    | SUBANG    | 2006-07-17 | KALIJATI   | 11-RPL-1 |  60.5 |
| 12100673 | ROFI ANUGRAH FIRDAUS  | L    | SUBANG    | 2006-06-03 | CIGADUNG   | 11-RPL-1 |    80 |
| 12100778 | TASYA AMELIA          | P    | SUBANG    | 2006-06-14 | SUBANG     | 11-RPL-1 |    85 |
| 12100823 | WANANDA DILLA ZAHRA   | P    | SUBANG    | 2006-01-14 | DAWUAN     | 11-RPL-1 |  87.5 |
+----------+-----------------------+------+-----------+------------+------------+----------+-------+
5 rows in set (0.000 sec)