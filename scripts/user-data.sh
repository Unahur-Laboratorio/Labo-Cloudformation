#!/bin/bash
set -euxo pipefail
dnf -y install httpd
echo "<h1>Hello World from $(hostname -f)</h1>" > /var/www/html/index.html
systemctl enable --now httpd