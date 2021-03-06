% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/odbcGetQueryTimeout.R
\name{odbcGetQueryTimeout}
\alias{odbcGetQueryTimeout}
\title{Gets the current query timeout of a prepared query}
\usage{
odbcGetQueryTimeout(channel)
}
\arguments{
\item{channel}{an RODBC channel containing an open connection}
}
\value{
The current query timeout value in seconds. 0 means "no timeout"
}
\description{
A query has to be already prepared using SQLPrepare()

Throws an error if an error occured
}
\examples{
\dontrun{
  conn = odbcConnect('MyDataSource')
  
  sqlPrepare(conn, "SELECT * FROM myTable WHERE column = ?")
  odbcGetQueryTimeout(conn)   # shows the current query timeout of the prepared statement
  sqlExecute(conn, 'myValue')
  sqlFetchMore(conn)
}
}
\seealso{
\code{\link{odbcSetQueryTimeout}}, \code{\link{odbcConnect}},
  \code{\link{odbcDriverConnect}}
}
