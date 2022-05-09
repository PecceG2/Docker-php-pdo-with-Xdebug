#!/bin/bash
docker build . -f Dockerfile --tag pecceg2/php-pdo:$1 --build-arg PHPVERSION=$1
docker push pecceg2/php-pdo:$1

docker build . -f Dockerfile-xdebug --tag pecceg2/php-pdo:$1-xdebug --build-arg PHPVERSION=$1
docker push pecceg2/php-pdo:$1-xdebug


read -p 'Press [Enter] key to close...'