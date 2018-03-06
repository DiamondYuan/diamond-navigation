FROM node:alpine as build

COPY . /project/

WORKDIR /project
RUN echo "Installing dependencies..." && \
    npm install
RUN echo "Starting dist build..." && \
    npm run-script build

FROM nginx:stable-alpine

COPY --from=build /project/dist /usr/share/nginx/html/

EXPOSE 80
