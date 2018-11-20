#Function for getting an average luck score of the winners
luckscore = function(n,m,p){
  j=matrix(0,m,1,byrow = T)
  for(i in 1:m){
    skill =matrix(runif(n, 0, 100)) 
    luck = matrix(runif(n,0,100))
    perfscore = (1-p)*skill + p*luck
    ps = cbind(perfscore,luck)
    j[i,1]=ps[which.max(ps[,1]),2]
    
  }
  ls = mean(j)
  ls
}




