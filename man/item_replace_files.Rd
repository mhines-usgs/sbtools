% Generated by roxygen2 (4.1.0): do not edit by hand
% Please edit documentation in R/item_replace_files.R
\name{item_replace_files}
\alias{item_replace_files}
\title{Replace files associated with an item}
\usage{
item_replace_files(item_id, files, session = current_session())
}
\arguments{
\item{item_id}{a sciencebase item identifier}

\item{files}{a character vector of file paths}

\item{session}{Authenticated session object (from \link{authenticate_sb})}
}
\description{
replaces existing files associated with an item with a new one.
(Currently does not support multi-file uploads.)
This function will not append an existing collection of files. If that
is desired, use \code{\link{item_append_file}}
}

