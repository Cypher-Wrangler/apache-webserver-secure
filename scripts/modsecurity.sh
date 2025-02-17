# WAF  to  protect against common attacks
sudo apt install libapache2-mod-security2
sudo a2enmod security2

#configure ModSecurity rules
sudo cp /etc/modsecurity/modsecurity.conf-recommended /etc/modsecurity/modsecurity.conf
sudo nano /etc/modsecurity/modsecurity.conf
#to enable rule enforcement
set SecRule Engine On
#SecAuditLog to specify the audit log location
SecAuditLog /var/log.apache2/modsec_audit.log
#save and close the file
sudo sytemctl restart apache2

#Testing modsecurity with malicious request
curl -X GET "http://server_ip/?param=<script>alert('XSS')</script>"
sudo tail -f /var/log/apache2/error.log
sudo tail -f /var/log/apache2/modsec_audit.log

#testing with 0WASP Core Rule Set(CRS)
sudo apt install modsecurity-crs
curl -X GET "http://server_ip/?id=1' OR '1'='1"
sudo tail -f /var/log/apache2/error.log 

