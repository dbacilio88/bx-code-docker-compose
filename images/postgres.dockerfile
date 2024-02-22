#/app /urs /lib
######STAGE: DEV #######
FROM postgres:latest AS dev
USER postgres
LABEL autor="christian bacilio"
LABEL description="create image postgres version latest"
LABEL version="1.0.0"
ADD *.sql /docker-entrypoint-initdb.d/
ENTRYPOINT ["docker-entrypoint.sh"]
EXPOSE 5432
CMD ["postgres"]

######STAGE: UAT #######
FROM postgres:16.2 AS uat
LABEL autor="christian bacilio"
LABEL description="create image postgres version latest"
LABEL version="1.0.0"
COPY *.sql /docker-entrypoint-initdb.d/


######STAGE: PROD #######
FROM postgres:16.2 AS prod
LABEL autor="christian bacilio"
LABEL description="create image postgres version latest"
LABEL version="1.0.0"
COPY *.sql /docker-entrypoint-initdb.d/

