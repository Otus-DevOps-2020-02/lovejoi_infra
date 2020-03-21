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

