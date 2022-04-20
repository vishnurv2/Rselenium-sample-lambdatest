library(RSelenium)

user <- Sys.getenv("LT_USERNAME")  
key <- Sys.getenv("LT_ACCESS_KEY")
port <- 80
server <- paste0(user, ':', key, "@hub.lambdatest.com")
browser <- "chrome"
version <- "90"
platform <- "Windows 10"
extraCapabilities <- list(
  build = "RSelenium-Sample",
  name = "RSelenium-Sample-LambdaTest",
  username = user,
  accessKey = key,
  geoLocation = 'US'
)

remDr <- remoteDriver$new(
  remoteServerAddr = server,
  port = port,
  browserName = browser,
  version = version,
  platform = platform,
  extraCapabilities = extraCapabilities
)

testScript <- function(remDr){

  remDr$open()
  
  #goto URL
  remDr$navigate("http://www.google.com/ncr")
  Sys.sleep(2)
  # highlight the query box
  remDr$findElement("name", "q")$highlightElement()
  Sys.sleep(2)
  # goto sample todo app
  remDr$navigate("https://lambdatest.github.io/sample-todo-app/")
  Sys.sleep(2)
  #click on first check box
  li1 <- remDr$findElements("name", "li1")
  lapply(li1, function(x){x$clickElement()})
  #click on second check box
  li2 <- remDr$findElements("name", "li2")
  lapply(li2, function(x){x$clickElement()})
  #click on third check box
  li3 <- remDr$findElements("name", "li3")
  lapply(li3, function(x){x$clickElement()})

  #send text to the text field
  text <- remDr$findElements("id", "sampletodotext")
  lapply(text, function(x){x$sendKeysToElement(list("LambdaTest !! "))})

  #click on add button
  Add <- remDr$findElements("id", "addbutton")
  lapply(Add, function(x){x$clickElement()})

  #closing the browser
  remDr$close()  
}

testScript(remDr)