% Generated by roxygen2 (4.1.0): do not edit by hand
% Please edit documentation in R/item_create.R
\name{item_create}
\alias{item_create}
\title{Create a new SB item}
\usage{
item_create(parent_id, title, session = current_session(), info)
}
\arguments{
\item{parent_id}{ID of the parent item}

\item{title}{The title of the new SB item}

\item{session}{Authenticated session object (from \link{authenticate_sb})}

\item{info}{(optional) list of metadata info for the new item}
}
\value{
SB ID for the newly created item

x
}
\description{
Create a new SB item
}

