FROM node:16-alpine

LABEL author="Lena Ebner" \
      org.opencontainers.image.source="https://github.com/ebnerlena/continuous_delivery_node-postgres-sample"

COPY . .
RUN npm i

ENV PORT=3000

EXPOSE $PORT

VOLUME [ "/tmp" ]

ENTRYPOINT ["node", "server.js"]