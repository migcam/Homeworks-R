#Groceries@itemInfo[["labels"]]
summary(Groceries)

rules<-apriori(data=Groceries, parameter=list(supp=0.001,conf = 0.08), 
                 appearance = list(rhs="other vegetables",default="lhs"))
rules<-sort(rules, decreasing=TRUE,by="confidence")

rules1<-apriori(data=Groceries, parameter=list(supp=0.001,conf = 0.08), 
               appearance = list(rhs="rolls/buns",default="lhs"))
rules1<-sort(rules1, decreasing=TRUE,by="confidence")

rules2<-apriori(data=Groceries, parameter=list(supp=0.001,conf = 0.08), 
                appearance = list(rhs="soda",default="lhs"))
rules2<-sort(rules2, decreasing=TRUE,by="confidence")

rules3<-apriori(data=Groceries, parameter=list(supp=0.001,conf = 0.08), 
                appearance = list(rhs="yogurt",default="lhs"))
rules3<-sort(rules3, decreasing=TRUE,by="confidence")

write(rules, file = "rules.csv", quote=TRUE, sep = ",", col.names = NA)
write(rules1, file = "rules1.csv", quote=TRUE, sep = ",", col.names = NA)
write(rules2, file = "rules2.csv", quote=TRUE, sep = ",", col.names = NA)
write(rules3, file = "rules3.csv", quote=TRUE, sep = ",", col.names = NA)
