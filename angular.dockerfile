FROM node:12.7-alpine AS build
WORKDIR /app
COPY /app ./
RUN npm install 
COPY . .
RUN npm run build

FROM nginx:stable-alpine
WORKDIR /var/www/html
COPY /nginx/default.conf /etc/nginx/conf.d/default.conf

# app
COPY --from=build /app/dist/app /var/www/html

# maintenance
COPY --from=build /app/maintenance /var/www/html/maintenance
