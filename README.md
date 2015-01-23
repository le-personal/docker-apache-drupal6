# Docker image with Apache and PHP 5.3.10 running on Ubuntu 12.04
Docker image with Apache optimized to run Drupal 6 websites. Uses PHP 5.3 because Drupal 6 has some issues with newer versions of PHP.

Inclues:

- Composer
- Drush
- PHP uploadprogress
- APC

### Build

		$ make build

		or

		$ docker build --tag=yourname/apache-drupal6 .

### Use
The website will be loaded from /var/www so make sure you add your files there.

		$ docker run -d -v application:/var/www -p 80:80 iiiepe/apache-drupal6

#### With fig

		web:
		  image: iiiepe/apache-drupal6
		  volumes:
		    - application:/var/www
		    - logs:/var/log/supervisor
		  ports:
		    - "8000:80"