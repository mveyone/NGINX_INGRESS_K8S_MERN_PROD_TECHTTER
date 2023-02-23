### STAGE 1: Build ###
FROM node:14-alpine AS build
WORKDIR /app
COPY package.json ./
RUN yarn install
COPY . .
RUN yarn run build

### STAGE 2: Run ###
FROM nginx:1.17.1-alpine
COPY default.conf /etc/nginx/conf.d/default.conf
COPY --from=build /app/build /usr/share/nginx/html
EXPOSE 80