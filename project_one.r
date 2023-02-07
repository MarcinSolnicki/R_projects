path<-"C:\\Users\\soma2003\\Pictures\\Saved Pictures"
a<-file.info(dir("../"))
#a<-file.size(dir("./"))
b<-file.info(dir(path),extra_cols=TRUE)
b
dir("./")
new_a <- subset(a, select = size)
new_a
file.mode(dir("./"))
file.access(dir("./"))
View(a)
file.path("../")
