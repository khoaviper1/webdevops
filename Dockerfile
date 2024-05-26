# Sử dụng image PHP chính thức
FROM php:8.1.2-apache

# Cài đặt các extension PHP bổ sung nếu cần thiết
RUN apt-get update -y && apt-get install -y libmariadb-dev
RUN docker-php-ext-install pdo pdo_mysql

# Sao chép mã nguồn ứng dụng vào thư mục làm việc
COPY src/ /var/www/html/

# Copy file cấu hình Apache
COPY my-php-app.conf /etc/apache2/sites-available/

# Kích hoạt site và module rewrite
RUN a2ensite my-php-app.conf \
    && a2enmod rewrite \
    && a2dissite 000-default.conf

# Thêm ServerName vào cấu hình Apache
RUN echo "ServerName localhost" >> /etc/apache2/apache2.conf

# Thiết lập quyền sở hữu và quyền truy cập
RUN chown -R www-data:www-data /var/www/html
RUN chmod -R 777 /var/www/html

# Expose port 80 để truy cập ứng dụng
EXPOSE 80

CMD ["apache2-foreground"]
