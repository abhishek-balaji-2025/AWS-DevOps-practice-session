# From base image
FROM nginx:latest

# Copy the file from source to destination
COPY ./homepage.html /var/www/nginx/html/

# Expose port 80
EXPOSE 80

# Start the service
CMD ["nginx", "-g", "daemon off;"]


