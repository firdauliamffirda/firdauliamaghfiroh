library(rvest)
library(dplyr)
library(stringr)
library(mongolite)

message("Loading the URL(s)")
#url <- "https://www.amazon.com/b/?ie=UTF8&node=17938598011&ext=6886-37479&ref=pd_sl_7nnedyywlk_e&tag=googleglobalp-20&hvpos=&hvnetw=g&hvrand=11706673355504832262&hvpone=&hvptwo=&hvqmt=e&hvdev=c&hvdvcmdl=&hvlocint=&hvlocphy=9072592&hvtargid=kwd-10573980&tag=googleglobalp-20&ref=pd_sl_7nnedyywlk_e&adgrpid=82342659060&hvpone=&hvptwo=&hvadid=585475370855&hvpos=&hvnetw=g&hvrand=11706673355504832262&hvqmt=e&hvdev=c&hvdvcmdl=&hvlocint=&hvlocphy=9072592&hvtargid=kwd-10573980&hydadcr=2246_13468515"
url <- "https://www.cnnindonesia.com/"
html <- read_html(url)

a <- html %>% html_elements(".title") %>% html_text()

title1 <- html %>% html_element(".headline__box") %>% html_element(".title") %>% html_text2() # headline
kanal1 <- html %>% html_element(".headline__box") %>% html_element(".kanal") %>% html_text2() # kanal headline
desc <- html %>% html_element(".headline__box") %>% html_element(".desc") %>% html_text2()

title2 <- html %>% html_element(".headline__terpopuler-list") %>% html_elements(".title") %>% html_text2() # headline
kanal2 <- html %>% html_element(".headline__terpopuler-list") %>% html_elements(".kanal") %>% html_text2() # kanal headline

h <- html %>% html_element(".headline__terpopuler-list") %>% html_elements("a") %>% html_attrs() # headline
link <- c()
for (i in 1:length(h)){
  link <- append(link, h[[i]]["href"])
}

headline <- data.frame(judul = title1,
                       kanal = kanal1,
                       deskripsi = desc)

trending <- data.frame(judul = title2,
                      kanal = kanal2,
                      link = link)

store <- list(
  headline = headline,
  trending = trending
)

message("Connect to MongoDB Cloud")
atlas <- mongo (
  collection = Sys.getenv("ATLAS_COLLECTION"),
  db         = Sys.getenv("ATLAS_DB"),
  url        = Sys.getenv("ATLAS_URL")
)

atlas$insert(store)

message("Disconnect Database")
atlas$disconnect()
