% Generated by roxygen2 (4.1.0): do not edit by hand
% Please edit documentation in R/item_append_files.R
\name{item_append_files}
\alias{item_append_files}
\title{Upload File to Item}
\usage{
item_append_files(id, files, session = current_session())
}
\arguments{
\item{id}{A ScienceBase item ID to upload to.}

\item{files}{A file path to upload.}

\item{session}{A ScienceBase session object from authenticate_sb.}
}
\value{
ScienceBase Item.
}
\description{
Adds a file to an item
}
\examples{
\dontrun{
 session<-authenticate_sb(sbusername)
 item_append_files("54e265a4e4b08de9379b4dfb", '/foo/bar/baz.zip', session)
}
}

