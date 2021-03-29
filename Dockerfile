FROM node:12-alpine
#RUN sed -i 's/dl-cdn.alpinelinux.org/mirrors.aliyun.com/g' /etc/apk/repositories

#RUN npm install -g yapi-cli --registry https://registry.npm.taobao.org
RUN npm install -g yapi-cli

EXPOSE 3000 3000