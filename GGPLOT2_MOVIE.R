O<-ggplot(data=movies, aes(x=Budgetmillion))
h<-O+geom_histogram(binwidth=10, aes(fill=Genre), color="Black")

h+xlab("money axis")+
  ylab("number of movies")+
  ggtitle("movie budget")+
  theme(axis.title.x=element_text(color = "Darkgreen", size=30),
        axis.title.y=element_text(color = "Red", size=30), 
        axis.text.x = element_text(size=30),
        axis.text.y=element_text(size=30), 
        legend.title=element_text(size=30),
        legend.text=element_text(size=20),
        legend.position=c(1,1),
        legend.justification=c(1,1),
        plot.title= element_text(color = "DarkGreen", size=30, family="Courier"))