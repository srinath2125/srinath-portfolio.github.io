# Use Nginx as the base image
FROM nginx:alpine

# Remove the default Nginx config and use a custom one
RUN rm /etc/nginx/conf.d/default.conf
COPY nginx.conf /etc/nginx/conf.d/default.conf

# Copy your portfolio website files
COPY . /usr/share/nginx/html

# Expose Cloud Run's required port
EXPOSE 8080

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]
