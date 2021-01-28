
url2 <- "https://www.beppegrillo.it/category/archivio/2016/"
download.file(url2, destfile = "archivio16.html") 

page2 <- RCurl::getURL(url2, 
                      useragent = str_c(R.version$platform,
                                        R.version$version.string,
                                        sep = ", "),
                      httpheader = c(From = "tomas.ruzza.12@gmail.com"))

out<- read_html(here::here("archivio16.html")) %>% 
    html_nodes(".last+ a , .td_module_10 .td-module-title a") %>% 
    html_attr("href")
out[11]
link <- vector(mode = "character", length = 46)

for(i in 1:47){
link[i] <- str_c("https://www.beppegrillo.it/category/archivio/2016/page/",i,"/", sep ="")
}
link

sut <- rep(list(vector(mode = "list", length = 10)), 46)

for(i in 1:seq_along(link[i])){
sut[[i]] <- read_html(link[i]) %>% 
  html_nodes(".td_module_10 .td-module-title a") %>% 
  html_attr("href")
}







