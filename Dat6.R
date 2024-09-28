dat5 <- SCC[grepl("vehicle",SCC$SCC.Level.Two),] ##Searching for the keyword"vehicle" in that col
dat.5 <- unique(dat5$SCC) ##Only getting the Vehicle values from SCC col to later match with NEI
dat.5 <- NEI[NEI$SCC %in% dat.5,] ##subsetting the NEI with only SCC values that are present in dat.5
baltidata <- subset(NEI,fips=="24510",) ##Only getting the rows with baltimore fips
baltidata$city <- "Baltimore city" ##Adding the city name into a new col
LAdata <- subset(NEI,fips=="06037",) ##Only getting the rows with LA fips
LAdata$city <- "Los Angeles" ##Adding the city name into the new col

Data <- rbind(baltidata,LAdata) ##combining the two datasets
Data1 <- aggregate(Emissions~city+year,Data,sum) 
png("PlotR.6")
ggplot(Data1, aes(x=factor(year), y=Emissions)) +
  geom_bar(aes(fill=city),stat="identity") +
  facet_grid( .~city)
dev.off()
