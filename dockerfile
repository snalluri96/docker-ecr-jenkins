# Use the official Nginx image as the base image
FROM nginx:latest

# Remove the default Nginx index.html file
RUN rm /etc/nginx/conf.d/default.conf

# Copy the custom Nginx configuration file
COPY nginx.conf /etc/nginx/conf.d/default.conf

# Copy the custom HTML file into the Nginx web root directory
COPY index.html /usr/share/nginx/html

# Expose port 80 to allow external access to the web server
EXPOSE 80
