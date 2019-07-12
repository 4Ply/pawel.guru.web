FROM jguyomard/hugo-builder as build

COPY . /src/

RUN hugo


FROM httpd:alpine

EXPOSE 80

COPY --from=build /src/public/ /usr/local/apache2/htdocs/
