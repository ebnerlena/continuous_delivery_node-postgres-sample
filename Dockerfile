# FROM node:16-alpine

# LABEL author="Lena Ebner"

# WORKDIR /app
# COPY . /app/
# RUN npm ci


# ENV PORT=3000

# EXPOSE $PORT

# VOLUME [ "/tmp" ]

# ENTRYPOINT [ "node", "server.js"]

FROM node:16-alpine@sha256:8da648aad7e8fd08e4392659e22047145ed9f81ea4c8e00d162b490b05c9a61b

COPY . .
RUN npm i

ENTRYPOINT ["node", "server.js"]