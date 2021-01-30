library(tidyverse)
library(rvest)
library(stringr)
setwd("/Users/tomasruzza/Documents/Projects/R/Data Access/CE2_thomas_fedra_simo")

url <- "http://www.beppegrillo.it/un-mare-di-plastica-ci-sommergera/"
browseURL(url)

#robots.txt check
browseURL("http://www.beppegrillo.it/robots.txt")

#file downloading
page <- RCurl::getURL(url, 
                      useragent = str_c(R.version$platform,
                                        R.version$version.string,
                                        sep = ", "),
                      httpheader = c(From = "********@****.***")) #put your email in.

#Saving the page
download.file(url, destfile = "plastica.html")

#Get links
links <- as_tibble(XML::getHTMLLinks(here::here("plastica.html")))



