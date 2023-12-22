#############################################
## The following loads the needed packages ##
#############################################

# load the required packages
packages <- c(
  # Project organization and file path handling
  "here",
  # Data manipulation and analysis
  "tidyverse", 
  # Plotting
  "ggplot2",    # Grammar of Graphics for static plots
  "gghighlight", # Adds highlighting capabilities to ggplot2
  "ggrepel",     # Enhances ggplot2 by avoiding label overlap
  "patchwork",   # Allows for the combination of multiple ggplot2 plots
  "plotly",      # Interactive and dynamic plots
  "scales",      # Tools for scaling visual elements in ggplot2
  # Mapping
  "maps",
  # Tabular data presentation
  "kableExtra", 
  # Reading Excel files into R
  "readxl", 
  # Dynamic report generation with R
  "knitr", 
  # Data manipulation verbs for data frames
  "dplyr", 
  # Modern version of data frames
  "tibble", 
  # Grammar of Tables for tabular data presentation
  "gt" ,
  "viridis",
  "stargazer",
  "corrplot",
  "RColorBrewer",
  "PerformanceAnalytics"
)

  

purrr::walk(packages, library, character.only = TRUE)

######################################################
## The following sets a few option for nice reports ##
######################################################

# general options
options(
  digits = 3,
  str = strOptions(strict.width = "cut"),
  width = 69,
  tibble.width = 69,
  cli.unicode = FALSE
)

# ggplot options
theme_set(theme_light())

# knitr options
knitr::opts_chunk$set(
  comment = "#>",
  collapse = TRUE,
  # cache = TRUE,
  fig.retina = 0.8, # figures are either vectors or 300 dpi diagrams
  dpi = 300,
  out.width = "70%",
  fig.align = "center",
  fig.width = 6,
  fig.asp = 0.618,
  fig.show = "hold",
  message = FALSE,
  echo = FALSE
)

