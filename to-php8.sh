## updatinga apt repos to PHP 8, using the solution from:
## https://php.watch/articles/php-8.0-installation-update-guide-debian-ubuntu

sudo apt install apt-transport-https lsb-release ca-certificates wget -y
sudo wget -O /etc/apt/trusted.gpg.d/php.gpg https://packages.sury.org/php/apt.gpg 
sudo sh -c 'echo "deb https://packages.sury.org/php/ $(lsb_release -sc) main" > /etc/apt/sources.list.d/php.list'
sudo apt update

sudo apt install php8.0-common php8.0-cli php8.0-curl php8.0-gd -y

php -m > phpm.txt
php -v > phpv.txt
