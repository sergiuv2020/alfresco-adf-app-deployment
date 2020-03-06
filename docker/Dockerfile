FROM nginx:stable-alpine

ARG PROJECT_NAME

COPY nginx.conf /etc/nginx/nginx.conf
COPY docker-entrypoint.sh /

WORKDIR /usr/share/nginx/html
COPY dist/$PROJECT_NAME .

ENTRYPOINT [ "/docker-entrypoint.sh" ]
