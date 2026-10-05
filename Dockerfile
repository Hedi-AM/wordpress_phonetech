FROM wordpress:latest

# Copy your database dump into the image
COPY export.sql /docker-entrypoint-initdb.d/
