# Docker adatbázis

## Hálózat létrehozása:

```bash
docker network create adatbazis
```

## MySQL létrehozása:

```bash
docker run --name some-mysql -e MYSQL_ROOT_PASSWORD=jelszo --network adatbazis -d mysql:8.0.33 --default-authentication-plugin=mysql_native_password
```

## MySQL elindulásának ellenőrzése:

```bash
docker logs some-mysql
```

## phpMyAdmin létrehozása:

```bash
docker run --name phpmyadmin --network adatbazis -d -e PMA_HOST=some-mysql -e PMA_USER=root -e PMA_PASSWORD=jelszo -p 80:80 phpmyadmin:5.1-apache
```

## adatbázis törlése:

```bash
docker rm -f some-mysql
```

## phpMyAdmin törlése:

```bash
docker rm -f phpmyadmin
```
