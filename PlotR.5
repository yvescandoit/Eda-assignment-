dat5 <- SCC[grepl("vehicle",SCC$SCC.Level.Two),] ##Searching for the keyword"vehicle" in that col
dat.5 <- unique(dat5$SCC) ##Only getting the Vehicle values from SCC col to later match with NEI
dat.5 <- NEI[NEI$SCC %in% dat.5,] ##subsetting the NEI with only SCC values that are present in dat.5
baltidata <- subset(NEI,fips=="24510",) ##Only getting the rows with baltimore fips
newdata <- aggregate(Emissions ~ year,baltidata,sum)

png("Plot5.R")
ggplot(newdata) + aes(factor(year),Emissions) + 
  geom_bar(stat="identity",fill="grey") +
  theme_bw() + xlab("Year") + ylab("Motor Vehicle emission in Baltimore")
dev.off()
