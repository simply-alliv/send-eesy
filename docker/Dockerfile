# Use an official Ubuntu base image
FROM ubuntu:24.04

# Set environment variables to avoid prompts during package installation
ENV DEBIAN_FRONTEND=noninteractive

# Update and install necessary packages
RUN apt-get update && \
    apt-get install -y postfix mailutils && \
    apt-get clean

# Copy Postfix configuration files
COPY ../config/main.cf /etc/postfix/main.cf
COPY ../config/relay-domains /etc/postfix/relay-domains
COPY ../config/mailname /etc/mailname

# Expose the SMTP port
EXPOSE 25

# Start Postfix using an entrypoint script
COPY ../scripts/entrypoint.sh /usr/local/bin/entrypoint.sh
RUN chmod +x /usr/local/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]
