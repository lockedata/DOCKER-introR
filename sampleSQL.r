library(DBI)
library(odbc)
dbConn<-dbConnect(odbc(),
        driver   = "ODBC Driver 17 for SQL Server"
        ,server = "lockedata.database.windows.net"
        ,database = "datasci"
        ,uid = "lockedata"
        ,pwd = "zll+.?=g8JA11111")
