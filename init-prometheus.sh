#!/bin/bash

# Update yumn package repositories
yum update -y






# # Download prometheus archive installation file and unarchive installation file
# curl -LO url -LO https://github.com/prometheus/prometheus/releases/download/v2.53.1/prometheus-2.53.1.linux-amd64.tar.gz
# tar -xvf prometheus-2.53.1.linux-amd64.tar.gz
# mv prometheus-2.53.1.linux-amd64.tar.gz prometheus-files

# # Create a user for Prometheus and assign Prometheus as the owner of these directories
# useradd --no-create-home --shell /bin/false prometheus
# mkdir /etc/prometheus
# mkdir /var/lib/prometheus
# chown prometheus:prometheus /etc/prometheus
# chown prometheus:prometheus /var/lib/prometheus

# # Copy the binaries prometheus and promtool from the prometheus-files directory to /usr/local/bin and update the ownership to the user prometheus
# cp prometheus-files/prometheus /usr/local/bin/
# cp prometheus-files/promtool /usr/local/bin/
# chown prometheus:prometheus /usr/local/bin/prometheus
# chown prometheus:prometheus /usr/local/bin/promtool

# # Move the directories consoles and console_libraries from the prometheus-files folder to /etc/prometheus, and adjust the ownership to the user prometheus
# cp -r prometheus-files/consoles /etc/prometheus
# cp -r prometheus-files/console_libraries /etc/prometheus
# chown -R prometheus:prometheus /etc/prometheus/consoles
# chown -R prometheus:prometheus /etc/prometheus/console_libraries

