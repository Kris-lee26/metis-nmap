#!/bin/bash
if ! pgrep -f "http.server 8888" > /dev/null; then
  mkdir -p /tmp/target_web
  echo "FLAG{nmap_open_port_8888_success}" > /tmp/target_web/index.html
  nohup python3 -m http.server 8888 --bind 127.0.0.1 --directory /tmp/target_web >/dev/null 2>&1 &
fi