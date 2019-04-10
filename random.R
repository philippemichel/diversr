#Randosation stratifiée par centre & par com/noso.
#
library(blockrand)
#
bbx <- c()
for (centre in 1:15){
  id <- paste0("centre",centre,"-cas")
  bb <- blockrand(20,2,block.prefix=c("Communautaire ","Nosocomial "),levels=c("Expérimental","Contrôle"),id.prefix = id)
 bbx <-  rbind(bbx,bb)
}
write.csv(bbx,"Randomisation2.csv")