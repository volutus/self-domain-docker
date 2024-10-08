#!/bin/bash
envsubst '$FLASK_SERVER_ADDR' < /tmp/default.conf > /etc/nginx/conf.d/default.conf && nginx -g 'daemon off;'
# envsubst '$UPTIME_KUMA_ADDR' < /tmp/default.conf > /etc/nginx/conf.d/default.conf