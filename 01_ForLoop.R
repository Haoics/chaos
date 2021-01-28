page_link <- vector(mode = "character", length = 46)

for(i in 1:47){
page_link[i] <- str_c("https://www.beppegrillo.it/category/archivio/2016/page/",i,"/", sep ="")
}

page_link

page <- vector(mode ="list", length = 10)
sut <-  rep(list(vector(mode ="list", length = 10)), 47)

page
sut

for(x in 1:47){
page<- read_html(page_link[x]) %>% 
  html_nodes(".td_module_10 .td-module-title a") %>% 
  html_attr("href")
  sut[[x]][1:10]<- page
}

articles <-as_tibble(unlist(sut)) 
