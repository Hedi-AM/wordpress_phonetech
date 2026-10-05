FROM wordpress:latest

# Copy your actual compressed database dump into the MySQL entrypoint directory
COPY backup_2026-10-02-2118_PhoneTech_Accessories_2f97bf28c875-db.gz /docker-entrypoint-initdb.d/
