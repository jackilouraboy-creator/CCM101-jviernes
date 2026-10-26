services:
  db:
    image: mysql:8.0
    container_name: wp_db
    restart: unless-stopped
    environment:
      MYSQL_DATABASE: wordpress
      MYSQL_USER: wpuser
      MYSQL_PASSWORD: ${MYSQL_PASSWORD:-ChangeMe_WP123}
      MYSQL_ROOT_PASSWORD: ${MYSQL_ROOT_PASSWORD:-ChangeMe_Root123}
    volumes:
      - db_data:/var/lib/mysql
    networks:
      - backend

  wordpress:
    image: wordpress:latest
    container_name: wp_app
    restart: unless-stopped
    depends_on:
      - db
    ports:
      - "80:80"
    environment:
      WORDPRESS_DB_HOST: db:3306
      WORDPRESS_DB_USER: wpuser
      WORDPRESS_DB_PASSWORD: ${MYSQL_PASSWORD:-ChangeMe_WP123}
      WORDPRESS_DB_NAME: wordpress
    volumes:
      - wp_data:/var/www/html
    networks:
      - backend

volumes:
  db_data:
  wp_data:

networks:
  backend:
