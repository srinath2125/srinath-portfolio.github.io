# Use an Nginx base image to serve static files
FROM nginx:alpine

# Copy the website files to the Nginx web root
COPY . /usr/share/nginx/html

# Expose port 80
EXPOSE 80

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]
