packages {
    'iwinfo',
    'gluon-config-mode-geo-location-osm',
    'gluon-authorized-keys',        
    'gluon-web-private-wifi',
    'ffsw-reboot',
    'ffsw-chkgw',
    'ffsw-keyupl',
    'ffsw-banner',
    'iperf3',
    'ffsw-ssid-changer',
    'ffsw-wifi-quickfix'
}



features {
    'autoupdater',
    'ebtables-filter-multicast',
    'ebtables-filter-ra-dhcp',
    'ebtables-source-filter',
    'mesh-batman-adv-15',
    'mesh-vpn-tunneldigger',
    'respondd',
    'status-page',
    'web-advanced',
    'web-wizard'
}

if not device_class('tiny') then
    features {
        'wireless-encryption-wpa3'
    }
end
