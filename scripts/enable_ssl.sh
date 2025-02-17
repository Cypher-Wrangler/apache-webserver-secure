#!bin/bash
# securing by enabling HTTPS with Let's Encrypt

# install Certbot - automates the process of obtaining and installing SSL/TLS certoficates from Let's Encrypt
sudo apt install certbot python3 certbot-apache

# obtain an SSL certificate
sudo certbot --apache -d cypher.com -d www.cypher.com

# follow prompts and enter admin email for urgent renewal and security notices

# Certbot sets autorenewal after 90 days, verify:
sudo certbot renew --dry-run
