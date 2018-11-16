# docker-php-mysql

phpとmysqlをdockerで動かす

## 使用方法
コンテナの開始  
`docker-compose up -d`  

コンテナの一括停止  
`docker-compose stop`  

## 以下はテスト兼サンプルなので削除変更OK
1. `index.php`
1. `config/initdb.d/test.sql`
1. mysqlのデータベース`test`

## データベース情報
host： `mysql`
user： `root`  
password： `password`  

## URL
Win：http://192.168.99.100:8080  
Mac：http://localhost:8080  

## phpmyadmin
Win：http://192.168.99.100:8081  
Mac：http://localhost:8081  

