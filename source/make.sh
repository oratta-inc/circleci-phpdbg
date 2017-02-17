#!bin/sh

wget "http://jp2.php.net/get/php-$(phpenv global).tar.gz/from/this/mirror" -O "php-$(phpenv global).tar.gz"
tar -xzvf php-$(phpenv global).tar.gz

cd php-$(phpenv global)/

./configure \
  --enable-maintainer-zts \
  --with-pear \
  --with-mcrypt \
  --with-zlib \
  --enable-mbstring \
  --with-curl \
  --with-bz2 \
  --enable-zip \
  --enable-sockets \
  --enable-sysvsem \
  --enable-sysvshm \
  --with-mhash \
  --with-pcre-regex \
  --enable-bcmath \
  --with-openssl \
  --enable-pcntl \
  --enable-phpdbg

make
sudo make install
