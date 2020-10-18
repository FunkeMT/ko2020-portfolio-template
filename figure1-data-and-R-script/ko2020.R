library("ggplot2")

####
# Data: placesDeveloping.csv
# 
# Rank and Score were taken from [Global Open Data Index 2016]
# see: http://2015.index.okfn.org/place/
#
# Country Status were taken from [International Statistical Institute 2020] and manually added to placesDeveloping.csv
# see: https://www.isi-web.org/index.php/capacity-building/developing-countries?Itemid=167
####

data <- read.csv("placesDeveloping.csv", header = TRUE)

plt <- ggplot(data, aes(x = rank, y = score, colour = developing)) +
  geom_point(alpha=0.7) +
  geom_label(
    label="Great Britain", 
    x=2,
    y=79,
    label.padding = unit(0.2, "lines"),
    label.size = 0.15,
    color = "black",
    hjust = -0.4,
    vjust = -0.6
  ) +
  geom_label(
    label="Indonesia", 
    x=61,
    y=25,
    label.padding = unit(0.2, "lines"),
    label.size = 0.15,
    color = "black",
    vjust = -0.6,
    hjust = -0.4
  )
plt
ggsave(file="figure1.svg", plot=plt, width=10, height=8)
