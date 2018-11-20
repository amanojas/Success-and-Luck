luck_function = function(m,p){

participants_matrix = matrix(c(100,1000,10000,100000),4,1,byrow = T);
#m=1000;
#p=0.05;

luck_matrix_1 = matrix(0,1,4)

for (j in 1:length(participants_matrix))
{
  luck_matrix_1[1,j] = luckscore(participants_matrix[j,1],m,p) 
  
}


luck_matrix_1 = t(luck_matrix_1);
participants = c("100","1000","10000","100000")
part_matrix = matrix(participants,4,1)
luck_matrix_1 = round(luck_matrix_1,2)
required_matrix = cbind(part_matrix,luck_matrix_1)
colnames(required_matrix) =c("Number of Participants", "Average Luck Score");
req_mat = as.data.frame(required_matrix)
req_mat
# Graphing a Bar plot using ggplot
library(ggplot2)


h=ggplot(req_mat, aes(x= req_mat$`Number of Participants`,y= req_mat$`Average Luck Score`, fill = req_mat$`Number of Participants`)) + 
  geom_bar(position="dodge", stat="identity")+ xlab("Number of Participants")+ ylab("Average Luck Score")

h + scale_fill_discrete(name = "Number of Participants")}