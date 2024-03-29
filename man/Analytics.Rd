% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/class-analytics.R
\name{Analytics}
\alias{Analytics}
\title{Analytics}
\value{
An object of class \code{Analytics}.
}
\description{
Analytics

Analytics
}
\section{Super class}{
\code{\link[firebase:Firebase]{firebase::Firebase}} -> \code{Analytics}
}
\section{Methods}{
\subsection{Public methods}{
\itemize{
\item \href{#method-Analytics-new}{\code{Analytics$new()}}
\item \href{#method-Analytics-launch}{\code{Analytics$launch()}}
\item \href{#method-Analytics-enable}{\code{Analytics$enable()}}
\item \href{#method-Analytics-disable}{\code{Analytics$disable()}}
\item \href{#method-Analytics-log_event}{\code{Analytics$log_event()}}
\item \href{#method-Analytics-set_user_properties}{\code{Analytics$set_user_properties()}}
\item \href{#method-Analytics-clone}{\code{Analytics$clone()}}
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
\if{html}{\out{<a id="method-Analytics-new"></a>}}
\if{latex}{\out{\hypertarget{method-Analytics-new}{}}}
\subsection{Method \code{new()}}{
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{Analytics$new(enable = TRUE)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{enable}}{Whether to internally enable analytics
see \code{launch} method.}
}
\if{html}{\out{</div>}}
}
\subsection{Details}{
Initialise

Initialise an analytics object.
}

}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-Analytics-launch"></a>}}
\if{latex}{\out{\hypertarget{method-Analytics-launch}{}}}
\subsection{Method \code{launch()}}{
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{Analytics$launch()}\if{html}{\out{</div>}}
}

\subsection{Details}{
Launch

Launch the analytics tracking.
Note that analytics is not launched by the
constructor in order to be able to enable
or disable the tracking prior to the launch.
This is because once Google Analytics is
launched it cannot be disabled. If needed
ask the user before running this method.
The enabling and disabling of tracking provided
by the package is only internal, e.g.: disabling
tracking during a session will stop the \code{log_event}
method from registering event but default Google
Analytics will still be running.
}

}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-Analytics-enable"></a>}}
\if{latex}{\out{\hypertarget{method-Analytics-enable}{}}}
\subsection{Method \code{enable()}}{
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{Analytics$enable()}\if{html}{\out{</div>}}
}

\subsection{Details}{
Enable Tracking
Internally enables tracking.
}

}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-Analytics-disable"></a>}}
\if{latex}{\out{\hypertarget{method-Analytics-disable}{}}}
\subsection{Method \code{disable()}}{
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{Analytics$disable()}\if{html}{\out{</div>}}
}

\subsection{Details}{
Disable Tracking
Internally disables tracking: running methods
from this instance of the class will not actually
register with Google Analytics.
}

}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-Analytics-log_event"></a>}}
\if{latex}{\out{\hypertarget{method-Analytics-log_event}{}}}
\subsection{Method \code{log_event()}}{
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{Analytics$log_event(event, params = NULL)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{event}}{Event to log choose from
\href{https://firebase.google.com/docs/analytics/events?platform=web}{this list}
of supported events.}

\item{\code{params}}{Event parameters.}
}
\if{html}{\out{</div>}}
}
\subsection{Details}{
Log Event

Log an event.
}

}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-Analytics-set_user_properties"></a>}}
\if{latex}{\out{\hypertarget{method-Analytics-set_user_properties}{}}}
\subsection{Method \code{set_user_properties()}}{
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{Analytics$set_user_properties(...)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{...}}{Named arguments defining the properties of the user.}
}
\if{html}{\out{</div>}}
}
\subsection{Details}{
Set user properties
}

}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-Analytics-clone"></a>}}
\if{latex}{\out{\hypertarget{method-Analytics-clone}{}}}
\subsection{Method \code{clone()}}{
The objects of this class are cloneable with this method.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{Analytics$clone(deep = FALSE)}\if{html}{\out{</div>}}
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
