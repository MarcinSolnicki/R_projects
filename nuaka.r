# Marcin Solnicki 122816
readMap<-function(path){
data <- read.delim(file = path,header = TRUE, sep = "\t", dec = ".")#it will be data.frame
return(data)
}
print(readMap("C:/Users/soma2003/Downloads/maze_0.map"))
findWay<-function(m){

}