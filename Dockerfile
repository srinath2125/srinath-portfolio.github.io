# Use an Nginx base image to serve static files
FROM nginx:alpine

# Copy the portfolio website files to the Nginx web root
COPY . /usr/share/nginx/html

# Expose port 8080
EXPOSE 8080

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]
