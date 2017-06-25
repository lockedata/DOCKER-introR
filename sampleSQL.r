library(DBI)
library(odbc)
dbConn<-dbConnect(odbc(),
          driver="SQL Server",
          server="mhknbn2kdz.database.windows.net",
          database="AdventureWorks2012",
          uid="sqlfamily",
          pwd="sqlf@m1ly")
