% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/r.R
\name{relevelGroups}
\alias{relevelGroups}
\title{Relevel groups of grouping variable}
\usage{
relevelGroups(object, grouping, new_levels, ...)
}
\arguments{
\item{object}{An object of class \code{\link{SPATA2}} or, in case of S4 generics,
objects of classes for which a method has been defined.}

\item{grouping}{Character value. The grouping variable of interest. Use
\code{\link[=getGroupingOptions]{getGroupingOptions()}} to obtain all valid input options.}

\item{new_levels}{Character vector of group names in the order in which
the new ordering is supposed to be stored. Must contain all groups of the
grouping variable.}

\item{...}{Used to absorb deprecated arguments or functions.}
}
\value{
The updated input object, containing the added, removed or computed results.
}
\description{
Sets the ordering of the groups in a grouping variable. Affects the order
in which they appear in plots.
}
\examples{
library(SPATA2)
library(patchwork)

data("example_data")

object <- example_data$object_UKF269T_diet

p_before <- plotSurface(object, color_by = "bayes_space")

plot(p_before)

getGroupNames(object, grouping = "bayes_space")

object <- relevelGroups(object, grouping = "bayes_space", new_levels = c("1", "2", "3", "7", "6", "5", "4"))

getGroupNames(object, grouping = "bayes_space")

p_afterwards <- plotSurface(object, color_by = "bayes_space")

# different levels -> different order -> different color assignment
p_before + p_afterwards
}
