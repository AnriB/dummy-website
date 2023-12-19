# Use the official httpd base image
FROM httpd:alpine

# Set the working directory to /usr/local/apache2/htdocs
WORKDIR /usr/local/apache2/htdocs

# Copy the contents of the local src directory to the working directory
COPY src/ .

# Expose port 80 to the outside world
EXPOSE 80

# Command to run the application
CMD ["httpd-foreground"]
