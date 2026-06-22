FROM nginx:1.30.3-alpine

COPY index.html /usr/share/nginx/html/index.html

COPY continuum.png /usr/share/nginx/html/continuum.png

EXPOSE 80