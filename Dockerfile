# Use an official nginx base image
FROM nginx:latest

# Set the working directory in the container
WORKDIR /usr/share/nginx/html

# Copy the HTML files to the container
COPY index.html .
COPY about.html .
COPY blog.html .


# Copy the CSS files to the container
COPY registrat.html .
# Copy the JS files to the container
COPY contact.html .

# Copy the images to the container
COPY img/ /usr/share/nginx/html/img/
COPY CSS/ /usr/share/nginx/html/CSS/


# Expose port 80 for HTTP traffic
EXPOSE 80

# Start the nginx server
CMD ["nginx", "-g", "daemon off;"]
