# FROM node:16-alpine

# LABEL author="Lena Ebner"

# WORKDIR /app
# COPY . /app/
# RUN npm ci


# ENV PORT=3000

# EXPOSE $PORT

# VOLUME [ "/tmp" ]

# ENTRYPOINT [ "node", "server.js"]

FROM node:16-alpine

COPY . .
RUN npm i

ENTRYPOINT ["node", "server.js"]