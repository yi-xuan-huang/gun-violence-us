require(igraph)
require(network)
require(sna)
require(ndtv)

setwd(dir = "C:/Users/yh401/Dropbox/Fall 2016-Data Visualization/Graph Assignment 6")
node <- read.csv("node4.csv", header = TRUE)
link <- read.csv("link2.csv",header = TRUE)

net <- graph.data.frame(link, node, directed=T) 
net

E(net)$edge.width <- 4
layout.star(net)
plot(net, vertex.shape = "circle", edge.arrow.size = 1)

layout.random(net)
plot(net, vertex.shape = "circle", edge.arrow.size = 1, edge.arrow.width = 1,
     edge.width=5)

layout.bipartite(net)
plot(net, vertex.shape = "circle", edge.arrow.size = 0.5, edge.width=6)

layout.center(net)
plot(net, vertex.shape = "circle", edge.arrow.size = 0.5, edge.width=4)

layout.davidson.harel(net)
plot(net, vertex.shape = "circle", edge.arrow.size = 0.5, edge.width=2)

layout.davidson.harel(net)
plot(net, vertex.shape = "circle", edge.arrow.size = 0.5, edge.width=2)

layout.fruchterman.reingold(net)
plot(net, vertex.shape = "circle", edge.arrow.size = 0.5, edge.width=2)

layout.kamada.kawai(net)
plot(net, vertex.shape = "circle", edge.arrow.size = 0.5, edge.width=2)

layout.circle(net)
plot(net, vertex.shape = "circle", edge.arrow.size = 0.5, edge.width=2)
