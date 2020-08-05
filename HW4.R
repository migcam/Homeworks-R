#Create a temp list of seven elements. Each element is a vector of 5 random real numbers (try to use the lapply function). Include the names of the days of the week in the temp list. For temp list:
  #generate a vector with minimum temperatures every day;
  #generate a vector with maximum temperatures every day;

t<-c(sample(1:10,35,rep=T))
mtx<-matrix(t,ncol = 7)
colnames(mtx)<-c("monday","thuesday","wednesday","thursday","friday","saturday","sunday")
df<-data.frame(mtx)

list<-lapply(df, function(x) x)
min <- apply(mtx, MARGIN=2, min)
max <- apply(mtx, MARGIN=2, max)


#In the game of craps, the player (the "shooter") throws two six-sided dice.
#If the total is 2, 3, or 12, then the shooter loses. If the total is 7 or 11, she wins. 
#If the total is any other score, then that score becomes the new target, known as the "point". 
#Write two functions, that generates a game status and point as in the table. 
#Watch out for values of watch out for the argument values of the function, the function.


f1<-function(){
  point<<-0
  game_status<<-NA
  
  for(i in c(sample(1:16,50, rep = T))){
    if(i==2 | i==3 | i==12){
      game_status<<-FALSE
      poin<<-NA
      cat("Score",i,",game_status",game_status,",point",point,"\n")
      break
    }
    else{
      if(i==7 | i==11 | i==point){
        game_status<<-TRUE
        poin<<-NA
        cat("Score",i,",game_status",game_status,",point",point,"\n")
        break
      }
      else{
        point<<-i
        cat("Score",i,",game_status",game_status,",point",point,"\n")
      }
    }
  }
}


f3<-function(i,point = 17){
  if(!(i==7 | i==11 | i==point | i==2 | i==3 | i==12)){
    point<<-i
    cat("Score",i,",game_status",game_status,",point",point,"\n")
  }
  else{
    if(i==7 | i==11 | i==point){
      game_status<<-TRUE
      poin<<-NA
      cat("Score",i,",game_status",game_status,",point",point,"\n")
    }
    else{
      game_status<<-FALSE
      poin<<-NA
      cat("Score",i,",game_status",game_status,",point",point,"\n")
    }
  }
}  
f2<-function(){
  x<-data.frame(sample(1:16,20, replace=TRUE))
  apply(x, MARGIN = 1 ,FUN = f3)
}


#This is the text for the famous "sea shells" tongue twister:

#Use the nchar and laaply functions to calculate the number of letters in each word and find data frame of the form

text<-"She sells seashells by the seashore. The shells she sells are surely seashells.
 So if she sells shells on the seashore, I'm sure she sells seashore shells."

list <- lapply(text, strsplit," ")
vec <-unlist(list)

#as matrix
MTR <- cbind(vec,nchar(vec))
colnames(MTR)<-c("word","number")
MTR

#as data frame
df<-data.frame(words = vec, number = nchar(words))
df




