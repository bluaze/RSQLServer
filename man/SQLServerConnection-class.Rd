% Generated by roxygen2 (4.1.1): do not edit by hand
% Please edit documentation in R/dbi-classes.R, R/dbi-methods.R
\docType{class}
\name{SQLServerConnection-class}
\alias{SQLServerConnection-class}
\alias{SQLServerConnection-method}
\alias{dbBegin,SQLServerConnection-method}
\alias{dbDataType,SQLServerConnection-method}
\alias{dbGetInfo,SQLServerConnection-method}
\alias{dbGetQuery,SQLServerConnection,ANY-method}
\alias{dbIsValid,SQLServerConnection-method}
\alias{dbSendQuery,}
\alias{dbSendQuery,SQLServerConnection,ANY-method}
\alias{dbSendUpdate,SQLServerConnection,ANY-method}
\alias{show,SQLServerConnection-method}
\title{An S4 class to represent a SQL Server connection}
\usage{
\S4method{dbGetInfo}{SQLServerConnection}(dbObj, ...)

\S4method{show}{SQLServerConnection}(object)

\S4method{dbIsValid}{SQLServerConnection}(dbObj, ...)

\S4method{dbSendQuery}{SQLServerConnection,ANY}(conn, statement, ...,
  list = NULL)

\S4method{dbGetQuery}{SQLServerConnection,ANY}(conn, statement, ...)

\S4method{dbBegin}{SQLServerConnection}(conn, ...)

\S4method{dbDataType}{SQLServerConnection}(dbObj, obj, ...)

\S4method{dbSendUpdate}{SQLServerConnection,ANY}(conn, statement, ...,
  list = NULL)
}
\arguments{
\item{dbObj}{a \code{\linkS4class{SQLServerConnection}}}

\item{...}{additional arguments to prepared statement substituted for "?"}

\item{object}{a \code{\linkS4class{SQLServerConnection}} object}

\item{conn}{a \code{\linkS4class{SQLServerConnection}}}

\item{statement}{SQL statement to execute}

\item{list}{undocumented}

\item{obj}{An R object whose SQL type we want to determine}
}
\value{
a \code{\linkS4class{SQLServerResult}} object
}
\description{
This class extends the \code{\link[RJDBC:JDBCConnection-class]{JDBCConnection}}
class to represent a SQL Server connection.

This is basically a copy of RJDBC's \code{\link[RJDBC:JDBCConnection-methods]{dbSendQuery}}
method for JDBCConnection, except that this returns a
\code{\linkS4class{SQLServerResult}} rather than a JDBCResult.
}
\section{Slots}{

\describe{
\item{\code{jc}}{Java object representing the connection.}

\item{\code{identifier.quote}}{quote character for a SQL Server identifier can be a
single quotation mark (\code{\'}), a left or right bracket (\code{[]}), or a
double quotation mark (\code{\"}). Usually inherited from
\code{\linkS4class{SQLServerDriver}}.}
}}

