#!/usr/bin/with-contenv bash
set -e

# Crea directory dati se mancante
mkdir -p /data

# Avvia Wealthfolio
exec wealthfolio-server \
  --listen-addr 0.0.0.0:8088 \
  --db-path "$WF_DB_PATH"
