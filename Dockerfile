# From base image
FROM nginx:latest

# Copy the file from source to destination
COPY ./homepage.html /usr/share/nginx/html/index.html

# Expose port 80
EXPOSE 80

# Start the service
CMD ["nginx", "-g", "daemon off;"]


