FROM nodered/node-red

# add extra nodes via your package.json
COPY prd-node-red_data/package.json .

RUN npm install --unsafe-perm --no-update-notifier --no-fund --only=production

COPY prd-node-red_data/settings.js /data/settings.js

COPY prd-node-red_data/flows.json /data/flows.json