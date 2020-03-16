#!/bin/bash
#=================================================
# Description: DIY script
# Lisence: MIT
# Author: P3TERX
# Blog: https://p3terx.com
#=================================================
# Modify default IP
sed -i 's/192.168.1.1/192.168.2.1/g' package/base-files/files/bin/config_generate

# sed -i '/list listen_https [::]:443/d' package/network/services/uhttpd/files/uhttpd.config
# sed -i '/list listen_https 0.0.0.0:443/d' package/network/services/uhttpd/files/uhttpd.config
# sed -i '/HTTP listen addresses/a\        list listen_https [::]:443' package/network/services/uhttpd/files/uhttpd.config
# sed -i '/HTTP listen addresses/a\        list listen_https 0.0.0.0:443' package/network/services/uhttpd/files/uhttpd.config
# sed -i '/redirect_https/s/0/1/g' package/network/services/uhttpd/files/uhttpd.config

git clone https://github.com/frainzy1477/luci-app-clash package/luci-app-clash
git clone https://github.com/vernesong/OpenClash package/OpenClash
git clone https://github.com/rufengsuixing/luci-app-adguardhome package/luci-app-adguardhome

# git clone https://github.com/falafalafala1668/OpenWrt-UEFI-Support OpenWrt-UEFI-Support
# ./OpenWrt-UEFI-Support/RunMe.sh apply
