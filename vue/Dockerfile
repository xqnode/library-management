FROM node:latest AS frontpage
WORKDIR /usr/src
COPY . .
RUN npm install
RUN npm run build

FROM nginx:latest
WORKDIR /usr/share/nginx/html
COPY --from=frontpage /usr/src/dist .
EXPOSE 80