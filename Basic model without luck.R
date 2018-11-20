#The Case where luck doesn't play any part

# For m number of races
set.seed(154)
n=2 # Number of Participants
m = 3 # No. of times I am running the simulation
skillmax=matrix(0,m,2,byrow = T)
for(i in 1:m){
 b = runif(n, 0, 100)
 skillmax[i,1]=max(b)
 skillmax[i,2]=min(b)
 
}


mean(skillmax[,1])


