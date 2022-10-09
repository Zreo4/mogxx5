#!/bin/sh
if [ ! -f UUID ]; then
  UUID="d763b26c-4708-4aa0-b8f7-c8c509e6276d"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

