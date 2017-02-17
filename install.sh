#!bin/sh

wget https://github.com/rela1470/circleci-phpdbg/raw/master/bin/php_$(phpenv global)/phpdbg
cp -a ./phpdbg /opt/circleci/.phpenv/shims/phpdbg
chmod 755 /opt/circleci/.phpenv/shims/phpdbg
