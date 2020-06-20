# docker-lamp

jcavat氏のdocker-lampをforkして作成。

Dockerで作成したLAMPP環境 -- Apache, MySQL 5.7, PhpMyAdmin and PHP

$ docker-compose up -d

Webブラウザで http://localhost:8000 にアクセスするとサンプルページが見れる。

PhpMyAdminにアクセスするには http://localhost:8888 で。

MySqlにログインするには

$ docker-compose exec db mysql -u user -p \
password: test


以下は原著者のREADME
----
Docker example with Apache, MySql 8.0, PhpMyAdmin and Php

- You can use MariaDB 10.1 if you checkout to the tag `mariadb-10.1` - contribution made by [luca-vercelli](https://github.com/luca-vercelli)
- You can use MySql 5.7 if you checkout to the tag `mysql5.7`

I use docker-compose as an orchestrator. To run these containers:

```
docker-compose up -d
```

Open phpmyadmin at [http://localhost:8000](http://localhost:8000)
Open web browser to look at a simple php example at [http://localhost:8001](http://localhost:8001)

Run mysql client:

- `docker-compose exec db mysql -u root -p` 

Enjoy !

<!-- 修正時刻： Sat Jun 20 13:15:09 2020 -->
