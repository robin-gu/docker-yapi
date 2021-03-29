FROM node:12-alpine as builder
WORKDIR /app
RUN apk add --no-cache wget python make
ENV VERSION=1.9.2
RUN wget https://github.com/YMFE/yapi/archive/v${VERSION}.zip
RUN unzip v${VERSION}.zip && mv yapi-${VERSION} vendors
RUN cd /app/vendors && cp config_example.json ../config.json && npm install --production --registry https://registry.npm.taobao.org

FROM node:12-alpine
ENV TZ="Asia/Shanghai"
WORKDIR /app
COPY --from=builder /app /app
EXPOSE 3000
