# 1. What does it mean to "crawl"?

# 2. What is it a "web spider"?

# 3. How is this different from a scraper you have built at point 4?

# 4. Inspect the package documentation and sketch how you could build a
#    spider scraper: which function(s) should you use? with which arguments?

----------------------------------------------------------------------------
  
  #1. To "crawl" mean collecting links by traversing web pages starting from a given URL.
  
  #2. A web crawler, also called as a "spider", is a program that browse and download web pages
  #   by following hyperlinks in a methodical and automated manner.
  
  #3. The package RVest can only parse and extract contents from URLs, which the user
  #   must collect and provide manually. On the other hand, RCrawler can crawl and parse
  #   all URLs in a given domain, and extract the data that match the criteria specified
  #   in the functions.
  
#4. Rcrawler(Website = "https://www.beppegrillo.it/", no_cores = 4, no_conn = 4,
#            dataUrlfilter ="./category/archivio/2016/", crawlUrlfilter="./category/archivio/2016/",
#            ExtractCSSPat = c(".td_module_10 .td-module-title a",".td-excerpt"),
#            PatternsNames = c("Title","Content"))

#   dataUrlfilter , crawlUrlfilter <- are useful to filter URLs to be crawled and collected by Regex