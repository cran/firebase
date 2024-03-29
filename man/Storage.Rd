% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/class-storage.R
\name{Storage}
\alias{Storage}
\title{Storage}
\value{
An object of class \code{Storage}.
}
\description{
Storage

Storage
}
\examples{

## ------------------------------------------------
## Method `Storage$upload_file`
## ------------------------------------------------

\dontrun{
s <- Storage$new()

# default response
s$
  ref("test.png")$
  upload_file("path/to/file.png")

observeEvent(s$get_response(), {
  # do something
})

# named response
s$
  ref("test.png")$
  upload_file("path/to/file.png", response = "fl")

observeEvent(s$get_response("fl"), {
  # do something
})
}

## ------------------------------------------------
## Method `Storage$download_file`
## ------------------------------------------------

\dontrun{
s <- Storage$new()

s$
  ref("test.png")$
  upload_file("path/to/file.png")$
  download_file("dl")

observeEvent(s$get_response("dl"), {
  # do something
})
}
}
\section{Super class}{
\code{\link[firebase:Firebase]{firebase::Firebase}} -> \code{Storage}
}
\section{Methods}{
\subsection{Public methods}{
\itemize{
\item \href{#method-Storage-new}{\code{Storage$new()}}
\item \href{#method-Storage-ref}{\code{Storage$ref()}}
\item \href{#method-Storage-upload_file}{\code{Storage$upload_file()}}
\item \href{#method-Storage-download_file}{\code{Storage$download_file()}}
\item \href{#method-Storage-delete_file}{\code{Storage$delete_file()}}
\item \href{#method-Storage-get_metadata}{\code{Storage$get_metadata()}}
\item \href{#method-Storage-list_files_all}{\code{Storage$list_files_all()}}
\item \href{#method-Storage-get_response}{\code{Storage$get_response()}}
\item \href{#method-Storage-clone}{\code{Storage$clone()}}
}
}
\if{html}{\out{
<details open><summary>Inherited methods</summary>
<ul>
<li><span class="pkg-link" data-pkg="firebase" data-topic="Firebase" data-id="expose_app"><a href='../../firebase/html/Firebase.html#method-Firebase-expose_app'><code>firebase::Firebase$expose_app()</code></a></span></li>
<li><span class="pkg-link" data-pkg="firebase" data-topic="Firebase" data-id="print"><a href='../../firebase/html/Firebase.html#method-Firebase-print'><code>firebase::Firebase$print()</code></a></span></li>
</ul>
</details>
}}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-Storage-new"></a>}}
\if{latex}{\out{\hypertarget{method-Storage-new}{}}}
\subsection{Method \code{new()}}{
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{Storage$new(
  config_path = "firebase.rds",
  session = shiny::getDefaultReactiveDomain()
)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{config_path}}{Path to the configuration file as created by \code{\link{firebase_config}}.}

\item{\code{session}}{A valid shiny session.}
}
\if{html}{\out{</div>}}
}
\subsection{Details}{
Initialiases Firebase Storage

Initialises the Firebase Storage application client-side.
}

}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-Storage-ref"></a>}}
\if{latex}{\out{\hypertarget{method-Storage-ref}{}}}
\subsection{Method \code{ref()}}{
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{Storage$ref(path = NULL)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{path}}{Path to the file, directory, bucket, or
full URL to file.
If \code{NULL} creates a path to the root.}
}
\if{html}{\out{</div>}}
}
\subsection{Details}{
Reference

Creates a reference to a file or directory you want to operate on.
Note that this reference persists, make sure you change it
between operations.
}

\subsection{Returns}{
Invisibly return the class instance.
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-Storage-upload_file"></a>}}
\if{latex}{\out{\hypertarget{method-Storage-upload_file}{}}}
\subsection{Method \code{upload_file()}}{
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{Storage$upload_file(file, response = TRUE)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{file}}{Path to the file to upload.}

\item{\code{response}}{A boolean or character string.
\code{TRUE} indicates that you want to capture the
results of the file upload (e.g.: success or failed)
with \code{get_response} method. \code{FALSE} indicates you do
not want those results back. A character string is
used as named of the response which then can be used
in the \code{get_response} method.}
}
\if{html}{\out{</div>}}
}
\subsection{Details}{
Upload a File

Upload a file to the store system or bucket.
Requires a valid authentication.
}

\subsection{Examples}{
\if{html}{\out{<div class="r example copy">}}
\preformatted{\dontrun{
s <- Storage$new()

# default response
s$
  ref("test.png")$
  upload_file("path/to/file.png")

observeEvent(s$get_response(), {
  # do something
})

# named response
s$
  ref("test.png")$
  upload_file("path/to/file.png", response = "fl")

observeEvent(s$get_response("fl"), {
  # do something
})
}
}
\if{html}{\out{</div>}}

}

}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-Storage-download_file"></a>}}
\if{latex}{\out{\hypertarget{method-Storage-download_file}{}}}
\subsection{Method \code{download_file()}}{
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{Storage$download_file(response = TRUE)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{response}}{A boolean or character string.
\code{TRUE} indicates that you want to capture the
results of the file upload (e.g.: success or failed)
with \code{get_response} method. \code{FALSE} indicates you do
not want those results back. A character string is
used as named of the response which then can be used
in the \code{get_response} method.}
}
\if{html}{\out{</div>}}
}
\subsection{Details}{
Download a File

Download a file from the store system or bucket.
Requires a valid authentication.
}

\subsection{Examples}{
\if{html}{\out{<div class="r example copy">}}
\preformatted{\dontrun{
s <- Storage$new()

s$
  ref("test.png")$
  upload_file("path/to/file.png")$
  download_file("dl")

observeEvent(s$get_response("dl"), {
  # do something
})
}
}
\if{html}{\out{</div>}}

}

}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-Storage-delete_file"></a>}}
\if{latex}{\out{\hypertarget{method-Storage-delete_file}{}}}
\subsection{Method \code{delete_file()}}{
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{Storage$delete_file(response = TRUE)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{response}}{A boolean or character string.
\code{TRUE} indicates that you want to capture the
results of the file upload (e.g.: success or failed)
with \code{get_response} method. \code{FALSE} indicates you do
not want those results back. A character string is
used as named of the response which then can be used
in the \code{get_response} method.}
}
\if{html}{\out{</div>}}
}
\subsection{Details}{
Delete a File

Delete a file from the store system or bucket.
Requires a valid authentication.
}

}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-Storage-get_metadata"></a>}}
\if{latex}{\out{\hypertarget{method-Storage-get_metadata}{}}}
\subsection{Method \code{get_metadata()}}{
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{Storage$get_metadata(response = TRUE)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{response}}{A boolean or character string.
\code{TRUE} indicates that you want to capture the
results of the file upload (e.g.: success or failed)
with \code{get_response} method. \code{FALSE} indicates you do
not want those results back. A character string is
used as named of the response which then can be used
in the \code{get_response} method.}
}
\if{html}{\out{</div>}}
}
\subsection{Details}{
File Metadata

Get the metadata of a file from the store system or bucket.
Requires a valid authentication.
}

}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-Storage-list_files_all"></a>}}
\if{latex}{\out{\hypertarget{method-Storage-list_files_all}{}}}
\subsection{Method \code{list_files_all()}}{
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{Storage$list_files_all(response = TRUE)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{response}}{A boolean or character string.
\code{TRUE} indicates that you want to capture the
results of the file upload (e.g.: success or failed)
with \code{get_response} method. A character string is
used as named of the response which then can be used
in the \code{get_response} method.}
}
\if{html}{\out{</div>}}
}
\subsection{Details}{
List All Files

List all files in the reference (\code{ref}).
Requires a valid authentication.
}

}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-Storage-get_response"></a>}}
\if{latex}{\out{\hypertarget{method-Storage-get_response}{}}}
\subsection{Method \code{get_response()}}{
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{Storage$get_response(response = NULL)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{response}}{Name of the response.}
}
\if{html}{\out{</div>}}
}
\subsection{Details}{
Capture response
}

}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-Storage-clone"></a>}}
\if{latex}{\out{\hypertarget{method-Storage-clone}{}}}
\subsection{Method \code{clone()}}{
The objects of this class are cloneable with this method.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{Storage$clone(deep = FALSE)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{deep}}{Whether to make a deep clone.}
}
\if{html}{\out{</div>}}
}
}
}
