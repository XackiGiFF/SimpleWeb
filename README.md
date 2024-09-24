# SimpleWeb Docker-compose
A simple docker-compose WebSite (+php8.2-apache +mariadb:10.3.23 +phpmyadmin +mod rewrite) for fast install and work.

## What`s new?:
- Add new gen credentials script
- Rewrite docker-compose.yml

## To start (Five steps to start): 

### 1. Clone repository
```bash
git clone https://github.com/XackiGiFF/SimpleWeb.git
cd SimpleWeb
```

### 2. Generate your random Credentials for mariadb and phpmyadmin:
Use script ``./gen_env.sh`` for generate your random credentials. It will output to ``.env`` file and show you your credentials.

```bash
./gen_env.sh
```
You can set your own credentials in ``.env`` file.


### 3. Set your sql/sait.sql file to mariadb auto create database (If you need):
Put your sql/sait.sql file to mariadb directory.

### 4. Set your settings in ./php/php.ini file (If you need):
You can set your settings in ./php/php.ini file and set Dockerfile in ./php/Dockerfile file (If you need).

### 5. Run Docker (build and start):
```bash
docker-compose up --build
```

# Enjoy!

## Ports:
Web: 80 port

PhpMyAdmin: 8765 port
