#histogram ggplot2

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


#ggplot2 boxplot 

u<- ggplot(data=movies, aes(x=movies$Ratings, y=movies$AudienceRatings, col=Genre))
u+geom_point()+geom_smooth(fill=NA)

u <- ggplot(data=movies, aes(x=Genre, y= movies$AudienceRatings, colour=Genre))
u+ geom_boxplot(size=1.2)+geom_point()
u+ geom_boxplot(size=1.2)+geom_jitter()


#ggplot2 layers

v<- ggplot(data=movies, aes(x=movies$Budgetmillion))
v+geom_histogram(binwidth=10, aes(fill=Genre), color="Blue")
  
v+geom_histogram(binwidth=10, aes(fill=Genre), color="Blue") +facet_grid(Genre~., scales="free")

w<- ggplot(data=movies, aes(x=movies$Ratings, y=movies$AudienceRatings, col=Genre))
w+geom_point(size=3)+facet_grid(Genre~Year)+geom_smooth()

#ggplot2 coordination 

n<-ggplot(data=movies, aes(x=movies$Budgetmillion))
n+geom_histogram(binwidth = 10, aes(fill=Genre), col="Black")+ylim(0,50)
n+geom_histogram(binwidth = 10, aes(fill=Genre), col="Black")+coord_cartesian(ylim=c(0,50))

