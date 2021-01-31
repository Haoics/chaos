#creation of a list of the links
link_to_pages <- str_c("https://www.beppegrillo.it/category/archivio/2016/page/", 1:47, "/")
link_to_pages
sut <-  rep(list(vector(mode ="list", length = 10)), 47)
sut

#download pages
for (i in seq_along(link_to_pages)) {
  download.file(url = link_to_pages[i], destfile = here::here("File download", str_c("art", i, ".html")))
  Sys.sleep(1)
}

#get links
for(x in 1:47){
  sut[[x]][1:10] <- read_html(here::here("File download", str_c("art", x, ".html"))) %>% 
  html_nodes(".td_module_10 .td-module-title a") %>% 
  html_attr("href")
}

#transformation the list into a vector
art <- unlist(sut)
art

#get text of the articles
out <- rep(list(vector(mode ="list", length = 10)), 47)

for(z in 1:470){
  out[[z]] <- read_html(art[z]) %>% 
    html_nodes(".rs_preserve+ div") %>% 
    html_text()
}

out


