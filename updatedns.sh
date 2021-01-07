cd ~/netflix-proxy/
cat <<EOT > dnsmasq.conf
bind-dynamic
bogus-priv
domain-needed
log-facility=-
local-ttl=60
EOT

#Replace [APIKEY] with your own key found here: https://dns4me.net/user/hosts_file#tab_1
wget https://dns4me.net/api/v2/get_hosts/dnsmasq/[APIKEY] -O ->> dnsmasq.conf

docker restart dnsmasq
