##### Dockerfile #####
## build stage ##
# FROM node:20.9.0-alpine as angular
# WORKDIR /app
# COPY ./angular .
# RUN npm install
# RUN npm run build


# FROM node:20.9.0-alpine as react
# WORKDIR /app
# COPY ./react .
# RUN npm install
# RUN npm run build


## run stage ##
FROM nginx:1.25.1

RUN rm /etc/nginx/conf.d/default.conf
# COPY ./angular/angular.conf /etc/nginx/conf.d/angular.conf
# COPY --from=angular /app/dist/ /usr/share/nginx/angular_html

# COPY ./react/react.conf /etc/nginx/conf.d/react.conf
# COPY --from=react /app/dist/ /usr/share/nginx/react_html


CMD ["nginx", "-g", "daemon off;"]