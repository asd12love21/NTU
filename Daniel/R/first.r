library(httr)
library(XML)
library(RCurl)
pathURL = "https://www.ptt.cc/bbs/movie/index.html"
tempDATA = getURL(pathURL)
xmldoc = htmlParse(tempDATA, encoding = "UTF-8")
title = xpathApply(xmldoc, "//div[@class=\"title\"]"
