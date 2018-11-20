#Function to get percentage of winnners who did not have highest skill scores
no_high_ability = function(n,m,p){
  winnermat = matrix(0,m,1,byrow = T)
  k=matrix(0,m,1,byrow = T)
  for(i in 1:m)
    {
  skill =matrix(runif(n, 0, 100)) 
  luck = matrix(runif(n,0,100))
  perfscore = (1-p)*skill + p*luck
  ps = cbind(perfscore,luck,skill)
  k[i,1]=ps[which.max(ps[,1]),3]
  
     if(k[i,1]==max(skill)){
  
  winnermat[i,1] = 1
}
else
{
  winnermat[i,1] = 0
}

}
  
  (length(which(winnermat==0)))*100/m

}