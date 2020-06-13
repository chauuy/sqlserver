#!/bin/sh
export PATH=$PATH:/opt/mssql-tools/bin
sqlcmd -S localhost -U sa -P SQLserver2019 -i /tmp/queries.sql
