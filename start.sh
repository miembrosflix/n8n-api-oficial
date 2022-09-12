#!/bin/sh

# check if port variable is set or go with default
if [ -z ${PORT+x} ]; then echo "PORT variable not defined, leaving N8N to default port."; else export N8N_PORT=$PORT; echo "N8N will start on '$PORT'"; fi

# set webhook
export WEBHOOK_URL="https://seu-projeto.herokuapp.com";

# disable diagnostics
export N8N_DIAGNOSTICS_ENABLED=false

# kickstart nodemation
n8n
