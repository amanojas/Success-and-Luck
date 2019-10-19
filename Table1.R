library(knitr)
ques2 = matrix(data = c(150,130,280,250,470,720,400,600,1000) , nrow = 3, ncol = 3, byrow = TRUE,dimnames = list(c("Smoker","Non-smoker","Total"),c("Male","Female","Total")))
kable(ques2, caption = "")