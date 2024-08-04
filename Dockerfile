FROM node:latest as build-stage

WORKDIR /app

COPY package*.json yarn.lock ./

RUN yarn install

COPY . .

RUN yarn build

FROM nginx:stable-alpine as production-stage

ARG NGINX_PORT=3000

ENV NGINX_PORT ${NGINX_PORT}

COPY --from=build-stage /app/dist /usr/share/nginx/html

COPY nginx.conf /tmp/nginx.conf

RUN sed "s|%NGINX_PORT%|${NGINX_PORT}|g" /tmp/nginx.conf > /etc/nginx/nginx.conf

CMD ["nginx", "-g", "daemon off;"]