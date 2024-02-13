# Use the official Ubuntu base image
FROM ubuntu:latest

# Install Apache
RUN apt-get update && apt-get install -y apache2

# Copy Apache configuration files
COPY apache.conf /etc/apache2/apache.conf

# Copy your Apache code (HTML, PHP, etc.) to the appropriate directory
COPY index.html /var/www/html/

# Expose port 80
EXPOSE 80

# Start Apache in the foreground
CMD ["apachectl", "-D", "FOREGROUND"]

