FROM mcr.microsoft.com/mssql/server:2019-latest
ENV ACCEPT_EULA=Y
#PWD POLICY: 8 characters min of at least three of these four categories: uppercase letters, lowercase letters, numbers and non-alphanumeric symbols. 
ENV SA_PASSWORD=SQLserver2019
#SELECT SQL SERVER EDITION: Developer; Express; Standard; Enterprise; EnterpriseCore
ENV MSSQL_PID=Developer
#SQL SERVER NEED 2GB MIN
ENV MSSQL_MEMORY_LIMIT_MB=3072
ENV MSSQL_TCP_PORT=1433
ENV MSSQL_DUMP_DIR=/tmp

#CMD export PATH=$PATH:/opt/mssql/bin:/opt/mssql-tools/bin
COPY run.sh /tmp/run.sh
COPY queries.sql /tmp/queries.sql

EXPOSE 1433

#ENTRYPOINT ["/opt/mssql/bin/sqlservr"]
