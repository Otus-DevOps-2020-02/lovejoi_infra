# lovejoi_infra
lovejoi Infra repository

#For direct connection to internalhost you need create config file in ~/.ssh
# This covers the bastion host
Host 34.77.141.164
    User appuser
    IdentityFile ~/.ssh/appuser

# This covers hosts within my private network
Host someinternalhost
    Hostname 10.132.0.3
    User appuser
    IdentityFile ~/.ssh/appuser
    ProxyCommand ssh appuser@34.77.141.164 -W %h:%p

# Information regarding  cloud servers

bastion_IP = 35.241.172.123
someinternalhost_IP = 10.132.0.3

# Information regarding cloud testapp server

testapp_IP   = 35.205.111.192 
testapp_port = 9292

# For Run  startup-script-url from gcloud just run file just check project id.

# For add Rule on GCloud Firewall run script default-puma-server
