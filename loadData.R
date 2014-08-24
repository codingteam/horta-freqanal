library(RH2)
con <- dbConnect(H2(), "jdbc:h2:T:/Temp/horta/hell")
count <- dbGetQuery(con, "select count(*) from log where room = 'codingteam@conference.jabber.ru'")[[1]]
data = c()
for (i in 0 : (count / 1000)) {
  query <- paste(
    "select * from log where room = ",
    "'codingteam@conference.jabber.ru'",
    "order by time limit",
    1000,
    "offset",
    i * 1000)
  newData <- dbGetQuery(con, query)
  data = rbind(data, newData)
  cat(nrow(data), "\n")
}