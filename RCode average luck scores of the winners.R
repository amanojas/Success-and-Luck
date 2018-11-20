
#Data Entry 
#Weight entry
weight_matrix = matrix(c(0.01,0.02,0.05,0.1,0.2),5,1,byrow = T)
#Participants Entry
participants_matrix = matrix(c(100,1000,10000,100000),4,1,byrow = T)
m=1000

luck_matrix = matrix(0,5,4)
for (i in 1:length(weight_matrix))
{
  for (j in 1:length(participants_matrix))
  {
    luck_matrix[i,j] = luckscore(participants_matrix[j,1],m,weight_matrix[i,1]) 
    
  }
}
t(luck_matrix)