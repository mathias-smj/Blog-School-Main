FROM nginx:stable-alpine

ENV TZ=${TZ:-UTC}
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone


# Create the logs directory
RUN mkdir -p /var/www/docker/nginx/logs

# RUN apk add --update --no-cache tzdata
# RUN usermod -u 1000 nginx

COPY ./default.conf /etc/nginx/conf.d/default.conf
