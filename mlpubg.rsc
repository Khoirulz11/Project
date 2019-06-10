/ip firewall raw
add action=add-dst-to-address-list address-list=games address-list-timeout=\
    none-dynamic chain=prerouting comment=ml dst-address-list=!lokal \
    dst-port=5500-5600,8001,30000-30300,9000-9010 protocol=tcp \
    src-address-list=lokal
add action=add-dst-to-address-list address-list=games address-list-timeout=\
    none-dynamic chain=prerouting comment=ml dst-address-list=!lokal \
    dst-port=5000-5100,5500-5600,8001,30000-30300,9000-9010 protocol=udp \
    src-address-list=lokal
add action=add-dst-to-address-list address-list=games address-list-timeout=\
    none-dynamic chain=prerouting comment="pubg mobile" dst-address-list=\
    !lokal dst-port=7889,8081,18081,10012,17500 protocol=tcp \
    src-address-list=lokal
add action=add-dst-to-address-list address-list=games address-list-timeout=\
    none-dynamic chain=prerouting comment="pubg mobile" dst-address-list=\
    !lokal dst-port=8000,8011,8700,9030,10000-10300,17000,20000-20010 \
    protocol=udp src-address-list=lokal
