link <- vector(mode = "character", length = 46)

for(i in 1:47){
link[i] <- str_c("https://www.beppegrillo.it/category/archivio/2016/page/",i,"/", sep ="")
}

link

page <- vector(mode ="list", length = 10)
sut <-  rep(list(vector(mode ="list", length = 10)), 47)

page
sut

for(x in 1:47){
page<- read_html(link[x]) %>% 
  html_nodes(".td_module_10 .td-module-title a") %>% 
  html_attr("href")
  sut[[x]][1:10]<- page
}




