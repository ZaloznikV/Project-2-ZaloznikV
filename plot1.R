getwd()
setwd("C:/Users/zaloz/Desktop/exFMF/upd/project-2-databox-ZaloznikV")
getwd()
#signups_atributed = read.csv("signups/SignupsAttributes.csv")  # read csv file 

calc_created = read.csv("events/CalculationCreated.csv")
calc_created$Date <- as.Date(calc_created$Date)
p1 <- aggregate(calc_created["Event_count"], by=calc_created["Date"], sum)

m_added = read.csv("events/MetricAdded.csv")
m_added$Date <- as.Date(m_added$Date)

p2 <- aggregate(m_added["Event_count"], by=m_added["Date"], sum)

ds_added <- read.csv("events/NewDatasourcesAdded.csv")
ds_added$Date <- as.Date(ds_added$Date)
p3 <- aggregate(ds_added["Event_count"], by=ds_added["Date"], sum)  

query_created <- read.csv("events/QueryCreated.csv") 
query_created$Date <- as.Date(query_created$Date)
p4 <- aggregate(query_created["Event_count"], by=query_created["Date"], sum)

shared_urls <- read.csv("events/ShareUrl.csv")
shared_urls$Date <- as.Date(shared_urls$Date)
p5 <- aggregate(shared_urls["Event_count"], by=shared_urls["Date"], sum)

snapshot_shared <- read.csv("events/SnapshotShared.csv")
snapshot_shared$Date <- as.Date(snapshot_shared$Date)
p6 <- aggregate(snapshot_shared["Event_count"], by=snapshot_shared["Date"], sum)

users_added <- read.csv("events/UsersAdded.csv")
users_added$Date <- as.Date(users_added$Date)
p7 <- aggregate(users_added["Event_count"], by=users_added["Date"], sum)


p <- merge(p1, p2, by="Date")
p <- merge(p, p3, by="Date")
p <- merge(p, p4, by="Date")
p<- merge(p, p5, by="Date")
p <- merge(p,p6, by="Date")
p <- merge(p, p7, by="Date")


colnames(p) <- c("Date", "Calculations_created", "Metrics_added", "Data_sourses_added", "Query_created", "Shared_urls", "Shared_snapshots", "Users_added") 
library(reshape2)
p <- melt(p, id.vars='Date')

library(ggplot2)
#g1 <- ggplot(p1, aes(x=Date, y=Event_count)) + geom_point() +  geom_smooth(method="lm")
#plot(g1)

g <- ggplot(p, aes(x=Date, y=value, fill=variable, colour=variable)) + 
   geom_point() + 
   geom_smooth(method="loess",se=TRUE)  +
  labs(title="Change of events over time", y="Event count", x="Date")
dev.off()
plot(g)

ggsave(
  "events_over_time.png",
  plot = last_plot(),
  device = NULL,
  path = NULL,
  scale = 2,
  width = NA,
  height = NA,
  units = c("in", "cm", "mm", "px"),
  dpi = 300,
  limitsize = TRUE,
  bg = NULL
)
