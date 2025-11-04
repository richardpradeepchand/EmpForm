# Use Nginx as base image
FROM nginx:latest

# Copy website files
COPY index.html /usr/share/nginx/html/
COPY style.css /usr/share/nginx/html/

# Expose port 80
EXPOSE 80

# Run Nginx
CMD ["nginx", "-g", "daemon off;"]
