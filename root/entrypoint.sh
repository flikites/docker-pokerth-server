#!/usr/bin/env bash

/pokerth_server

while [ ! -f "/pokerth/.pokerth/log-files/pokerth.pid" ]; do
  echo "PokerTH server not ready..."
  sleep 5 # seconds
done

tail -f /pokerth/.pokerth/log-files/server_messages.log
